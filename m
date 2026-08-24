Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400B140DB28
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787574634; cv=none; b=qtO1DvbUHI9DHvROpaqJNtVlRbMcYhRYYz+NwcGZGgX3EKv2zWziegJ44qqhHdBpdfRPkzQhTpM8Up7zzOpQDjr2i5yw8x4wZttUVYRu+zKhAPpvD6XtcGXlaOnLE43W2OKON15vmuT3DeAJyY0126O/q0zIfaNIutZrLxq6F2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787574634; c=relaxed/simple;
	bh=oZJLm6mCIOsnBdu5HqxtsDmFc4YxpcdpQdF+S71bfZk=;
	h=To:Subject:From:Message-Id:Date; b=hZV2l/go3rh4ElRYr4/cHtudfKSVrwobJ1P6GgDKRKXtmmEy+K3wTFUp5StMwhCcL9qWNRHlI0VAK2oyzNIWkmKzfBGrpfWdVYVkGEAiIWx7D0obgAt4R+2wclpi3koAckjkdddc1LYghYzACM/u6vmWydYZ6cnpLe4MZ6/N5Qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CfocdrFo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CfocdrFo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D101CC2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787574633;
	bh=oZJLm6mCIOsnBdu5HqxtsDmFc4YxpcdpQdF+S71bfZk=;
	h=To:Subject:From:Date:From;
	b=CfocdrFo1aljCOO41rAB1mZWJq79270GLh6Zrl4WJmwXZ7UP8/3fpcndbci6NmRHG
	 2U/PCAGRog5jKhQjoysKD3hDCTrbtoMCrfLc1KjYv/jMZPuZ7+4mV0iB9CJwXMgeSr
	 VFUMhV6o8iEc9P1DTuBaQmTxQC8qmTezaKXI+E9p5U8/+bmsyNbXzfiOYNs4Tt8t6M
	 +ZnUOCy19uKTBhyyfUNfkwhc0+wGrWbe0l8Oqna8FrermH5XR5V7XW7ht/UTN6HGpq
	 U1RtwyaV3u04SiAMJwY1fyCS5gV00rko16AgtAI0F3qOM6y/kZG4Qj3V+TAvKqHMke
	 UFbt6pNFQtN6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDD7C5DF94
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178757463369.1904.1996032517011568543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8580b4aebc07d4fbaa78db1b2137063940478cd84d27400a2263d38021add11d
Date: Mon, 24 Aug 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787574633
