Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 032B52FB612
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762507794; cv=none; b=AAswU1XWkf451RVlBt/VHjupGt/x12ioQmMAY2iTQjuLLK+v0hLqN0M/pIooRd+p2mnV8+LTExN1lTt1bnEXt9GW/itQVc1cJhEm9SjWotRDT/0YqsoP9aJ+1Ivab3vZXxGyvRRMS7GArDZuA63xFGYqk+hfinxSuTHYCo1p0xM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762507794; c=relaxed/simple;
	bh=A7KoBpSNXH2iB65ShTNqAnyl2vH9JnY5CL3x6h/XqBc=;
	h=To:Subject:From:Message-Id:Date; b=Cvw0/otNasJjzKoyw1Fa5T9+YOln5hKs+ru4Gvlktej1fkB2jOtnHJU2+sAz+zCrIsbbUTVCCddTDNbaQb6kz84DgiT7+bHqBHK7GcYacoRL/FbOltplBqu/zJXD5rJPtbx2k7VZrWyTd+ZJhpL9WuqQAc4dlM4HRPsUKRU0At4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pehS5AUO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pehS5AUO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFE1C19421
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762507793;
	bh=A7KoBpSNXH2iB65ShTNqAnyl2vH9JnY5CL3x6h/XqBc=;
	h=To:Subject:From:Date:From;
	b=pehS5AUOIX8updgTmcXVEcF9YiRKaFvowWsrpbnWspB4KdirM+dNeHklImZ3nS7hP
	 zXJ4WUHFFNPlSeRIK6L2EvxNjc9xAWyKC7CsYnSWZ2PiDwtPUV2Fvad7KVOUeL121s
	 9VVM9oto3DIc68yQTWNnF1+KjrrMUtQDKIB9BZRfJHoJR6kfrOybk0rEAe5neKxTnN
	 P82dKd/5KnWTHmGMRqmLZiXR/vzYu3rfS8TAOBpUAejp2bSfAYv+P+qx9we54c/zW1
	 s0wXqTREhOxUMX0ZNxG9veH4UXz7DW7liJFoFqAf1h2ytM0dBdMp/OixS+p/wQsJk/
	 fQTFcqZQwviZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9208ECCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176250779358.5914.5443464431222897895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afd24439f97470216f5d076bfac929b50a5e3d1b80058f5114e3fd75a27eb6a2
Date: Fri, 07 Nov 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762507793
