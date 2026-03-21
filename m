Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF0B2DD60E
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774116294; cv=none; b=l8p8PSN9iFekGFTkM82vC+WMJxr2rKQKClsKocCnKCvuTfZb6RO7nMG8mMA6nEQF+6nLnNp6gcpWrK4RquTBvl7p7HX8poijm6cpd5iQUk0gI1qLMUXGef5SbHIpCR/Cwk7GVeZBv6wUE0amDQktgrl2qMAHdm4UFVT0lr9w820=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774116294; c=relaxed/simple;
	bh=sbx01ZJBh5ny8TaZ7JY/LBr/OKJfbomZ7TAfEtyqCjw=;
	h=To:Subject:From:Message-Id:Date; b=BwrdX3soQ/kXBsoYZi1cIH6bgKXo4+Xfm7PyUGhry17P7wgst6m3bUAY1JkaBmomVNmbRSq/O1QciJlSodtREJ13v2xSC1bozBJHh+FXt8vV7GeenurocAbc/D8yu7PqmsbUSnz35NqQQqCldK/MFmQrYXivgilNx2t/Uu8G31s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LYXUXwHp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LYXUXwHp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15F9C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774116293;
	bh=sbx01ZJBh5ny8TaZ7JY/LBr/OKJfbomZ7TAfEtyqCjw=;
	h=To:Subject:From:Date:From;
	b=LYXUXwHpme1MXOFEmnjBKfiuzSiwrnDA3+WzUm29aSDps4DxNMoa2DzkpfOwHQ7/G
	 u8rEl4h6RloSDjxvmVDuicyEn+ninY6nr/UI5YxrYRhYF8i2M4X9lVr4RQVBv8Khpo
	 Tc3xLVS4ZcdVW2EpveanRpeBUMXyp2aLMitlVNMvMBQZmZISPx5yUQwN4HxF7CyROk
	 gc7x78OvdKrdvaUVLSxhD35Vxk9fQK74EIxApl6TmAvyW6Jl55tAHI65E+varLa7o/
	 6xTAfCHXRIR5GnVRxIavJq0YsogLqA5+kPOTdVQQ/NzRZYqFeql4d3XQ5FSh4X98DW
	 /+X8ttpNUwX5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A46109446F
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177411629358.24214.6682787217384065681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 797ed506dc92d4d9dcfabb23617a63bd62ce17aaa497fb2b938bf2c2b6700b43
Date: Sat, 21 Mar 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774116293
