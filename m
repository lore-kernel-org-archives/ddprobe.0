Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE353A1E66
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766355234; cv=none; b=W1SqX22+4TnA/AfwOjhjCtqM1aZMANanlp+U6tyhbo/EBe4VKmZ4BDEwQplBC3WEeVXiQA6gvvG0K98DccXdmqBGSvsdgavkdx1kSeO8HCq89viC3Z+MLTIutuie68tOmgbVc865ezGfg5l/q1Oesel/HP4Fnv40tnowa8w+DKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766355234; c=relaxed/simple;
	bh=/F72tGHOpM6gXc3j3HKMiQcG3Kh/YvZWLITXWsLmlaU=;
	h=To:Subject:From:Message-Id:Date; b=eq1p7gEdjZPnkuVfqzKsQuswlw8Sb18VBlvbE8M5gPndWykJlDbfbLc1D2P0VUteb4iXp3lrq50r/qKSitQXUelViWkrZ98/Uvk7BuonvF2SMbFe93hI64KVZ1t0kblt0mrVNIjNJy82JyKSNc3DWxPHh0UNq3KKfQ8nHf73Dp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jGburkJJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jGburkJJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97AA3C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766355233;
	bh=/F72tGHOpM6gXc3j3HKMiQcG3Kh/YvZWLITXWsLmlaU=;
	h=To:Subject:From:Date:From;
	b=jGburkJJJnLMu433OjsEpLhIuyQljlzZORcsUK6r4IRKCsqSwWJWL0xChtjrEG+cL
	 9YIY7hHx50j3UsQum7gzJY42se7seN8XBzLWiRVuDPRfl8PBZsXarCREW+TWiyTRDy
	 qW39YZG87Bcxv5NljDfftDjcDQOw0yCXmSHCiuUeknZAyy8mZfheTdXT3zjg2036D9
	 PJocaVMVniHY6wUadBt8e3rt4o6ie6iHDwOc1gMuTzMfdzSOT/GUtlWRLcajR27rlo
	 19rf9IQCHKp4pdtsWYvOh5xpIx5o282zK9mtmm/e47yHM1uCrvIidMSR/GITzQpLu7
	 e+jFJf3+wx6BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9FAE67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176635523357.20424.14356390067963989307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae20d2c17e2f9b0d40423471ed3cfe1ae35d297d6688cbc812eba66028d7ca31
Date: Sun, 21 Dec 2025 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766355233
