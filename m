Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3910C2FC87F
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759395594; cv=none; b=lveFCdBwxHIeYAG8wXRX8NXDFNSMMKCMVxWcjuxy0YOkLPQ8SH86XH7p9/m0Q46F1H2zyLXx+bOSoVToLIGpgSM5wIF+XmWaMhTSRHZReNXeBdxhU+VlvsdqmEKQsFOtPGol2m5Hz09rLHElGwDs5V/4t9VqR/x7sCjNc6cWEjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759395594; c=relaxed/simple;
	bh=Ue5xz3Ktgj2DKCnGtJqB2pKdL7EWFDGh2cKhByFPrFA=;
	h=To:Subject:From:Message-Id:Date; b=ifzVzk5vALVmAfzFefrl7LwmPIunGdmZeBcikS37chZHtjpP8VBVmeudSMp7eY/KLbP0A3XtxmJ/6VM9jvTxKJzFdHfcEQ1JLP5sJUvEu7X42CUYfgpSIRSGj0trVwVUbEgRSsMG5iTu/NG7kBFR8MWitf6vKUyrDuJKnIq7wok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4do26JI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4do26JI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACCA4C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759395593;
	bh=Ue5xz3Ktgj2DKCnGtJqB2pKdL7EWFDGh2cKhByFPrFA=;
	h=To:Subject:From:Date:From;
	b=b4do26JIZw9w4aaF6rotfG6MOBrHH1R3pGXNtwC5rH8p1rCg+KVi7dC9ojPdL6Tqb
	 xeHUsLO7rxjDdKpHNQ0gpM9+Np4NOU7YQZyfpzT0yHz3ZJQeLoHyNfNCAx2Zbzphti
	 jcfgdkHBIVDuOBgMZS5cqRMj6RYN0o4UV7mXBatzBFbQZ6kG+/D5YW+jl88ij6wzgX
	 g5rxLzuwuU62CeKfyKQcaPL/GTk8lUJxogUxKyHyv2N2N1Hb4DXaoeNvII3059vDrp
	 9PBIdAPNAaiCvRjXFmHX45/XChk8/EEybSbozWIaNezjx3NjlS8UvgAC4SpJIaVX69
	 Xjbbd8HvcF0hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9052BCAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175939559358.6859.14170805854894848012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8f669bdc3d04617c4f13a64e9199a9127e5fa701c0770437f41009ed8b8657b
Date: Thu, 02 Oct 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759395593
