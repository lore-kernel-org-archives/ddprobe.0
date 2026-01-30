Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A502E6CD3
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769783634; cv=none; b=Pc3dBISGUhaETdpNxiPgRt3MD+X2mFWrn053ai0L1jdAMXcL4nBCFCgrnlW1uW8ih/m9yVoMZ6xUYFMwysaZxISA6wGrbh1coqTdgBYotiPBWfn0gFXntRNP33tw08F9PHgmwm3+RbcpYz2bHdqXJ4hIv76xw/b+76gCDg56ThQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769783634; c=relaxed/simple;
	bh=kjXWqre6ccOZBsFpjP3kaKeMH7LSvFVtQhKTLX9vXSk=;
	h=To:Subject:From:Message-Id:Date; b=XG9dIMIUyUI10hCSidDfNmMUWksIWfACWPtGomfD4aZ1R4MrcUpdAyF7Ud+7sbeDfvOrmoSFFtORGLCF8J8bdKvIcGFMNEVf4ig0c9SQOBeP+MIplBibVA0r9m9aSdzWe4MfZNytqx9TPUIFX01D9Lpb4/FEVySqH9KxQZdFI5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJxJkwOv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJxJkwOv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50B6C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769783633;
	bh=kjXWqre6ccOZBsFpjP3kaKeMH7LSvFVtQhKTLX9vXSk=;
	h=To:Subject:From:Date:From;
	b=mJxJkwOvgHijl0BT16AIo1yh+7MH3WiuV8fYzAinoRmAqnxCV/8+/dKOYCZ6aX0GY
	 Vl1w1GpAOkvhMByFk7EB993WlF0qlRiktOmrQp+KcMsCRaYJ3oo7uuvcSsxeq8H8aj
	 vbDtoLNYcFOy9tUD9bVccsKkP5sBflEr6yp2hSENjvVBj3/pR8KMiSucnqdy+fxJ9U
	 FcFn92cga5CpG/0k+ztE3+H9vas2d7M1QrCODzfPQax4ox7kYJMrmszwv1fgLli5r4
	 1Ooe50j5clXwQ27C9xFEko4ScEQ85w+a7xVHOAdHXICZB45EQBv+tHEQiAKD6NyC1O
	 mI2C5Etn+qQZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93043E6BF11
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176978363359.16840.8892502297787213533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2639688c4300fe4dcb10e048cda109d1f0a883b40b034ca71712788f74e49ddd
Date: Fri, 30 Jan 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769783633
