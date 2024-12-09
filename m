Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309E9158853
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733718354; cv=none; b=de5m1Z214E+cYjoIzN5ByyncZ72CswPcASOfPSTZtqbm17HDczLjWwct2IN62nCI3fno7w2ZSHShO6eAvhF3A8hiNl8QHw66Hk9HWLTM6A7e9IHmILs2i54jNeAO9iDUth5y7GSwDhSi13uYaOsd+SbFUuFKQ13Xz5zIx9cB1Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733718354; c=relaxed/simple;
	bh=YNQApl/7CxdHqB1Fb+eHs160/Tir9D+CnHDH/A4zfUA=;
	h=To:Subject:From:Message-Id:Date; b=ceatlhM8+Y5qU2U7ClR/MaVTMl8gaJvEAF1yoUy8QucgJhFMS0ppV8aHIGoxny2vvWJMdXujepsDJOiGZF7JqWM8V832+0Zuhm7GS1VuSB6jrCVX0VQpzaQagppYgpSl9F8mpzavD8oqvpVAj4kBWEIdfVv+UOHF+5ikIJMjg74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TCqMe2Q8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TCqMe2Q8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD536C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733718353;
	bh=YNQApl/7CxdHqB1Fb+eHs160/Tir9D+CnHDH/A4zfUA=;
	h=To:Subject:From:Date:From;
	b=TCqMe2Q8gueOn5h8OVZbTgdciBYoY+rKkDFSE10yheme54P9LJpXzkgtuiXX70u7/
	 wdD2k8bL7RqR1V5PsKjZZFsed0aIOVIASOsRm7/c6g7gNwELFaojWA01h5xdBNYDqf
	 C1W93UHDgPNl3tn+MUa4/8RsHjwyPhRvCQDrZgdmt4qqEqrg6WbMnOjgn/aqmtLT0w
	 N5ARLm/tORyClvIXhUDyPaGWbKF0I6UjlR5hrEnYQg23GFsaQY4Wyfz36FYxpgd13G
	 60a0GQb2JKV+QHJ/0XVa3C9b0GFCCizAKnPqc9+3H5lEMxCyGqMyP9PuB9smBw7ERy
	 r7pmOOtMNx8cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C379E77173
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173371835360.5590.11442489584295736355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b72254271cf88a1ac0533e03b7a2f917c3a8fd32c2a9b77e994ff0cea6b9ecae
Date: Mon, 09 Dec 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733718353
