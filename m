Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26855EEB3
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 22:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767308034; cv=none; b=l2dAmddVOhwBDAUfDBbZtJnTgggXHouCsolaKS3Gj/Coc6DmtvfLBwf30oyNtY7/3VAV6DHIiDKW5k4wQiXu7v5JfKCTQXDfX2FS8ikfbS2cDsy9hg3lAREyQ4b86G+7/GmVw5gf5QrUGw6yKCz6F9VELnr1l/z9l1+phZeoxvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767308034; c=relaxed/simple;
	bh=VBQX7CDj81aJCx4/PCBdFcSLwlKPSVtqiCFvjv4SF4k=;
	h=To:Subject:From:Message-Id:Date; b=Bhfj53XHDvMtd7qJZPKSb/W1hKS/N4M0mQrsnwM/Xo2lPODMG/qrwlERLfrKL7NN5/qZZHCgdeK2lI665KHgB/R8pEsjrPCJig41+ofVRHgC5NLLzyWpED7qtP6qrZ7yUJjq+cSIENmzK3wk5PaCBpWfOgXABhkQ/2d7qJgIVRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BP88hg0M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BP88hg0M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5A5C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 22:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767308033;
	bh=VBQX7CDj81aJCx4/PCBdFcSLwlKPSVtqiCFvjv4SF4k=;
	h=To:Subject:From:Date:From;
	b=BP88hg0MgHsZPxPr7LxBmQzV1gH2ltsrotdLTfrN0Tegs3aeETFfxnidwfvZGzlZa
	 VyMA4YM67rpW+BDm/Z45gQ3k0+fGaHSeyJdeMy2OJz/4NdEV7rSWN5bmmevxfyFIeK
	 Wq/Jz2BF3GFnfH42xLrxjTugiHEJHbeGhrNtAr1VqFMJFXWalSzyQO0jYoAgKhwePo
	 VzIg0TFH4jfYdnRECpeHm0N/D0X0mAHtxFVbqpBZcd77eQOWHqCQqGYRhNzJA3v69p
	 BW/ZPafNisS2vme2XpTTWxsKhvOwW2dkx0goc9sUIDN5qu481EHl3m1B4X5XZpAhEq
	 mXWRZZgIsQXug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D86EEEC1C
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 22:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176730803358.23042.6785361073043394559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc1cdbb0f420e024074426e2540c9a928e02843df901048b3d320c4e6c9db3ac
Date: Thu, 01 Jan 2026 22:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767308033
