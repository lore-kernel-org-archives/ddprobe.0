Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5340135DA6E
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789364434; cv=none; b=cgRHK5VGK12VddM+lKQlXgqD8K0xUxEyjC1INV0LCK+JqKn9DauagPdtaLeh2RNyn9tf0dsqs5Pl4blv9cNe/AU4CAZn8kl10llTmmIzG/BlT3w0N1VENzoBxDo+Yew2QIb3Oz2k12oibVPuXM/vblhAR2JeS1XvD9SFEILheZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789364434; c=relaxed/simple;
	bh=Z2AE6GFxNqk1Uv6JZELa4hFAVpKEDOC8y3JZDspgAKU=;
	h=To:Subject:From:Message-Id:Date; b=pmI4gf1kuG1+xmqdKzvLA67wL/XcDD5XcfHhcRWi1RBEvJ8O2keqbOC82COXToq2WqFxO51EtD2aoerV60peIoFi+i26cHwcqtK+mVDJuNug7xxSPAACrtIs8992wOgE8T1ZZYYEsLH/COCrrLbf0raBkwLahc2yrLyNiwQMaLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PipellHj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PipellHj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE566C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789364433;
	bh=Z2AE6GFxNqk1Uv6JZELa4hFAVpKEDOC8y3JZDspgAKU=;
	h=To:Subject:From:Date:From;
	b=PipellHjgfoyRKq9GhRuU/CuxSpLtrvNY4pFx1BJyplqgvpXLL7TREi5o19VVak/I
	 qsazdaQ+jxxVz99zK2v+CNFotJf4lh4nOAC4glBUlGTTtCRW7/pcQ+NORFHG9ITqBw
	 YZKRSEIyJhCZkmFN4qPW6CQKerwZ7iDnqapSN/n9kyDv/A7fLvL2BkDJPtd8Rd9ajX
	 hkvlczrZZL68UY8G95pU78MswY4cceyaV5FNYA62/LXJtFzzNSeO8jeh8Lk58ulQA5
	 4Aw+wBofVC7T3odGKF4Qq+2sHDaU8IEfcOB4ta91b+DiebAMmQaQhCWyHdxvi2VAPZ
	 BsxllJCP3NczA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA2AC88E50
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178936443369.10401.1783682791618558076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3faf5a22c4da7bc0c6e08ec774bab759c2f566168280ad8f51086f30dc7d0dbf
Date: Mon, 14 Sep 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789364433
