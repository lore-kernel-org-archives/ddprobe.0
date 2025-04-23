Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FBA1FECBD
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745447994; cv=none; b=Vb1ljKrqoXA77duv6nJQ1LC4ilaN6O0navcXlgg3qGcHbwruv0HKVZRjhkLMT60CXXHCMvjwhFOgHjqlRRHx82H6aPigeYPEFEz0AZywiD2dXgYJrhJan818Ufn5t3xHL40AOoWjJ118aiT4Mo13+AejjTWO738pUXKbc2r3+dE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745447994; c=relaxed/simple;
	bh=oJaqXf23GOo9lYvS85AL7PERY3aaZeDHG90OEGci8QU=;
	h=To:Subject:From:Message-Id:Date; b=NTJVEfnU8Pf0EgcLTUZLizZkBkhLNQ4xj16+gvFyV5btzqiZWupzzH4aN6OZwdaUyjpLVf6YD8wA85BHRYCCOHVAccEPcAZY2esMvR51rwLqLlJpzNBZve1LwWfvjryirSMXGsBrKhnr4BRxiRYKxKTePmqc6gMTcPJr5sqMROg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNQt1nFo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNQt1nFo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A415BC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745447993;
	bh=oJaqXf23GOo9lYvS85AL7PERY3aaZeDHG90OEGci8QU=;
	h=To:Subject:From:Date:From;
	b=KNQt1nFo8x5vQgL0bVVJiOh3Og0t8winxrbEZxfH4VpVx1CKyMbZUUcv1/vYKTZFi
	 45pSZlyqOVQfT/rDZlJI5ZtNFVKDzIVe1RGLBOrJxkAsuLkP0DKcuqWFl01wAPltvq
	 rt2U+IbpX8gjN+UlkRUve2dq5zp1DLVKLItxO5KzXISImdwVtZ9qP5k2ZazCBLAzPu
	 xpS+URTBTLQjKcBSzWtAf0iWWxSVgK3JRsMI9G0KfkCvlfpTxuZDWixr6W9u62x7ui
	 7fhCnFinn7VuyebzaQhFuT2A4TvI64Gc0ExFddM0901T2Zza3ZkgU/HmljHyFizvoy
	 j4J6HsK6yv7NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945DCC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174544799357.31243.7288472134524123614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe89db86fbf9349703263e516502b8c992d0afe95a7f01a7ab6c0e3c2f325d73
Date: Wed, 23 Apr 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745447993
