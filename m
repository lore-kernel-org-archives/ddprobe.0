Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D15C25A353
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761579594; cv=none; b=KzxvDAXif6L9WY55UUXcSIqT1SdvCgYLw35RqgBv1HdyBXI+xBNDNtbivzXweOtmmSVvQLu2y4rYzJgUgK62yNMjOVfoSj6U52mxMQGesc/JN1jf2HOGPEr4EmFPhGoAu/vuDAtzJhA6mLBWFatKDboR07giB2iqKBq2R0Y27Ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761579594; c=relaxed/simple;
	bh=61G7g33fxKcx+HQwszutVyU2/UskMzXmR16LYRooyyQ=;
	h=To:Subject:From:Message-Id:Date; b=Ry9PU5XSKup2EALltF1ICB8bhkoCbnXwr62c3chZ8fmFvkicTNHHUb90Kmu9sKwTWnU4TELqLSYlGCse9cFd6VnjwNOlDn6OlSOdth6nD7k7FJ9FIfzqLPAhGUjVPMDsTIqfmloOSHoTavnzAPcemf3lb2vnzOJGL9qmJxySG18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MLUaPlmc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MLUaPlmc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50A6C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761579593;
	bh=61G7g33fxKcx+HQwszutVyU2/UskMzXmR16LYRooyyQ=;
	h=To:Subject:From:Date:From;
	b=MLUaPlmcNnzPhkJIalrPmvZif/ymEkISyyR6tpNIU+XtLQziY6/I0g8iCAAvfqLJj
	 1JYAKXbTDz5u/1cFpPE4Bd2R0b8B1bt0CBftv/ocF0MmJBK5XbpPt5dRTiiQLBsVuW
	 ZqVYFIhA1eDHvB+yNn0I3cn3TKPvsAQk6vpg656SL+f243/4tts4sfN5hpMM9AlYKV
	 O6mFhGLbTgYwgXrsViA4YcLF20JN4ndqu8s8E2Qe7rI3JtULWiFqbgk41UWfu6AOVd
	 JiIDby8lutVEH+Xb75nyfVzsKIua1CuKPLuzDNQRCUSaeBRuQI67bfEPgrvYDF7ORe
	 J6uo/IuT2Uoiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B41CCF9EB
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176157959358.5199.1856951018526769767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cd86a9a21a15d5b7efadd01546f1d79f8ba480ab069031e9b5fd400bae23409
Date: Mon, 27 Oct 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761579593
