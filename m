Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206B314A09C
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759902594; cv=none; b=Mo8VxasnvTlAa2wR/J6/Wh2IkIRkOLjU59jjYBC5DtFMOw9DcQJ1pmoaq3qNDaGoOfAmj6d2Ue1DiMGA8DemjmjF5zoiwWdOqe+Q8/SrtdFxw535souWl+XQGURdKQcaGfhcOCCNjcEKMZkuSIhjxmZuQfQy5aAACkxlurMaTBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759902594; c=relaxed/simple;
	bh=HWIGUsHpr4cVhn6RT7UtgmY4V6i2P9k+iSYFyvQ5z+M=;
	h=To:Subject:From:Message-Id:Date; b=sUlgtgNezZrdHTsO4fHxL3tQkykiEY7rstlUoMTTT71gfqi/iGxkQq2OxEFBuj+uhQ9Y+UfYfLpy8lMtzdXpf9hkp0D/6ZFSYYasMfKIjgEAJIIDV6JFVI5mBpPRxjruSTNLPELo08XGtU9eCASU5Ex9Xa8s6WuWS30RfCvZMqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SDtDJpjo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SDtDJpjo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A492EC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759902593;
	bh=HWIGUsHpr4cVhn6RT7UtgmY4V6i2P9k+iSYFyvQ5z+M=;
	h=To:Subject:From:Date:From;
	b=SDtDJpjoqncbXTpLUQyG+/3L5pd5dPqcUmRk2Ipk/m/IfqIbICnHHlS/DDmmlme5U
	 +dM5NZYJPXPd96+7GSBkn+Oehmibl2wE4y2amG0A0TqDu0Fz4iQ6LcCFs7TAgahMjQ
	 rvW6Jq3kD46PKjEBfYwmhza8tPIcUT8GpF7Mp/6pw9pnLQjVH32Cjeclrk1Pn8o0MO
	 gY+3R8bkCqqUeY4z1Ex37PF/C7KX4Ydf71TTNwLv/rL9iJUHzE9Q/FCvoYJfHAJ18E
	 lLUvoMTxMiVpZY4XI1DlapHwoa+WxCMWPcLh4ZdtmKYBebx1/kmiMfgbZtxIlGHcd6
	 m9ommcmi3a4fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D8DCAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175990259358.21842.2592411983343833549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6efa01c3ef3c149966582591fe5fab7f40635a9439f2095135c20b7c4be9e723
Date: Wed, 08 Oct 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759902593
