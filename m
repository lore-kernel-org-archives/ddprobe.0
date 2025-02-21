Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E87D045948
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 06:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740120534; cv=none; b=KlOodT2qH1JVxnp83T8Hv6gbJMIx8AHxNlNM41ja1XUs35/SK+iPHrwMHIjWA1drAhh3rWlQiEMNVT9QoViDRj72dRrQmCSw3b4AuC7ZvfBt+h+eZQG2/wjLbK0iShuKYXqDJ9UbNguWtcP0Lk2088Vc2JtibR5dNukhA7qI5lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740120534; c=relaxed/simple;
	bh=g67MWYKgCOTCNkGfIs4FcQ8F8wbclYYeGJlwaG+UjEc=;
	h=To:Subject:From:Message-Id:Date; b=jzVGMUewolV7e+8JA+Pk1ii32YlhxpTMerKaWV+EannVtu4Tt65a8XB3SQa1Gy4tGimnpNM/s+26dm8ZBQyIX7RTMmkPAWcviyyTYs3wDcBMxWmSVjMh88PWSbwLB57tv5ruoFb7hbfJNka7ax4m/w3hXri1ovIQxmKqnBuVjmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGS0XPd8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGS0XPd8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B603BC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 06:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740120533;
	bh=g67MWYKgCOTCNkGfIs4FcQ8F8wbclYYeGJlwaG+UjEc=;
	h=To:Subject:From:Date:From;
	b=mGS0XPd8v4Mq6JSU1J/mnpctrOetjyiVMl3PJJ8zQZ2A135yWhyv4Jg/PB8N+WKAx
	 rRTeGOTIaH7V4HvUPBe9cWFf4PhCp1gX3tnYT+8dge2bN7RZhR6X5Dm63EQuY8X0kI
	 t5W/jRSEi3u/iiXrRiGy6YiQ/cKvvxCrUytlkWLZ8uXiJy+nODUzQHZghJm/Af/2fi
	 gVR0V3sI/0LzuBysHCNs7lEDzrg7Y6tkONKbK4OasO8XWiuDtn6liYcq4grO5KysxQ
	 JCr4dT5WUsSI+gKq4YCti4ZbuuZdA0PkRxIpoGdXZgapiQeMRgGrrnSt5vKB2QDxlF
	 bOpXS4JgZAqRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C508C021AA
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 06:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174012053361.11483.11974863814053602048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 212fa617f5636db63910c2db8a9340cb46e9769a67477af6974f80e71eb209ab
Date: Fri, 21 Feb 2025 06:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740120533
