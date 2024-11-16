Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4513618660F
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731776754; cv=none; b=CK7ZnD/WTyElB1J9Wpvr/XIlO/jBGdU36gyaZeyhN+LO294AZEen6dVOzdhw7i8YAtPYqv7S2lOgOXr0uPwufon9JtcXU2MmD7wCy7dRDyQ2k2s29GxO5pLQZ2D0BPaMhvjqaQU0fM3Q9Ka8DAIDrzFnwy7sRpDv9CHrizIrRso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731776754; c=relaxed/simple;
	bh=29+O3pGBDlLa74v2w/fIG0XH4AOlsbtCNva28PO+600=;
	h=To:Subject:From:Message-Id:Date; b=oRPimFokC51j+P23G8Eu1ciRycJ5u2ARES57LZ8M8oFId+rfK6PQH0+AKPQ20TwrgUXicVWAPUPvkmHTQqqoZGrPvVm6Ta5JfURxuPblTBIvQ6dguwSNeiTpx5T8eDRBJnVxf2Bx4K7HtZZSM2s8wjF47U+/L5bR6IpKY0RCtjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hyo4gmDL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hyo4gmDL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B28C3C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731776753;
	bh=29+O3pGBDlLa74v2w/fIG0XH4AOlsbtCNva28PO+600=;
	h=To:Subject:From:Date:From;
	b=Hyo4gmDL0a64p4RIQmBP+FRb8+qeVIZmP1QCaB0LmBM2VY0sLbMH3tJG8+X1KLtg/
	 VVZEyBPst28IEYigMt1f01wMeQ3j0JXsDpCZ/wvQHUOxPXWsz6/yVLbLkvsynnG1PI
	 jr/9cV6/pZ2LL3XGhusr7DZU3gt1nuW4kyNYdIvu3SIfdKeREh3LdIRGvuGZWfxWoD
	 TZtQqyNK0QGog/myChC/JN7pWnJob27DxTc/LAv81h+QWV7QXGlNSRPmjZHFjDXWvX
	 WQsjBJgnafN8Y02trI1odXYPxTySmHQqcPyp3WGx2c1CeUaT7o9TsMA8ggOzBrLLL4
	 TS/orU7h6HyRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC63D68BE7
	for <ddprobe@lists.linux.dev>; Sat, 16 Nov 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173177675361.31388.1546863542762732004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24adb602c56959bc00f4cae6ea0eff8ef483e3d87fe7eef3e32fb96ee4fb0d76
Date: Sat, 16 Nov 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731776753
