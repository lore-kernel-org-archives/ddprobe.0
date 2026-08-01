Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C36E306B08
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785544834; cv=none; b=ZHkDRTb9XluJYYt1ripN9vYBbrfFKB1BC/JJr1XPZ8esRKg0ZqQzFct73um//OaArUiwuCXvc1rskX7JnzF27C6F8GXwSaXXHR3fj+FAq5MlnesjDKxlONtt2UD5TtbJ8RA33IbPkY0eEo8O1UMgSGIz2FR+1cBpigoNl/w+rmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785544834; c=relaxed/simple;
	bh=Mw2gucOdiuFq13HCyF2DtXuKZCALoi1+8OqsTuXL1eE=;
	h=To:Subject:From:Message-Id:Date; b=QHLkaz33f768OTMsmZWoDnGukcvW4tkAQtilWDN1kU+WrRM9dE8VNHuwTZ7v8UFRNtLzgPbplpjNO+T5GeKQ+rCfYNVsGD9sj21sI/c5yfpvYAnM/ghsOMVuTZ4Y8VjOHwvmqNonMXUxwFepQuN8ERltShTBVpNZKJvVF6zeNso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5reEpOK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5reEpOK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7EBCC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785544833;
	bh=Mw2gucOdiuFq13HCyF2DtXuKZCALoi1+8OqsTuXL1eE=;
	h=To:Subject:From:Date:From;
	b=Y5reEpOKbYiKgKImoRFneDZvJpKiZcgDp70L33aFTqB/YNiFRjWebZDoF3qsSWajJ
	 VAU+oqjqv36uGhmYriz0J4KWenkAjJf0L1GFueqxE4Ts28Y0jBxCtCrS7cLmvUsA9i
	 H3sFQal1Tj36FD0J950kUU5z0TfCpkoNELpSPCLONpdAhXYzuyL48Xe+XSZ0YS5SHI
	 fD3peiwExC2doNEDEARaanakzFsCcQxrEijJDTlE6S7p8o0fiNgaWu2wmkgJPKeYVI
	 7r3hMfYtt15viQheFC1W9Wf+SL6SOpQ3P0DowouRAU/NqwOjk7U9qof9y6lZ5+2d7c
	 m/PgSEm28/KnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0B5C55171
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178554483368.14990.2479816310034144760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f00cc57455165b888b1e760b598b2ab1ed4091c003b73ffd162889f46db37bc
Date: Sat, 01 Aug 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785544833
