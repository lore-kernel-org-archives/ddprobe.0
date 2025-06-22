Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0582260C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750568394; cv=none; b=mxNxv5hvxD0bmiMug2vUusWRzigBkCezlAPqPoSKKCm6pS4LiY1KsLWzIiiQDlqH+JjbN7pkXp1BbpjLu/FHEKjE9nSk1uRVSVLrHljYfOg2WU0lYHoXy3f97ucoq9WOpVR6uZkX1EOzjrKLxbsKxdg8i05kxVyD0qoGPaMmtR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750568394; c=relaxed/simple;
	bh=9x5YaqNiPK8GXjA88HfyuaAtnDOfHBrjp+Dg9vl82Qk=;
	h=To:Subject:From:Message-Id:Date; b=Ucsoi2mfPgV4zctPV3HG25xZ57vxdTlbyLJ+d8N7oPUcmDNaRZ1W6utZwI0T/2HprWE3TwWrDW61FvDbiu5PRstBPOBUsNvkEJ/h3Smb6lDEKleUpWhnVmI2ncFHSFszP3dvMMKJXyYvnpH2fAMctFSwkWFWbu+kwvnap37fYoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHQMBpPF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHQMBpPF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3063C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750568393;
	bh=9x5YaqNiPK8GXjA88HfyuaAtnDOfHBrjp+Dg9vl82Qk=;
	h=To:Subject:From:Date:From;
	b=LHQMBpPFIZaI9BVES/jpM19pq4VjamRcqgRO3IOjPg0vsc+tfyaSmCsh9qA7P+IUj
	 laNyv7ysxDGU0VhJmqArFT4lTxpUyxGfEUYKlE99VTotXHOJ6s2A89OgsDfhCXeYYd
	 w6n6Ml+0CXS14bV751yB1zU7pL9EbPegfaH/623lXWS2wum7GS2tk3iaueIrYhxYKJ
	 xv6taB9fjOFxwH0nbTDpBfJB1Cz12l731dgLZ3GUrdqnqShw1WX+Hcwa7vS0s/h0aG
	 1BYqiRnosiOUwta/Fxf3HsJq7HGWet07uShtznpp5+F+H6vrFDxQVxWWZZs0mdzDhL
	 R21o9u8E1nGfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AF0C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175056839357.27814.12075025233812324854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4956261d79138d4eea7c1b07917703e690b2c1eaa2a2b38b071c18e625405f81
Date: Sun, 22 Jun 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750568393
