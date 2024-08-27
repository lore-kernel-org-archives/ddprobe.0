Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA4010E9
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724720754; cv=none; b=LfgV2cv9ugi+Rc3aEBZbzeYKwnEs/RPWbX3+8hw1eZY7dcGiZoBaGNflPxLh2b41CpdAQFWkV3A+h3SE77fy5y4fZ97AGcLtqA5OBrYkGlxx7D+SaE5lEv/VQc3TrHdQetCRywMc91Or757vt2Znzc09UIIC84K0tv9G3tTH6Ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724720754; c=relaxed/simple;
	bh=UxK5lCCF9YHCamwN3rBZOoP4Jw84wyh5sVvPGF6LsZ8=;
	h=To:Subject:From:Message-Id:Date; b=fUe81ToRx2LFnZychLbcuF3Acs/HXVaOIMmVL/lyQgPyedZlZXdtSM8yX0QmLXzf5Smh96x2AA+81cqaeUL3kqWiTUFCOc2wBNOaWvBZ5DyGDDaPFAtM2JsuGvtqpoN+E/KRPEW+8USZNTLeHg2fEi1R2vSGULAnTeFEI6MYK/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFv3jXpP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFv3jXpP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B190CC8B7A4
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724720753;
	bh=UxK5lCCF9YHCamwN3rBZOoP4Jw84wyh5sVvPGF6LsZ8=;
	h=To:Subject:From:Date:From;
	b=IFv3jXpPPkGgM5TSmd/PlTcoIQkfiuWlTZIC4lRC13cdTZQhlr5ev0TZMuGHuC3+2
	 pQaUueAWGnbMdK+KpQQLSTrte5balHBK8ynwZjPlbjq4K3cwbCp38FhtG0SE/4o+UG
	 rMQm9h1GATO3twdzj1XohIzplXd+MhUMp1+mSJPkV8f2N15SHhs65sPhrCgYVXB9y/
	 exkusk6VbceHMwYDX48gUYBHe27If7XVN8MhyEMMf+zGPylvyjDY+RihGPcRf5gZOK
	 v8AdYxIJa4qg9WePeAxGQPokRxiOLRxKJ7p7vRSSEj3Vec+ooiAM7p6hSwxkQNLgWU
	 kjUI4m7y9nEWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D949C5321D
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172472075363.14260.6501496575965630343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee1d3d686e4b1379f9fadbd5f26b9ad06835d86ae629da65c085e2e91e117a0f
Date: Tue, 27 Aug 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724720753
