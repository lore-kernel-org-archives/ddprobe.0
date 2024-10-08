Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D57220A5FF
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728411954; cv=none; b=HpZI6jMKS3LrbumI16DaTGIYKWjHCXQmqONMOql2OxvUNVg0qgqJVgfs+spRU04ZKoqOva50uRp3lcUFDR2kIVqeluM/FaF7PXxdDOntjNrmHZK+LmvD95ajReUZof8Aj4FRRFPY9GeqFFON8hpf53ZiPOUcOkSbmVyII74LY5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728411954; c=relaxed/simple;
	bh=2xGJBRqLS1Gw+iMBsietyunSv/sT7pW3tXh1ITx9H3U=;
	h=To:Subject:From:Message-Id:Date; b=bBbHAWVRubeB2xSoyGZKxWYcdvH8V7Hl5p/LaWMV04W3ws3r5z6r+kvdiMZQsBM0hQGiuGHE2mzI6EZRSQb2DgMPinPR2ZuYt9q3AWsE6jsqLMFmUQucICCUxzgvDIB5tnfXxyCguxbaMSSNh9IPP+LfCVqZphViQpW0AjsL2A0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LnScd6j8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LnScd6j8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC82BC4CED0
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728411953;
	bh=2xGJBRqLS1Gw+iMBsietyunSv/sT7pW3tXh1ITx9H3U=;
	h=To:Subject:From:Date:From;
	b=LnScd6j86JsxQJT28D7BpbVCS0A1lgRKHsEAQSeaq9lr58V7kr5jsKDole5QM3VWe
	 AsLRNucXRklel80MDlX6SrnmYdXdZbmUSVHRq/OtfPb6t8TmU3ahEIt9rJ8bfvISK6
	 f0C3/LOnTmOlxVvSTY2kWB9wzFCLHLHC3D+w4iP8w3JzqxhBMFQdad7SOazKgOGOHL
	 CTkpwSijAPsTkAFo1ujXE9g81G5otg/qxVLVnVSduK4YpvZJ6NtnvjQCTviaAcFbrZ
	 c0q8UrV++n19RSNzoIcC/Ygu+Dm+EuZ0eN/KKcgcr4mvjVV28vaAwYJxuDO89kPDwi
	 j5Jl3BgxKRvmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998DECEFC38
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172841195359.12173.13095286393895269653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11823208b14c64e33f94980be105d57476e919708466b664ed1327a764ee233a
Date: Tue, 08 Oct 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728411953
