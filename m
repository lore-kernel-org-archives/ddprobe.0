Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231F5EEBB
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760792994; cv=none; b=DJnwSTALTjXW2zwmjwe22gOqLEGT7y23olh1DqyJQn6ftr6d2aPUBQ6BKSJO4aIghCFsWIDgaFeA6/76YLVdGhi2BaoI3GphnsQ8w1ma+TtMMfGARO1SV+Jz/XRwuq3vgNJYw3Xd6MJ4flOGcgx2JT/grZlf3Fg58O2YRhxL3io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760792994; c=relaxed/simple;
	bh=2UVgKJ2JTncNwnvQaCTtFA+59J5p7zWotZGPF9m0Ezc=;
	h=To:Subject:From:Message-Id:Date; b=tJcOlM9kZOSLZOpcDRPe20ugww2pUEDSsTqxpkOmRAFX9NkXEMelYfdYpm2zqVRisLzqtzzFGesFVLCms+wQulaDryhKlDyU/9XNYnxqcztTC8ISUpcZE8a/LFiqmftv9LOhsvdsoKXJXhK64EyrVshbG+Fq2uPFCvJcwfQshMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tg9N2UjX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tg9N2UjX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CB1C4CEFE
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760792993;
	bh=2UVgKJ2JTncNwnvQaCTtFA+59J5p7zWotZGPF9m0Ezc=;
	h=To:Subject:From:Date:From;
	b=Tg9N2UjXW5mRdPWFl2+mrzjuFkLbTIBWJmLQeqLgHg37AyKOVxLkAibu7tW5EHa0U
	 akn69ImSro0TnfPX3pafbtAOn8hBUOv1pU8uHFvTTpEKLGKKw2Nd/EY8jKGk7GJJd0
	 UO04sBN6o9WcK9g7KZMHxodQbWg9YvYGwQr4WI06FbaNHyVSLPc2Qr75vqf0D/1h2w
	 AHfF9iqilDnlc72YWt5gRRiPukmIpLTSMniH9pH7hyivvuDAoJ5uTtwF3VM6fyTEJm
	 NkUNH+ApfB8E3QVwYA3TRMGkPYtEpdh+ta4/5sMd8B9ck2qdGeiA2s6t6Uq8U3dnOq
	 yYwHMa1+vxCvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A0BCCD195
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176079299357.10865.5126283045798329255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 369e88e30433f0290ce86b5e63272d025001962c42d9c51b9b225595bff042a0
Date: Sat, 18 Oct 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760792993
