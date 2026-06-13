Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AED32DA775
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 19:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781379994; cv=none; b=d/XTRRHmz8b3aEUsXDezD+00h0jXGM0O82jjULPOf6wVrq6RJAyFfNahgjtz9wKSLUzuXQVSwCuEj76OWV6XdWRPbuJjmblXCdlVGXka6nVTniG/4eO9foRQpHPU/zNyFKUrW2Zjkqf0iMefF3ZexCfyBl15eodZEy1D7JZW7Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781379994; c=relaxed/simple;
	bh=E3DTA9nZ/hLFkzYM1SHsAEODVJ609HQOt62pTvs3LJI=;
	h=To:Subject:From:Message-Id:Date; b=qK/bH8cftd5MPX0Ebe+vuJQ6iUj/J90rZR3MMpRC8s14yRBYFqCJ9vvE7SAbhdLuVRqJhDaO4Pvy5ZxtVVMtnRuh4NsVG7ZK1JB//8yrgtxJukzVINKQc5ENBwe/TCQpSv+70gX3s5kPc92JSzFlkvW4/rYvNVKTBgwEiIqKPqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J9cTfJrs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J9cTfJrs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8E20C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 19:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781379993;
	bh=E3DTA9nZ/hLFkzYM1SHsAEODVJ609HQOt62pTvs3LJI=;
	h=To:Subject:From:Date:From;
	b=J9cTfJrs9to6de5GqUHhBoVk+CGtD3Ydma7CLGb/XD7GCOh4s+rhqwr4IWq8V2a2r
	 h3Ix48Hlah5Jg0y6soPJUJoaV8mybtIof9/KJBFcH7Nrg1L4VhpzvCMnWrmH1s8CW+
	 rui6mRjRrD5UXwfXPGo0bGzCcmd7EunE8QwLPK9AnU8zxws4VUMiXWWitVlXW88cSS
	 IqpOGr5oogxuTrzc9wejmfm6g9YE+bit5fZSe9qJm544u6HzQ+/PiqVkEZm104h3/m
	 cFLPzCzkRBQgLLQNhGiRSK+vqBNgYVnpEoGp/g9JSecUoaoafPXHqQD7AB7NenllDt
	 89syA9MgQv5/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7AB7CD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 19:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178137999367.28293.1177249749113203732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 481073a6923e2bd04ccb71636c169cad96afd84e2afba92a7e52ea50bb0b207e
Date: Sat, 13 Jun 2026 19:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781379993
