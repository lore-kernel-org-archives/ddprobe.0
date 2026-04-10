Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4F43CBE69
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 14:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775830054; cv=none; b=P743mV8fdrt6cXHCgLa6d6PunKDOOrbEGKBKz5EsvyuqAKLyF5PpjCIwvROUrq15ofT1rkhp46NDkEbPUOcNrWKJUsPLbnHEwdRPCgJA39UtIJvLNB67vkkCAxd6kAOCd6VGS4wK2uIB+xZTSQFHwaiIj7RqtO+nfejmmFdYZCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775830054; c=relaxed/simple;
	bh=t9OnMsY5SsmEqeMRUpmltd2FhBy+qC7y8bG0L/HbOJc=;
	h=To:Subject:From:Message-Id:Date; b=FB4lpV7Sfgo8vxFtUreTer+sxG0E4rLKrev533G0uy1P3Y6GlBU1rUjPsBRyPN2ZiPJIoNAP/guW/BcGIupwyIyc+N856pPUoOtBwBHgvFm4ohgWWx9Ela+SPrh6V5fuZhgeWWbln3xshZHFwTWQGO/0HBD3irkfgeb2OUhlZoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pPeL02N5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pPeL02N5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF829C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775830053;
	bh=t9OnMsY5SsmEqeMRUpmltd2FhBy+qC7y8bG0L/HbOJc=;
	h=To:Subject:From:Date:From;
	b=pPeL02N5UNPgcMb5X4D2LgD6f0byI4oAQHyfoNZ7rpb10kkQHeZUpkqbm1oFMjLNl
	 QSaCuFNHybm5DnmJkjGQbyQwWCy0so4YaIjVYT5+8VJKeC2nnR49qyTz7MKtK18fty
	 iI6EvyMGF7yfC1K94vd0vkd5igKi0eMmPuByhvzANUlr7fWuGowbXlj8DwOeokYwuk
	 Qv5YwaW0p0qqVTSAyBTqAUQW0JO5n1ZY7V2NGM/q5TIgWB2Q7sAREQcn6UdNZ9ogZH
	 LQEGuLvlk70mFvv9ZFfJ04arA6+qChfqTv3dEfEmgfHyPabKB5jj87d7iL8Nd6Lqik
	 J8oRykxJVEv3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB1CF44873
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 14:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177583005369.21881.17133360505629733408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fc110346c7a4e75ede1faff06817f88220a83910c6ff047c5a11cbcb8d00be7
Date: Fri, 10 Apr 2026 14:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775830053
