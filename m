Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6222949F8
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745863794; cv=none; b=B20lDhBhJoRo7qpBOoGLMJmKm9n2r+T5SL80rCidy1knYMI92+G6m4zo5KA6sRut1Skto3imjb5QTobKVYxsJakR3z4Ys9cVDDtXelwI1ps2pzZT4TE8JsgWrFfcnywBFm41wlgGKkx3N1elC0TXQUPf/RKJR5NB0IZyTpnr0a0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745863794; c=relaxed/simple;
	bh=2QtDxUDYmXNERI35/ef++E7VxERT474wlVRNfGD4KoI=;
	h=To:Subject:From:Message-Id:Date; b=bo18adMxbZj+pB3diGeTIjGnm3iNLkF3sGttCgQzdkbGvRz+1HsZNoxZ2wTP+os0N0mi39jZ6Wzy8LewAIpPo7rNs17KfY3g07dnYMrrZdyx8kvKUmrCvA4cXMn38QyKEtvikUONwURm+jbioaD3QyUEZgYqxs/SGKojP7TDG8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFPPOtTQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFPPOtTQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFA9C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745863793;
	bh=2QtDxUDYmXNERI35/ef++E7VxERT474wlVRNfGD4KoI=;
	h=To:Subject:From:Date:From;
	b=IFPPOtTQSQs3F3//kJO2pLzbGzgwbAyzahTbYqOguofrkQQ9QboLBlYYRt2Z20Vsi
	 NDDIvaLVL2+7cqE4eKNh0g8etwDaw0Yo6eQWq8p+myYXVCTp27Hzqf7j6EVIRvx6Yo
	 EEBLhbIPMuBy0fmxUrimKadP19dW6JtN+O9+gECj8BIVlTHJbTwIpj6mWOX/2xkGIL
	 iRbxbQRDuk5usmDE9FYzAc9SpwuYKCXmJ0UBWHrXYH4tC9mOKJcfLJvNnqy+A8HnU/
	 fPs/Hl/OCwRWb9HBuPs9hALKfToJTQ1zbBH5JaZk/K32gPsqI5JtNFzuOTK8HWtv52
	 jatrgpUnF2Ccg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCB4C369DC
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174586379358.20088.14166145186747996039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9216bb6c97846499e53807b12261cd90b1e00432e12e6f5606fc33d7fbd4967c
Date: Mon, 28 Apr 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745863793
