Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B49E804
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 01:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720747043; cv=none; b=SRZOgsF+yk7v9nrYZGmJ/hFifetXn56Fy273AA7GfCFIIpWLpwupx4PRU25l+06PENv7CAQDanQxe5tzvU44L5WcU5+AgOYXF5SArqsjug9kuq/CdJAEphdbPhxp8MAStwKI3u8mAjgJqAvEdDI7cPnQCLIruZqyXlMNdSB0Zqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720747043; c=relaxed/simple;
	bh=43yftVOeHPv9BxTiAK/KZAH203ILEDsv/QDIB45Q3jk=;
	h=To:Subject:From:Message-Id:Date; b=bKldjuUM0JOjUShAaEkqthfk/YL0GyN0HInZG++0cSIks2oCVGUMSrUW+4MrJzfpda3cBareEVD5k/07CUWPHy7nkkDEGuj0vMwKJQTXjkzsq1Fd6+uoDif8exeDS8cbA7wNqSqohuQdm7yVFacu4AhD+fPPqpGa79LTvg0TXGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XsAqYCPP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XsAqYCPP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEF43C116B1
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 01:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720747042;
	bh=43yftVOeHPv9BxTiAK/KZAH203ILEDsv/QDIB45Q3jk=;
	h=To:Subject:From:Date:From;
	b=XsAqYCPPqryFzPrl9MrWt1GwlJeDzUt0UqVt6oYJJ4IfOXDy43A1Z8CjDqlfTe9yi
	 pwudxDeo3MIXAGUn77n5gLoQj4kGjYVGxN1I5LsxctBfgOxa7zNiKmfx3b9rTW6XAc
	 wOfLczivbIrWT84+VIlwp1i3Zvf1HCIXt8JrLlsda2p52+IezOFX6MZrwQSKyilfCN
	 23YAWNHcNeYNh2sTZasrb/Ef1crDdRDmbf60q3GSmFbOw4aCoY82AlpLsWACi4/Sb1
	 EVlQp3NXDE+/KRtWCJuNXmkU/uOwoXYuK4ScBh3P2SpdfcT5gRHlSIvOJAH5P4mzTc
	 aDaP7MP9qjC4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7CF5C3DA45
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 01:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172074704278.12346.13070727333871698507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9fa8a28742cd18cb62556f631228ccaf60cead7e3c94d8c4872b69eae1f1b9d
Date: Fri, 12 Jul 2024 01:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720747042
