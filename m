Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323D1356772
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 02:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780366474; cv=none; b=Bmvdpu3ekpJAa/sxmBCBokXZhfUIclcM4xHXPndLHNFdrwTW5nn99ItY8ME7VSuM/K2rgSWtiAeOlbKJfFgyOenOmO+A/zuHsW3EloPIreZkhSADVAm9rt9d7EQtgg3cTsgGAS7lxxqyK53FRFvqHdO+Mr8xyI2jHq6BIgBjZkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780366474; c=relaxed/simple;
	bh=W0ewu/hNY+rnmoURZT4IMFNIvnrDLkFvdbe2d0BvkJA=;
	h=To:Subject:From:Message-Id:Date; b=gg6Y3yXbTDIcyJUyO5cLNIZOOcenZTRGfNhn5KFVIsEwpziPOeYK1MB+i7mzjlFGeoTT4s/rysKzsZw6NShLLBBNMbP/HmYj7mNcEwM+JJln7oXNGf1lSI1DrhpGE1/tlFZh19ZhB7lNhDqibTV49l+of1IZKdt6S3Z9umltlaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PE0aaTgE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PE0aaTgE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C384BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 02:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780366473;
	bh=W0ewu/hNY+rnmoURZT4IMFNIvnrDLkFvdbe2d0BvkJA=;
	h=To:Subject:From:Date:From;
	b=PE0aaTgEfP6w2SvxMBRNGy/9ECnb9xumxTmSMeo5YgnuJ50HXKTYoeEM3PJL2y1T0
	 a61pzy5NMK7pNKl8J/A8RKGT0Z7hKynvPSwetf5ipOoToKcvh5EylS7u+r9yP+tSgx
	 qlEf0BihMQDG16scFCzV8IhAFmfuz9cf7eGWTaFUbPrH4cMRynSiCT1mLQauTxrQPT
	 l72nlupZD2uPD8ch6xvAzN/EE9b5EMBeo/cvHyQjeMpeMQeVH+QQYq10HvZwso5VGa
	 +wTl4qGuB8wkuealHZ4tRyOvRKKCHMuZRLSHj0dw05pkKUtNnUS1bUNAErwe/g2q3R
	 UORXsxbGj0YEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD43BCD6E56
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 02:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178036647367.18670.13301218889975264844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 770407db27eac388b0d4cbd60f7119709445ece57045d670657e9dac30e9a154
Date: Tue, 02 Jun 2026 02:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780366473
