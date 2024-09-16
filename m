Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C363E47B
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726497954; cv=none; b=WbiTlRd/GvYUMuTCRtMMCRHiNOPBylN1Ew2WCSfbisakWx851bNfDrot0hAe6wSAtK5wPkGfAoaFEg6XhAZmoHOqc68u22mCOalEqYn8ec5pxzJ6tcS5pMPZSNJSAWh0croWSRR+NRb46cxgwqhI1v/zmnlDs4rfMMZEocFs+U4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726497954; c=relaxed/simple;
	bh=bf9mQcnSmQ9WaLOnWzAIffr5n1tcjwh257ZJyDcOtlQ=;
	h=To:Subject:From:Message-Id:Date; b=scesd23GFlJp4TTVrYswrqIIgEVJFytiyr92HXxZ5mgom5yfaNs7CYbfYBRy+8vqCxQpU8BQCqDw7Squ+88Sv8sBFLhAUBjbmfiFfIzLoE1zNDe/GEk4TeBSol5TTfxRhTU7wlyvg6Khylhhcp6OKXVNJ4dVfYds4xBi927iB/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9e1gr+P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9e1gr+P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD4A6C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726497953;
	bh=bf9mQcnSmQ9WaLOnWzAIffr5n1tcjwh257ZJyDcOtlQ=;
	h=To:Subject:From:Date:From;
	b=e9e1gr+PC4GJ/J6AtxzEvmzPu5VeuJXw17PRKSlIeSOp+8Fw+emZzE3naQ801WN7o
	 qfnctEkP43mp9sM/ziUcecLEAmEdmv9o/VIXBA+M4xxz66KWsRyRav8E2FWYAKVIoe
	 lJ59Stl12E6d67yd7KXrKq9Om5DfB/lECDFvshASkvf0TxC+AJK/1gdCbDrg/R4++t
	 5tw+1kcv/D2qbCecGyWp3+KSBHVKbgyUC1Cd5iyTfnikePpklc2FhwemXzI/qOyl0S
	 5pt7hgcfAkR0Jvh0VoEkdma7NqWUi5floDhIsVmgCGZnR1ESv+3a5wvvWj140EKPMu
	 g+KBKMT/Rn6sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4F4C3ABB2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172649795369.14190.14147089721029001536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeb3bb6e17d9662b63c1b1c232885972035cc2741359d5e2522d4c6969e087fb
Date: Mon, 16 Sep 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726497953
