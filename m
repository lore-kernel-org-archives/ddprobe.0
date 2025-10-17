Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8A22330B1C
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760716193; cv=none; b=Uf63JYrppDRfWckq7g/idthilabMn2zz2zdJATVY2bToWZB9S4EtorslcgXUzAFEe47seYkq2fWI2QZWsFrN3H9EgYc68x4STE3htOhkqtZ4QgoCarNX+2vhCpWVzegngi4xTsaJ5GIpvkiQm2EpOGBIY2XIOezYgbmLKgPmfNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760716193; c=relaxed/simple;
	bh=pdlG/RXaHnxddiIKgrZuvKODNhZeo79a5F7NDBcv1Gg=;
	h=To:Subject:From:Message-Id:Date; b=PD00ktqSREHw075I6+yuD9y8CDs/jnbF/PddrJ18WE/7ve9RwJFVvOIT30RgDpAccXcRe1krI8TVzgrw1vWPmOdHi7p7fC4kgkycbzV7AwGYvyH/Gr1mnvEk0I8NkeCpIgcJzEUO2osVwkc2ZGA9c13P2jWUOyOJ/PzBZcPpIU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZQ0+CCQw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZQ0+CCQw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22AEC113D0
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760716193;
	bh=pdlG/RXaHnxddiIKgrZuvKODNhZeo79a5F7NDBcv1Gg=;
	h=To:Subject:From:Date:From;
	b=ZQ0+CCQwiRjx3xr5Q3lmttwuDumHEkJNGXI52AlcupBW389yz3lBWjbUDXTzqJehG
	 zqVsORKdB0R4yogxgxVQkXLMCLnjbcS5H/mqK1fJr5oijmdDb8fHh3hAVKL8gXVlWs
	 x1mzt7i4Piwvu3kChXgbA/sfZNeGYdpXzcWr/+1hfmFggLjEFjIPWmbUB85/xRFWiV
	 o9bhh+2sjVvZt/4/IFSSxkXuKu8w38vzAeFs0Qgw1rjkOj+piP1HGSNDHlxo5TSUdp
	 D8CbcTVNIlqt6sjzhhoXbT2vSNZZqaqNHRDy3SKyMcqUWyMSMX2GxCHjHCp4u6b3z3
	 vz1mtA2RsJIpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912DCCCD199
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176071619358.30202.18227807173983331284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abd16f6ec627addd6c0ce6a94843e86dbe613df553dbaf091b95d3d04b0160d2
Date: Fri, 17 Oct 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760716193
