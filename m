Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DEE03ACA45
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 10:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783421914; cv=none; b=NC54eF+3pcmUyCohGt6/Jen9nAah7wDxhulOusN4mwDYy53s7qJzwEuo5nxpTBuc+pnaHQnajXNDCRVTh5UhkBMtzmvS/FALg2zmN4NkE3b6a+UChchh6MYQcZnGYFxrBbhnXhIxnVpOcWf9nTpIcskT/JhYlh2HGzs/xxGrv/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783421914; c=relaxed/simple;
	bh=FdcNF+C+t0yXZWsNYWe6AOcQ8SFyM+EpkVaeSwUaXwY=;
	h=To:Subject:From:Message-Id:Date; b=vGt5K5FPvDMr6sPyiFyLHo0buW3AxVJaQuedoLg98J1pskpcYABZdGrH0rlCSayRuSfBSd1FEQKGyayRXBCCu7/GDJWOAcLRdB4uOeCXrbf0mWAstqo6Jz15qVIhfAOWgXX59damuBH6e6Pu9h/C3dUGdNmIgQ/kh+9RBeDgs1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tg8OfMP6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tg8OfMP6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2151C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 10:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783421913;
	bh=FdcNF+C+t0yXZWsNYWe6AOcQ8SFyM+EpkVaeSwUaXwY=;
	h=To:Subject:From:Date:From;
	b=tg8OfMP6YJodW4BmglPj201tcSJ8JLl4hZJDyT5IEEtti4BVgPPsqo2Dg9YPH9btr
	 UUhVq/eJHeZrIV1kWHDz41r4WLRhUf1R7OseW4yAs/o0ZmL25o6f+tyd8tPRGuFM1f
	 pt4ZXyBUv6jP1/YPcv/R0rnr/vkkWUH41bb7xqjnFpGfuy15RhRYfJ8LLWJL2/FX/Z
	 Uk5cDThCQ3gE0MjJcQQQUTgdm6g3GPKC4VKoAZIiEAnTFnJU0dFg/Apa93j2z45ops
	 XoLiOPjcLdDVEDeRYDHGu5BWCSXGIWQM25Kb4pgjM5BKn3BbMf6B3rmqo0ur1dn4Bv
	 OMwZvteuDHkEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD515C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 10:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178342191369.17308.8811309819325214186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d0c02b3fd6831c52e3356347c3c35073d5294aadcda91229427739c2a2193e3
Date: Tue, 07 Jul 2026 10:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783421913
