Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4859742901E
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791118834; cv=none; b=farurQkuRNoe2vTd/CvCp6qTCu6S6+dSb4cuapZCyKhuxa6+LoSnchK5t17bHMAb7brPu2S0nWunn9r9YlgTJVBHRvbIIv1Z8U8l8h/GZv3Zm0UpNbxZkvnFEuYhGsCsBywUacqeUH1YtUsZ8+K8dztO0Wa8soHgPK7rur8FJ9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791118834; c=relaxed/simple;
	bh=FxBR2RYSM0nyiLCXELxHUKxy+6tDniFshL40wu1Qfzw=;
	h=To:Subject:From:Message-Id:Date; b=LR58w0E8Os/94W+iZNP3XYrpYsbxLCJXLdNxAtkd5eGhuRufIsq5Ox6lC+Kv0Jnz8C8mSshiIMSZL2xryIQAbRqaC4UpmMepLf8x0YKVX+cyZtcS9560dSTP9mRoiO7j//r8ODOsMNggTsNzybsKVAPJn3S1jO6LbUbiL9WxYhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jRhmTOBh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jRhmTOBh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE78BC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791118833;
	bh=FxBR2RYSM0nyiLCXELxHUKxy+6tDniFshL40wu1Qfzw=;
	h=To:Subject:From:Date:From;
	b=jRhmTOBh8yi8wVeFSpbs5+7ROnl+t0zmNQ5rE1HjCRG5YLopF8F11B4o6PiuCNCm6
	 6lI2uzZrnjh4nCgTlI8IcM4cIMlgzSAZUUEB9KBxdDFHOKb8r40pBYa3gQ66FFWIci
	 DIShX1A8+07Z0EqvV3igk9o8X6aaJrQ4DCXuLlvd8zApi7IoUlySdjkZezWtk6JMry
	 GPysbtCddovy0ox21FB5EbV0Llp/FVx/dlL8jLkSL+mbnJHblnFjqLmM5fk3ZZMXls
	 5ZMqIrH4pfmwmsMmA511eYlJslx5hfJM635rpJoXF/X70kAywsyvYnMqCH9QNI61I5
	 9tZ4innyHOnrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0C9CA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179111883368.6885.18146144816122966969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 318696f37d42e8b19d238ac74bbfcc6b74f7889e249237e9beb3cf7c104f47e3
Date: Sun, 04 Oct 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791118833
