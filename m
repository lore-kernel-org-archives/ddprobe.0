Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394349478
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758377994; cv=none; b=hAgbkyMEjjmXN8uFSVAI1JAMeElLInlMJwHSyGfCUUAGh4xotd/jshtA0ZH+4L455HaXtqP63TdFTLEKaUNKhP5v1pA+mxdkxWhL4aznX670PY8e8gJgLgpTmpt+jpkdEbKiUmrRDxZUbL4V2tahKKYIjstidGTmXjWQA1HExcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758377994; c=relaxed/simple;
	bh=m0DKmA8QtaJq8wGF5Tf1xFRrE6pQsPq/0a2FXP4HseI=;
	h=To:Subject:From:Message-Id:Date; b=kGN8+lG6ipDhyHpPRyxcalbAk94J2S9mvfhhFepQf0gBDqnJbmyt/sGAhxL3vcI/7J+E76byY0edrQqbZ1LjCUHhE3BLo6a4NiVJriSKEOQtkSssEwDm/yF3FDwncvitmHX9+ZsFEmAFKKNka0AxezcI/IUOCagnhdGbl0aNTes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQP3Bqup; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQP3Bqup"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9CE4C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758377993;
	bh=m0DKmA8QtaJq8wGF5Tf1xFRrE6pQsPq/0a2FXP4HseI=;
	h=To:Subject:From:Date:From;
	b=eQP3Bqupk1JFblz8bjsmJvtxIUIbiJ/jK52gQF8JpCVTbg9XUaTmyvUDSuZAg9hkJ
	 f9670wor/C5CVPTFe68ByjWmCHLHv0GkU6INdtn8poxd82LjXj9lMYAJA1dZLq3mtH
	 zXQ7T1Ct0Zfvy6yeuyw5+BMp1XYS08veWnaKomhG2Xw8l55QlkZK623qxk8dmvIalT
	 FEM0U07Dwm0SnP8WUiWnRoFuQTTE+7GmLKtsz+iyGxqdnt7eB1JWShrlIs2WvqRP7V
	 7XK177fp69lBmlZDTlHcwluvZZdyIvVEWU9+gkeHUvdbyxHGKZ+qSbvhbyzDmh08u9
	 CbPnkpfrQhXtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97736CAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175837799358.23027.3154390622688868400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2629e4282a38cb143fbf82011c5082b219b855f693a33ae53fd088195260073
Date: Sat, 20 Sep 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758377993
