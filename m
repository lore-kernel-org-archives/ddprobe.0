Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2840C41754
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 02:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776133054; cv=none; b=h+2h66ES20SOPUJd7UySWLsX/B0KyafjR6nv1HSWRK31saSNbPJo/HJLI5l+8VOVZLlnkrqxkFWx2ckkBywhMd6w3uM2n7m5V8IAVROC8XOeSNpLdObY1PlMBeiMgcCmsyGVvNdIk7lRNSXV/2QUV/upb+Gu+nR3IZTjfWPycC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776133054; c=relaxed/simple;
	bh=pqlqjbrdo2aqxcyHiO8n+5NPZU5pmh7mPrDNqeAPU5I=;
	h=To:Subject:From:Message-Id:Date; b=a6CUSjvukALBx3yhWQYKFvzruJC1pmxWrQkyZpRVM4BpOtutYwnQbjhIysqqZC1hX/gr6WG346C+QFPhzQLHVhYv7J0OzTbF45H3UUgqAUcUZZpU0cPFFR1LTFrEwjC5A48kC7E0jvOeqqcyBLxI4pw6JrvfDjMXO3ejcFj27A8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ANKnj0Qz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ANKnj0Qz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC2F9C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 02:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776133053;
	bh=pqlqjbrdo2aqxcyHiO8n+5NPZU5pmh7mPrDNqeAPU5I=;
	h=To:Subject:From:Date:From;
	b=ANKnj0Qzop8smrCG6sBEsRHvYoauezpJyA2QhzVvykJSZb90FzH7czRxjhwj17pe8
	 Jp480OPJlU9XedAlmDOmN4NelKD+IYb/zVrrfq5BOMmeDnbfTVZPu4Bth4YIASOOW1
	 RrUIpGmgkw8hsMyiWiqp0m1AUqjFfCZkSf3nyLA85Zmv1vGN1g2OWiv/gtwCp6kzMT
	 3r0hKt9dahGy/r5JS9tks2eJo+4z39cUdMcl/p5BBcyM96nmm7thpIyASiC5B8aSff
	 f1LQpcObRUN7GP3XHRWX230xXZJl7IHJ/xTLlQxQ4K2/h4FRmJ8Aex8XdoTBECk4cr
	 b1aWo3/peMldg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C9AF531E6
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 02:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177613305368.12028.7564770900178062872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6324a8c70671560e798ff6315ff53beb1b6f58f54cec79f48f2f22e9ec05100
Date: Tue, 14 Apr 2026 02:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776133053
