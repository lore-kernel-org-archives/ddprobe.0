Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2051E832A
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751637594; cv=none; b=vFK67/U9Ei9V6EGVOSYugyOXMSX05btH0F8WiV76gGEhQDKa5fv/ZAL3up+dC1Z8//1So0RelpTXbJ2WJbT3zDB5gpzWhrIS5qJ3uIVa7/WLqg5KaGYXhhYSo3FfLtV0HMolCO2Mn3azn+io/8FN7vVIYib9Bo6lOderZzElKHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751637594; c=relaxed/simple;
	bh=ZJuXV2I8mMPR2XDsvLtYi0WTD/RGPI2ODUjVGfFrnUA=;
	h=To:Subject:From:Message-Id:Date; b=KDw+q6PpJ0NXyAm6YFOUTF8kjWDq7n4jliJe5vQatN/K6MM8KVEtNcxfzwTz0brg1rsloncO4I81fq4EyoD2gsOFsuYw0eUV9hVbFq9supDSeMAlC8zMBQglQuu6q7M2ED3jjdE3L/4Mj2HuK7WLZTRM8RBhOMHXa/nc1S2WQC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uKUXyMM9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uKUXyMM9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D326C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751637593;
	bh=ZJuXV2I8mMPR2XDsvLtYi0WTD/RGPI2ODUjVGfFrnUA=;
	h=To:Subject:From:Date:From;
	b=uKUXyMM9uisxxWyhaY9+M/nW31SHFSYsGjAHUTwvZ1fQqSJ0BQwAKIrUjpoXYZW5t
	 I0AcIT0KQttsAjovXqYvpLzVjm/ku1jCdxcx+gE5l4QDUpCCpL8W4Q1t55Mylr3zDR
	 ZvWPHV9oV/cTqfNylWMJfz7vCk0rbBSwBpjnx7JpTEhjLOgNt7uaGDdab3+e6Xf5u1
	 1DVMRDlyTprikzxuHTKLX73nOSOktytdjrE3D5aLcdYQRf/N2ClzDeqIWPFryTwAAx
	 pa2Z+qJ9QMONYGl8F8X2bCNUulCbjaAzqkwADl0GKEE1Auo2ptQ3nz0DyVFhL7BhC1
	 Scqr3Ij2kcW+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA66C8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175163759357.11370.10520388513563907907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 988f2630936dd3d3ff8704bdec12b5749ca626188754152b9ee92997af7a2a5b
Date: Fri, 04 Jul 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751637593
