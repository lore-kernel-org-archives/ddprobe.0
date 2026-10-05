Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512749460
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791178234; cv=none; b=tIzeR1nvcbprKzxXtrMK8uyEZV2nZniWNY3M5lbIOvUCgYyNklDnygJartHCzjorjXXAfCz2j4yfACej34oqS08uv45T6pizIS3CzsfcEIB2hYfQqeRq3gDS8bsGlObkkIqWu1Jc23d4sQD1JJHdsj27a3m8bjIVYO9j4fc9Tio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791178234; c=relaxed/simple;
	bh=mETEIzn20xinLKG5CdZod+f58jobybg38xazV7y+ZvY=;
	h=To:Subject:From:Message-Id:Date; b=l1vgcmsYyVicmhsn2VvwwtTspVAAAeG4yjYKI98w7h0EWGdF/9r7PdNwVLe0HuM417HEHDK+dfCmcMmH7PI0E/9AAAEAESMYynLSqqn5Tnc+MRZhJfrzbGbuQeMoRyNqbIRNZ+p6WpDdwtMrmePKdkRABkGLUmTpKLpEAwY2Lp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqcJTU4O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqcJTU4O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE73EC4AF0B
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791178233;
	bh=mETEIzn20xinLKG5CdZod+f58jobybg38xazV7y+ZvY=;
	h=To:Subject:From:Date:From;
	b=bqcJTU4OFS+IR3q+Pj8UxVEjp6vlaCfbrreiJVaL60gnGvIbtvr8aGjnHIWeUZ2LK
	 a3iAzKjaxkHWNJ4a933n6MbWxDay+fpYyxLNEeFQFmT0Tfvn0l4U80r3A3volhdvUB
	 Dwn6DDrBgwTpbSDzIo0Rugz7BIqKUFCdy/Id6eIehPsjDFajoQ/pZyqYDwHXdyIGp1
	 pEFTjlIspDQTIx3fS6DDcU25rNvzJ8r1YcBZPzslpjeBjSrS4/FfTciipsCPF2QCPZ
	 LQcSA7zChUBEIx9AzkglVyChsHIFicPfr5TPfxjoHYSPRz3tIX1r1oYC6HDXS1B4ok
	 okAXQKQIS9rUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC23ACA5FE2
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179117823369.13941.16854114486577596362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca1837d287014bd44e33f353910182b1d731af4cc521bfe934eab487964cdf6a
Date: Mon, 05 Oct 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791178233
