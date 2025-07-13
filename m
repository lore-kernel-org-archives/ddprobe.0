Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C8520311
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752402594; cv=none; b=p336I+sx/ueByFAN42tTlwkNwLeHisNbSS54d4ENZePI5xF8NHBVCHdaD3OLBxAilFFkJ1OGfdvV/Qs9MYFTmdCAPAH2i6t/uiYwjZ83urml0+3GlIGBNcLibSSO1j0VjBUEdmMgD/X+a773przhZ3DoCH+PLxDXKzSUXxXb6nE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752402594; c=relaxed/simple;
	bh=ciaHyiuVeHIyiL9JlfHckpANVFiZSSFPHmezc3q44wM=;
	h=To:Subject:From:Message-Id:Date; b=u/phbFh/UUeatgIJD90Q8U21xxlj3OMT1UbknzyCKQKPJIr7LDTOJgTmd3i8XZUw2tCsEuyFynIiBxCLyA1wtaybqo+bl83Z2uNswFviZz34XOmhjFVORurJkl3PoqSwtZYeqgbg/aQWsSifOeCYti0vpA2oVVx12UYYZENcP2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bihu9mso; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bihu9mso"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E79C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752402593;
	bh=ciaHyiuVeHIyiL9JlfHckpANVFiZSSFPHmezc3q44wM=;
	h=To:Subject:From:Date:From;
	b=Bihu9msoD8Uih3dacaRo6gRWsNToqPQHFQu/Ak+T8yIUPU9dmE4nsQPmPeQZgSAA1
	 1/REu7fSQtFPVaQMHR1R9lavHnRpXCwdZhtwUQT43n0mHkBpBL/KgEH+xOfHm9yvDX
	 XtgwB6waEwOPkQkB2dEcl6saUxb/6et1kDUutyyssmWAriSr+ujleb98RtsHhlpkzT
	 0yL+mwoWIIOpak4ZVyUD/qVeHtOw8EpV4WiWW1m91WsZI+pV4mYgPTNq9t5uX/DGMf
	 pALT12jZL/LjkmWz8dQESfFLf7U5Xd4PBTAX43FgyUPOtbMvu273ZnNzSDDu+W057e
	 qLpt4kbMFWMtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FB3C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175240259357.20119.12401894958332492745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88a5123a1dfab490904fd0025c2cd32175a60798eeb8b48ea7e2e1b876a948ea
Date: Sun, 13 Jul 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752402593
