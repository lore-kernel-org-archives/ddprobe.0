Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A933B8D6A
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 22:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765752174; cv=none; b=ro2jFL0WEriVopd0G8ZAcAiaUd6C1Vc52YOBye0yNWgXV3Pqw3utYmKnWeDhsexoGq9yPjZDWnjXLCVniaquC5dStMjpyIdprN/XsLaWH2AG3H2uv+pEyIw22z7f8G6gBU/Ber/IEjuIa9es/jVZt8wos+jB0/Jcs8kavsPu97Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765752174; c=relaxed/simple;
	bh=xWvnAdFbmPa1adjHJB1aSEC/ptMDFpu4qABCXsBNf6Y=;
	h=To:Subject:From:Message-Id:Date; b=Q1CyaAvb7un/uzmmlyn9JhhZ/5OF4v5wPZZhiVs1mjVdwvwlv6WGd6OeMLXm9mO1jO9hveEK1QIOpx3LmJw0tXrar5dM8LO//ydRcu0+e4kJ9R1f1Rurv0xJgCkcokwMipOycQ4LGrMyvs8MXQYwrX3oOUKApA9hAWQBUT/I2B8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gzoJS0nk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gzoJS0nk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B0BC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 22:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765752173;
	bh=xWvnAdFbmPa1adjHJB1aSEC/ptMDFpu4qABCXsBNf6Y=;
	h=To:Subject:From:Date:From;
	b=gzoJS0nkL2rSF6SAHPpc3OHRvLiuZFBlIBl+UJuovNtC92WUF4hOthGvSnhtTnqa2
	 ai1yG0Rvt6qpeYTwrfiQ22A1sxu7+dLXmSMl+M6fN60D84kHzFHxyb8AECbv0rEDJ0
	 vnpZHfX/e2gJV/lQByXEoUraopsKG8h4OvTr9HLIi2sZz6fvm8WM4lgmBgJLG4TZSN
	 MelLbpjSncmC92O3y5jio+Pt/Ung1EWs86JHZKCQ7kdaTnbmR1fQ3BtTcmtzJWxqz3
	 HLz4Zh5AkgHdXIH+CAQkPi1LLp9iYVTjGIfPqngP3H9JB51N9fRe6WNbccuoWWZkAO
	 i8yuRUi33/Jwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1B3D59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 22:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176575217359.26162.10320341390760339214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 187787a02182c29eaaac94ab49ea968635f5ac7fbeee0e42d039a19bb33acd0e
Date: Sun, 14 Dec 2025 22:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765752173
