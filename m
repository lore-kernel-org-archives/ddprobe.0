Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E29D28507B
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761636594; cv=none; b=XdEY2aIC6Endh9iwyTWVR09ln3nTHlgR7dXhid9aNsglCFbT44bvdI1HwLaI5GwzLnfj+PzrW0F+bjYnasa7sS9eeW+KR55hAkzLVAo6nFTG85t0lzBpQ5ZvVXQzdlM/xFPbl2zNZUxkmmVdX1yEJLxL4T7kIM60bF0hpiUWhWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761636594; c=relaxed/simple;
	bh=P/Q2KAUvLY8F6a7drCVQU54NhZTioLwZnQZH05OsUGc=;
	h=To:Subject:From:Message-Id:Date; b=CnoSzyMBnj6usm+2tQhJjzG768uS9MNWnjZlrQLTJRQF1NC1XGRm4N9LRN8+6uGd12c3cOUSmaIJiXJPG+huVMCTxf2fvACv2kLUOQiJbY9Vk3h70X2eSGOx1AgpMjJg5RvbhR5SsmJNmWsMIkHCVcBhaXmCSe9ZOe4iNag5ayA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mzj6CEMp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mzj6CEMp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F39C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761636593;
	bh=P/Q2KAUvLY8F6a7drCVQU54NhZTioLwZnQZH05OsUGc=;
	h=To:Subject:From:Date:From;
	b=Mzj6CEMpiRGCSBsqhJXgl/sSEY0AIr9bAtwTVh9frtEz1gEaEPAWX34ume6yS8xjg
	 puqHB64xpoDPxzZ7P7BkBKEHMaU/JRWohv2fFJ+E253lAbQN4tbVzWeRSwGc4Y2qEQ
	 W+bQMO2p9PQsJ+maDP8R1DPR9pg03LQeIUcWBMbj1Hv3DvQuaRgGaLUQgaELzG4MWE
	 I39ntAl5n2zHAaSYcN7cXnK5SCjm0iTw6GFXcf6qhyTF0CRp8FA7ryF8y6yACMJ71d
	 t1kzXmI0uyJ9ZT/c3bHz0x1W3/iMnsjRfcFIht+wNnlNKnYQ76yqlUQUsDxhp/A0Z9
	 P3y3u4meOg19A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCF0CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176163659358.8070.13790742110712948469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc66f9728040d0df06f7083861a6a3dc4281917f0fb1cf8f35bc091d5a2b2212
Date: Tue, 28 Oct 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761636593
