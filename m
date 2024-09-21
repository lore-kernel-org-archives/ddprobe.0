Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F45A1BDDF
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726915554; cv=none; b=iiCQRdqUFXJRd4g//2nhHXgfvfwAoabkstW/eADRVds7rNBGCJuVpRwb6OGVn40bHwFP2i23ByRFmksRL0tIFFm7KpP6+WCIcEcrmXMvgIXunhpspEC5j+O6A7uOtgrxTdfDVRkCELTS27poVDZ/8FZEthaO4dyJ+fYTdnpjtYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726915554; c=relaxed/simple;
	bh=z+r38+roEypbVreXdzYRrUrwHlNEkbXk6cP0kqlbJso=;
	h=To:Subject:From:Message-Id:Date; b=YRpnAMhc1i49yuCoVsnSBZ0gfrWiN2K03xjouHIaQPdcwnJLKwKDr/DYwwS12NaqvuKdhjPJyrEKOSvPfwCm8rq5IsnhiBp+p83cCFImu4sADNDUuruuUX0sqpL16nJrhnnCfrQZOz39Q6agN0it3NNuYNAkbL7rXAZo88iDtoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TACcCPX2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TACcCPX2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A340FC4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726915553;
	bh=z+r38+roEypbVreXdzYRrUrwHlNEkbXk6cP0kqlbJso=;
	h=To:Subject:From:Date:From;
	b=TACcCPX2I2pmT0lqeuhkr1yPXFbguofck5jZhBnf1ODPFelSKvrzod5qM8BqoQAfC
	 Usp+ooLObP1cNWhb5+/TH2hMosxt58/64yc92nUpNvbFJksQXHVuRH5RUH98S79aqe
	 uYLdW/99m0q/ezG4vqb8ZS6BnsuFWy+v2h8bY+chtM1YyKm6OaChfbE83BhIRguFi2
	 vpHAq7hz6Y2y2Rewx/bZ6pBnprpw4VAIeMih00UnTj7whya0s6TfPIqg2esJ8YyXi6
	 OMJsmNmPbOurSc9moEkoDjoRH/YA6d1Modx9QETnlD9QSVN04ChKP7L2RWnvDLv4o4
	 XeGLcgFeJqsnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961E4CF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172691555358.8523.6103404200686815224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 622b2b699021813a5f3818e0a339032371782fcaf2b872e16866a66b01b9c03c
Date: Sat, 21 Sep 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726915553
