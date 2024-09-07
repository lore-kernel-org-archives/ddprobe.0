Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A20E134BD
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725698155; cv=none; b=qPVy3JOCHeRfyTvKQjV+2b0gmWsMbWRaCSuu1QeePcnensd1ik8MmGqCZIifcLSvuRT5z0VH3+xhOspXvfhoFBofbl278586VeK7ZHLdpGInKBKDu40a3xTkjSs7Y5AcXOku5Lbd0zRVLiHijRkrY1QslpZti2IoiowW05Ft6CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725698155; c=relaxed/simple;
	bh=zCR0l4SjqIUW57AMdhd6SzdDu1890/S9O3ussDn0V54=;
	h=To:Subject:From:Message-Id:Date; b=ZrUbwGzNWQP1YICNL/XTE757hNhIO9g7IYHIHpGHXvCcy1dyjEf34nwIClAAA5fievlTEjmvPhH+GAWPiiMdEg9+4crL7e3a6rgWvh2f1pMsd3jXA1VxZ/NgFSlOiFQMRwanZ3VNxMvyFqw978h3OIX/5/hriKzQt51dYbek/pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ig2pPLDj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ig2pPLDj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A68C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725698153;
	bh=zCR0l4SjqIUW57AMdhd6SzdDu1890/S9O3ussDn0V54=;
	h=To:Subject:From:Date:From;
	b=Ig2pPLDjzkjBDWl8fMusBun6ZWjADCnxUDEyXrUJs1u8jonBXkK4yyEABuwE+VXZX
	 4NJZn8O/7KTLLirevV8UZvjSP/NwGOwPS2bIiJb+M2USFMl+CGM8RPHKRyf2NOWNsZ
	 t74OHlRwMW2ARkJCtyBZe7DqS2fiJ010U+rLae78JjsVtJXckNTbvC3OENevEu+avX
	 bOSBRjjv3UQ53fleomUu89K+91boLIKdrvIsTAMfw+nElUSKa7VkcIu9LIcJelSHTp
	 GkOJLq4sa07BNHKs6eRouSc2ZuXy1alsW02WT+AUic3PmIZmb59esMXxR/C5lm3/pK
	 zrlHqsfPCLvlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93683E6FE4B
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172569815359.9809.15270248145140416983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bee34c34375ec1bfe48a6f52a7cbb20d01ecd918fb3f4999ebd497c4f384d86
Date: Sat, 07 Sep 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725698153
