Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51FBA19E97B
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787615434; cv=none; b=a56lU/dOtNLM3OAudTkCZwJtZ8a1cMOD7KrtROOLw3kgrRHZoVD/yx+/+pen0oqHDwW/1Ir6r9aMf9fu/isyT4j1x1iuXW3+buGj8j2W615EnuwmYSc7wb4s3LyOYTYJ+ESFqPMlLeTnQCeiRY00mVMMzOiZgiTgp8ARYYskmng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787615434; c=relaxed/simple;
	bh=eqfVAROY67vxYuboxOgY1QagvUXAKO24M/nbt0Ii0Pk=;
	h=To:Subject:From:Message-Id:Date; b=VCUsRUPADZ1c8Qbh/LNH95Ib7k9Oa8yq3RzbDSN+ir0ap4cFknv/sDki12d6rPmdkUulP/bJnFgqtdKLRyuxJEo3XHPk5Ca6v9kB6p/6omNdp5PcLXseJlK4IRwLyHqsJ/2J3Tkmm+kvyCjKL1Ic86xQfiqekE9AEN91A1VHdeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UzDaGIJr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UzDaGIJr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE61EC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787615433;
	bh=eqfVAROY67vxYuboxOgY1QagvUXAKO24M/nbt0Ii0Pk=;
	h=To:Subject:From:Date:From;
	b=UzDaGIJrBZMD0GVUn536GPY/hnmkOkofQDAnFuCIZKtwXQym4PB5QvG2PIPZvKEB6
	 yPhUH1t72irKoHDmvRTAfWYxLUbkeIdbdEzGYmiEo/o8gmpRekzp7CPlXZr2hXFo1E
	 cT4vgqXDnCe/duEbOCE8ZEgDyT6DYFYrA4KA6jvTtevCILMrD/jtQ0XT0ZAxHZL9xn
	 YrRGVWDxezF7lanpvegfrft9yue3cSfze61Cq7cyzbRjF/dCRfYM53WMcRNa31p3Q2
	 G3tRpQzOcev1FIo0erKmkV6mfao525022MqBWMrSM3kR9yx+4zyXmV1fy74vN/3z6N
	 QUZG4VfbQRdwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD2BC5DF9C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178761543368.16913.14606686484243887328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a7971290eb40181039c1241d01f6f444abecd6cd4a9fd3f6e338aaa9d6ee908
Date: Mon, 24 Aug 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787615433
