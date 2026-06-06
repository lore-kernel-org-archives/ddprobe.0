Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5D01AF4E9
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 02:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780712074; cv=none; b=Ih7+qmbEKxhRaFIjiq07FT8R05n0D4RFkG1HrBaDAxIRmAxAGHFNEvpcxBHovJDEfA+/uFHX0rKHZdQzcrNHUTFgY7tCTodCRz0DvaRPCuz5R+tIArHNvHPPfsGsRxHuV6+NfJOdKNAcajUQUhiVrgVq82yj79zooRMyngrmgks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780712074; c=relaxed/simple;
	bh=YWn+qMnq1faoI8+MStaRZlGJ28XyB8qv50IA4Kl80Ko=;
	h=To:Subject:From:Message-Id:Date; b=ijE82jdCa0imqOzdGMxjcxoiM2O1cIctWapyKRW8IBkwVvXsIRLzhbXXveY9k3ijL5Oxp7aC2XpObGYFO28IJFGFTttYwNaOYhvNgwrAfb8qyjKS3NhMH8shZYNaWbodOl5Ii+lNEn6MCizuH2TQIbD7lvHYRvniB2jddnwgMeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oCDXKv/p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oCDXKv/p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E9DC2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 02:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780712073;
	bh=YWn+qMnq1faoI8+MStaRZlGJ28XyB8qv50IA4Kl80Ko=;
	h=To:Subject:From:Date:From;
	b=oCDXKv/pP+fDOhEs++5nLZRKjTj9zjZ92bi/DLIMGYokj67Qlic5FlR4DUkhN06IR
	 qmGTW93zlj0btF5k8FPzPhewptVIUtuIPSjBDZgoRUh0q456lyFNOXk7wA7WQXEcCL
	 T4JtEN/dbL4pdie5pFgm3UvG4w05rHGrsL3kfudJAmnf+Gw8A3K9ZuELHB6zkBze1O
	 ybJDpgNy9xQGip68IxF2iJYA1hJqEvpYSKYFLF7JWY0mRIqoZM9kEbxePx+nSa4zcy
	 BZieY9qUvGYNZoNF8HR2C/2KdCcgTuUfsaAVv5ZGUnnFqZQ7G0cIVuF/6giA1Hc3EQ
	 KlS8iwNc7AI8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B70FCCD8C88
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 02:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178071207372.7451.3173752869951082615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c16e444dee68859c8b5aed96ffa90b1fe2218cc1af854b80876c2d2e3a29db52
Date: Sat, 06 Jun 2026 02:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780712073
