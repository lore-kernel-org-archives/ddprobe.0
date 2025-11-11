Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E002DD5F6
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762854594; cv=none; b=dcgYK4amgkf0AS9v2qZKV/0dHMjYH51Codt8My/qRf41kkURwJeo8l3mbCD//fE20IrKDyA66H+wBX/Bp8F/QV9iMRwyr983a9q6t01i8+FlA7y+StviUy035Utaeq4UGXzIoHeN34mPD4qAtggMHcK+tNM7/k0gylC2vvm6sno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762854594; c=relaxed/simple;
	bh=dB6uJrDtiMUEMWQno5Asb3KwEG6Ns+hyq1r38smMbVU=;
	h=To:Subject:From:Message-Id:Date; b=X8W32ggfoQ5ICBzfcoj9ZDbHqEduLhVaPvFZHLY9erA09shUgnVCmFsO/UxS5F+QTmMadJdJxDrI/0inWHBaYWKW02mao1SZvGTnq+CtIFrYFizoTLAV241kKqGt3dDOGL1aODgV6Ti4L2gvOMuinQoh4X6w9yvF2tvK3smjZ/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zm+P5z55; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zm+P5z55"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D815C19424
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762854593;
	bh=dB6uJrDtiMUEMWQno5Asb3KwEG6Ns+hyq1r38smMbVU=;
	h=To:Subject:From:Date:From;
	b=Zm+P5z55hihtwiyEPp7HkY1+A3Chz+4yCT/zg5EiiTh57i9eBLogsZ09Oh4g6/Ozs
	 RG1MGxYL8vhlsP8PPolyC27lAlRhcYG8GZ7hZLyLTn1eGKuiWbCupL19USwktTGDrx
	 RidkyaSi83CnRR8iqCmGFearTM6+QL4aJTT4Zwlwmd1QM55dAPVVVPlo0MBwgaofO0
	 1lPfOOeJlaxIwp4wI5M87VO3x1zym7HdQSk7/uGBU3GzUELpSVBf+rXhhI5rzutQ3V
	 JjZp3sraMpiCIwZF+mCiG7oAY8HbFvXy5PVEjWmZXzoaYc1F4F9ncH/laci2/R9Mik
	 V2C5AV/45olIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91047CCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176285459358.16684.4549778996310644306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f101b874302c8bddd6b8489803841522286d45a18de165321e560d0896992c5a
Date: Tue, 11 Nov 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762854593
