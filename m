Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC1927456
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 17:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786036234; cv=none; b=fib6LzeJG0l/UaBFHKL6YeT65p539veaqLTZ0baCdPRZOphRxiTkmS2tyOY9p9NOIgKrvyBjodhzfgrgdVzZkhZn/QyYFSRjS+X0+yPEPue1bFi0Z7Lau7oopnLLUjJDnl4cM4dMMl9KIHKRgGZfcNeNM8JFlzzBRAD9Bam6cUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786036234; c=relaxed/simple;
	bh=yhxe5vBrjqakzwJrM9VQ+rNCmWEEZbgpjkTCjQfjw/0=;
	h=To:Subject:From:Message-Id:Date; b=o5DDg/+h0Zq2C207vsb9znRY/LJsaAaB2z4P97dKKmSDku/JlwohLQdxoVuSuvfGmiUwvil2vHaNRClyPruqUf4NJBmty9TwtjislaZwHhnlC3+rkmkrSP2nh13DN+04iO1r1992HWe4hS+/VQxcHAWSabkHnHo4qHD+w1VO5rE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kjx6Uc9X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kjx6Uc9X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C18DAC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786036233;
	bh=yhxe5vBrjqakzwJrM9VQ+rNCmWEEZbgpjkTCjQfjw/0=;
	h=To:Subject:From:Date:From;
	b=Kjx6Uc9XbOoIUyyLcKd+SVg/XBwl7uzRHmrs5v484xPQjuuDTCSR2t35lDFGNUwU6
	 KsHf2xZn0s2ihwV1hu2snyIpY26S+sjBFUjrgFfxDaeDIQ2O14VTrZ+JdZvhYRln3C
	 Fyt6DtsAkuwkWJZSHBauo/U+kQp82H4iFgfISm2BNOA9WEwumoeaVBimX8SxfV5Enq
	 Bs25/aNejdGOM4/cZhNTcdb8M9L6cjRSEj8rA6Xpww5N0vA2xHPnfUgeOEoVN+uIpE
	 kAwXinhj5pVAxvbyCXEjKp88wObNkc5r/dyTiJZUY3yWAfRKreYH1zpOmpox+vLCb2
	 8WcYjGKCCk0Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE30CC5AC7C
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178603623370.18986.8666685054201680590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb39fee31d4fef3c17799eb77aafc5477d1364c5098871fa6c6bc1e3885e417a
Date: Thu, 06 Aug 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786036233
