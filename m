Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF6C6FB8
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 05:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706420897; cv=none; b=WB8Lgub3f1wmyQ0SkXU9yeXBe3a5x+Hf07cF/00ckx45P6i1ScKYdpbd8Mmyy8PwOvxPwXo0NN4TiBZNcs7mwYmXfpwjHUxKC7ffBnqAVLRsU+K4InuCiGpb27QvYf0BVs31wL2NFNhfbz+bVKVF3EURjudfHNcHHEBgrOro6LQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706420897; c=relaxed/simple;
	bh=kLCdx4m5V2S7417R7fogypBDqhf2Z1RvGGNy4aIzMww=;
	h=To:Subject:From:Message-Id:Date; b=OLBYHIPzksZ0o+5ttW5yIBFdyytIa0ke1Ygg1AxnjokjlAtmpFLZ9Cdz8ImGP8S7vNywTThqkDoyOhIxnTLZUktPCnLDeGRocqArZTGO0IJ9hYzg30a0ufP/Jq1sMhMlUnJZQpDFMDTiaQg9FJgXL/5GLZBJzrnVvL80lW1WfI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O/KD577r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O/KD577r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77F31C433F1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 05:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706420896;
	bh=kLCdx4m5V2S7417R7fogypBDqhf2Z1RvGGNy4aIzMww=;
	h=To:Subject:From:Date:From;
	b=O/KD577rpJOKz2YRSdIExiQz1WDenzSMXGyDLPl3dB9oOltEWXPuNMLJjr69LI86b
	 WZp29bHpyevraOkbe5WrEhnHRfknSFzXLsmyMYFRKPc6HEhvF6pkwxWyd1I2Ty/vXv
	 n6hUoqWpPdtCr6KoCy0e8XFkOTBteeiMuiGYsCGTjZR6+GLzohYBTjlRtaN5WPeBVC
	 hC1NmGFQzpoFmNeuALBiJFeRZTmrE5juwLuh1Jg3rKV0GMVRKdnPbSX3vMsVwOHWTb
	 NMTZSoeb35Vp5M4+YK++i8wophlewjy3+ZzmqjyjmwBs6bWm6JZ2R4giIdKWtTR2Fe
	 T0ASbouos0YTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E468C47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 05:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170642089636.18253.14823265957603889052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52d73011bc0f696241f2ab6b9156494662e0525165b70228b623d7c1c53c57e8
Date: Sun, 28 Jan 2024 05:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706420896
