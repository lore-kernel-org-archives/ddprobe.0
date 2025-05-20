Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3E82580F7
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747766994; cv=none; b=lOw0/uc8KJiL5Oi3PP3EkeQdJoVs77XfMx8uwGFKPfJ23MSFCOqQDohwJFWJZw90/QTG/ddF45iXhjzVFnBuc57r0cmJG6HVMzNwo7Y5+WrM3STh8DWD3V1nw7XVjSIlePGjKSxM2Q9wbyFh4H3eV4vDujAtdlIeyZDmWCjphAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747766994; c=relaxed/simple;
	bh=j9DgvrbPQ1Hxozzwn38HLExk69lTlQwdoZAbEfcFfdQ=;
	h=To:Subject:From:Message-Id:Date; b=EffvZyM0V9IAADWVWDtP8WKwP1OWtbZmESdWIhVya5iOQZfQulT7VcW+iWQ6k/owhH7TCQgY21fFsDqd0Jcv9TTYmSM0ldfRQm6yOROojIFpK1inRexzm75GvB7axXpivCsbZPsm/dbWviF5CQIFNaX9O2EBCpHehUwaHbGWakM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tLfD26lr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tLfD26lr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2430C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747766993;
	bh=j9DgvrbPQ1Hxozzwn38HLExk69lTlQwdoZAbEfcFfdQ=;
	h=To:Subject:From:Date:From;
	b=tLfD26lrhIdJ62NfdX6LNDvAD37J/FU262FxZqOOa5mThN55HuDyrGWJWhZe4jc88
	 ub7MFB2F4dRjAjalN7g08D5Q+pmIPPxS8C9oSf6ddmraehuY4urFH9R54bAHJaRCBP
	 WYZLLZ5kxs7I7Ppt4tjnHV/O+oUowO+uWgIfIeASdPjC1dtgwNILmub40ZtrWfoqph
	 C1cigiSqt+rjv1J2ff5p6znk2gCLbxocFuL0N/Fh1KxzHvHBzoodRDmRtpl9O4vVrG
	 u45MWL7+kgy5uZhMcovdk1dWUblLBKesAM6YzbzeFbQk0r1v10LfHFwi/6totSgY8O
	 1JuwuLWm7SYSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCF5C54E71
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174776699358.30998.5532701083300946411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f821108bb627903ecf029b116eb83fe6f3fc9872e2c6f64aba55632618def7c4
Date: Tue, 20 May 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747766993
