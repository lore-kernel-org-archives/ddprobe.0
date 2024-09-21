Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4880D2032A
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726920954; cv=none; b=k1jSVdq/Q65yExxxPMLgQGO/kg4yMLQU/dJdLwnDwPLsvV3EJbir727SPannm91TrpAk0yUqaqtxRAQqtz569Fa262pbz/yVeNACqRGUjXTrDv0nv829QtNvdUbbAqCGC+POedfemUt8Uy2KFWUxayLADF2VmmA3H/tPOQTpiwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726920954; c=relaxed/simple;
	bh=V2hUYyVgy2gtteMnCRJ/J79ycW4KgIf7FDiAUC61cGg=;
	h=To:Subject:From:Message-Id:Date; b=hY7hW5k8Ab4tpoT8Ct+nZ/BGGX0rJsVdmgL7j9xQpZOikAuCedgVUzsFYD21k7Se6NzYEDR4RpBNacw6KVEDflr/vzk6CYa35ummC1ukvqzTYOB6ELGkd1y5aHRUhTJ4aRshqQGY4wouU9r2Brn07YNsHzXeGAEsclhbbHdTSYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mOfqvr+1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mOfqvr+1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1AC0C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726920953;
	bh=V2hUYyVgy2gtteMnCRJ/J79ycW4KgIf7FDiAUC61cGg=;
	h=To:Subject:From:Date:From;
	b=mOfqvr+1u9XjGUUy03/9EsfucQaH03g6C/379G4b1jApqbtyBhPq84Aqatc63bkjx
	 a4vizxbULgt13eH5RiyQv4GdFWW7NHGol8KZBsWIobmvVRCJYt/03YssZpXCGYUcN5
	 XQfvky4xU4IdKXPokUiCUHoy9pmN/2MVN5zFoaLtcQD/opJhXbR5fzsDvQf4cZvyVV
	 UjG2rpIpvYlTS/bSrAXn4u4LerddkXKPUTGMvTRXKU5ff4IRLRqIINQ5j7QU2j8/wP
	 GhABiltRMv58WShRGxBqRx+UivVKvad691O6l4eLetq48muDiYVDOLMGGawjhtV1Lu
	 l0FXPOkkML90w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EBB5CF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172692095359.13746.15318714687765731954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0056530f05cc019ba22968f9bed454b67d05a85eaa123cd9e7e13526e9e319a3
Date: Sat, 21 Sep 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726920953
