Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4695C3655D9
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791182434; cv=none; b=BRcypa5KUOqZAyn49zkgKjgxNronSlixnLZuHDRIYe+No9mk2DibgBR4ttBCXaKO0VG/ixircOnjVWbxJvjo/0QaaDCsCOvFDuKdGe8UHhiFH87Lzs6qfenSfIttaV4giQUhKuMT70R1eQ8OumPjPaWnXpuWvcC3yu8wV8K2frg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791182434; c=relaxed/simple;
	bh=VGKHIUlq4In4nZWkCnPNk232x2WomNwEg1TI/AsmkhE=;
	h=To:Subject:From:Message-Id:Date; b=h1FVnDAQVvBm0kI6OdQYPov2xOGZlm+ySGcdeT3ZNXX/yZqVdSrKlTIqX46ZtuxG/3ITmHOYYh6/hO3x+DsjShXcJnR75HAFNspDNEXBpPzhW6cF2Z5Gb4Hsm/Q32F5+7Au9RVBkVZ8f23wgtwkRNA71prznac1rm5osdY7wjXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+AHqrra; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+AHqrra"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB353C4AF0B
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791182433;
	bh=VGKHIUlq4In4nZWkCnPNk232x2WomNwEg1TI/AsmkhE=;
	h=To:Subject:From:Date:From;
	b=h+AHqrraCaEiCqGRcgu35ZZ0SiD6W36tKNQRTfKMAuaMsAkJd1KiJknUQwEw7UtaH
	 XPyFly+ka9ULF9/gLAPNRWlkI+yGS5Qbo6mb2dhgsKNokW+o8/rttZY/R90QSSdZlM
	 BK7BiRvle88JDnKzLM/SByLpQt0UC1sTjTrsPrxYiIZCFMMRToRIwuWLneNUOlc1RH
	 pa4Y31ndraML4j0sTfVYu7YbrPVs4eJtBXv4LPyKwJQbyZdbStvaX/C88W425u4kYO
	 VVEMoYQWPFHGFRHr8JPcoe6DW8U0832qkx2KENFEBQynP57oMd7D4cJyJsmg3rgAdZ
	 zKj3fxF5PjYCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B2ACA5FFD
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179118243371.4376.5817315814679660493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f54b35d47d62ff2623c13ac290ae6d1d2f3b8e132e837c5083da8af4a112bf2
Date: Mon, 05 Oct 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791182433
