Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ECCD1E5B70
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772268294; cv=none; b=dQ0fBLQAbHqwg7YzAVfaV6EFnKNrT9bfnukhfl/Pvdn+hTodH4QwVOleigTMBumBkHQIMgdtugkbtc5uqzsGkF0ZXyqD8AqHcpx3nR8irQY0k1Z3QnBR39le5pdlB+Cbq1vA95juzM4opRoIGFadXxa+1D0gPP2KaI/6KXiclyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772268294; c=relaxed/simple;
	bh=i0uWMykYp13mex6oVg/ZIqmAOis1LZDJb++RF7dWwIQ=;
	h=To:Subject:From:Message-Id:Date; b=Ktqx97akN2h+Ds6NIaCpRKQdL91xpBF38plijhnXjKQhgbFX1iMn/DhTo7TQ18rFLFHlToxawIouapKDfpI1donDdhmARJCqrDN/AiU94zlc0QMCv4wmdZeYWIfX0Hkz5E68QmoiPwh4Ciw5epnx5yMI3FIE2s7AGQAugWHoNy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i402VBM1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i402VBM1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0944C19423
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772268293;
	bh=i0uWMykYp13mex6oVg/ZIqmAOis1LZDJb++RF7dWwIQ=;
	h=To:Subject:From:Date:From;
	b=i402VBM1B8Pp+AMIOrrKJgz9lhyhrlVHKcMa1CCVMCkgtdflNI1zDLMAxJRzQfYLX
	 HBqFql6n6kWlvvuDUADNOkmVRzQARfYTm/4W114AUpqqvnL2ZzGUX+Wr6E7MPie/Py
	 /lCx8NV4Wd6Hbi1M3rWyDgfFd4uAif4YUZnDIDlxQkZZd5AHI8byeQgOIn9vSmpaRD
	 +4tPxTCeJrx8rAZXnqgOrrJeJX9vPnN0y3XqM3xns8jnvlURNRSeQ5ylqdqij5Ny8r
	 NucOaLQ2cm108Z69QPCKGQbMqJzyh/gmU6V2BdbFLj/qH75cqYgJM6I1cJYDmT4GlI
	 NdoI1HhdjBuJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F334FEE4D5
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177226829357.8576.14333807112868500777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 965f022a3ea3106e5fb6fc23600793af9aaf2074612af48c429520a8f2063b8e
Date: Sat, 28 Feb 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772268293
