Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F1C3ACA4B
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769116434; cv=none; b=Lk/PmQaNIDQ44lbP6qXjqcz/JtlihKa5DEuyPeCB4uTY1Z9SVHIMfXxHECGHy6lrErIQMPZgtALVQDB2W368T/cjnjmlr+2pziBXRKbG+sXRkv69d6jVye8Fn6glO6iej+z/L+AW7SiOT1JoxDQVGakDqmnS21A0t3emGDYLxkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769116434; c=relaxed/simple;
	bh=f82Rxyw/jkFG6EzlCfTqCVO7UevTQK89Z12axh2Gfzs=;
	h=To:Subject:From:Message-Id:Date; b=nyNR1hiVGjJUkx/ZJ9mnAdJysbUXgh10pa3XjseXercPNBHj8yDRbeMmFCDSXbvNfunYg01NJA3KN3a+qs3F/VgKWxHTKg1FxHDfMIKQcJyhtmmTQUOSLvx+UkOCVkID7YqWPJsLHS8QwNCFwrzT419N6G5Zv//IIVROQlsYqn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tcSyS5so; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tcSyS5so"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A6CC2BC86
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769116433;
	bh=f82Rxyw/jkFG6EzlCfTqCVO7UevTQK89Z12axh2Gfzs=;
	h=To:Subject:From:Date:From;
	b=tcSyS5soG11Zq7ml3M00JoW8YQIeQCDN+TdhRR9kwkAPmzjquht2v82LLKrcXdbpm
	 duZriMz3/zBOKEmdxvybcmabPutsKOLmcKd84RJs9YXatqU43cctDPlTgaclVeVilv
	 LPAIL91JcNO7/vw0ofW8wWPcxSl80ZYLfLj/df5XUM9YZU1f8PqAxHbjGjXH1VMFF9
	 hFQF0l30TBpgJ+2In+/QFr3IrVhxHCPadYQv/6WmRHxC0nc7YHMQGZV4Jy8z+D5wWj
	 vHHkvnD1ZFerPrSuRei1u99gnNs/GdiOcQNhQ4uE8U4H/15HlA6ukVFnqCD27cl+9G
	 9SaLqz3xE580g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B98D6CFA2
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176911643358.15016.12407345176170602480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81277e766239bdebef12d46103f58444750715180195b666c85a94c3bc3430fb
Date: Thu, 22 Jan 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769116433
