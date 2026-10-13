Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4555D414A2A
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791855634; cv=none; b=IJgFqNw9ABQdt5fQrQEzsBHiOkzK2/NvJxDoa0fvw3SazuhVv+VTsShHebo7/GWau5bCq2c8hyICeDh4K2pUkG3wP4M6dUU1rigFs7xmFl4rPq/5AXwaWf25AUqqOr1DR4LrkLZ5XjhWK7bh74NL15M6rXX/ufH/Diyvr+/BGUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791855634; c=relaxed/simple;
	bh=zeBLkcIOokw5gXJKRpzPdqbFtApnqb3K8cq+RTJb32I=;
	h=To:Subject:From:Message-Id:Date; b=c0WxlCjAQRgWWT53R0ffytLuaFtKBFfSM1xcS6HfOlpgkhW4JwudNNLtptd3ypADNGvWYGkRxBBy6wc86FndTIfpYGhrHbjVO/vmmGiCvn9hNNYjCWtPxF+MNniYTvvqfXERk88/mKWGRorN/m23BNTZ8JvzdHzZE1pf7CWPpag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dM8ALmsm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dM8ALmsm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFCBC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791855633;
	bh=zeBLkcIOokw5gXJKRpzPdqbFtApnqb3K8cq+RTJb32I=;
	h=To:Subject:From:Date:From;
	b=dM8ALmsmZqMKstE6Gbm4+iQwfitfw2h2PGy7iwoWhuRAYuPwstiXCj8LUA7k0EoB1
	 Oivjrm6Fp2mSzQie1clAapYV7ii2WWXndECndnychyRZ1Srr6v4bvkKg0ejYVhlvur
	 MGT7ijqDOxRk0o1V6c19GUMI4/QX6aUb/VlkKEOlJQ7mxRdechgdu/oIu6gWfCyJO9
	 18Hyg4F1MzMtSyd4hmMIHH7DrP+PxGHlmYJZYDoZESSf/VG4rxgUKgqdxwMw5XCb99
	 BZtsRMMvz7DbMAFlwShVK7q6uynmBSvidnJ2oApLlnjVQ6Q8LAFScxCM4WHWu7168g
	 CQNTr+HkZCK5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0F0CA9ED0
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179185563369.621.3885750955562512012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8dfe376eab6bc9c4642cd376c3f2be62ad4a9c68a03e432c49e527487a260b4
Date: Tue, 13 Oct 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791855633
