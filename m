Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A4F17591
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732586754; cv=none; b=q35wqRRvjS5lZ3AaB+4tAEBpKCn6ydHORXcROrkkuVUTqM1Audmbs6O64eliLUkUoTleWLGfU4vRy3tFDXrCjlHq1Oie83rpFKKKGeeK1FP2irRKmdVoajLg+Dl+GxufE9rzFLTMkr3a6sgH3hVZccCy2xdWsAe+mjeMUwa8Onw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732586754; c=relaxed/simple;
	bh=YwxOsPdLKXwn9rMsCwQwCq3nZa4QZ5fbZuTLmQTdiSY=;
	h=To:Subject:From:Message-Id:Date; b=Kmk7WM9tfsPMXPE7QVmSZUftgfWpDFAKRfxatFlgOMhLqnSnaJ6bpO+xPp2TJHuoiZx602/i8+Y4V1nf65uxGfuqbqj5qc9higAgcHn387WJkRp0lhLW7act2reKZnDvgAoknGZlIvcI8Zb1bsThke1dLSJayQ97WdXF7o/GyZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ghupua9j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ghupua9j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6704C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732586753;
	bh=YwxOsPdLKXwn9rMsCwQwCq3nZa4QZ5fbZuTLmQTdiSY=;
	h=To:Subject:From:Date:From;
	b=Ghupua9jBRpS32vjc8+LZexxmy7RtT+CNKPK+rzmVXS1a+utngVBCxHwB77uEwEA1
	 dAHhRGi6iZjj8rqrM1Gy9m+R8iC3nq2CJzCK6MyG3hAxOVuEFOrtLNkTpGw39XyH5r
	 /lBGzI0fmoDbstzzCvW/scvJfRvZDfIfr20P1riIoGKU153ZpcRkjNUoPPfaZEQF+v
	 g/Vij8rCc3YtMdxu4ijsB89Glp5nPADBHwnG52jNu2tNoDdU+Dg/cngqcm3G2tmgkl
	 mDIbQwAM1qEkPM7Qh6bhkDS2nOqmoE/bTj4ldcAzEt3dMcaPPZ/JDiGWKbi/zTWK8c
	 8xVK66HW8G6RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95997D5A6C5
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173258675360.1524.10453627194301417315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bacc857aed3d33fadaccb743d9db204e6e86c1c441c9106ac162b8e1c9e613c8
Date: Tue, 26 Nov 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732586753
