Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74AB13F44D0
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 17:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782926914; cv=none; b=AxHek7/ux/M0MH6r/pn3vl4Y8ALe2v+oRyvSFfiaY2LlD1xtYlNSn8jFx006ugp5HmQ2a2NFUymGyiEqRDbL19QDzuoNzFuIJ5WF2b0Y76KGitTAiTvzckg71HFoGRjnM5D+NHMiSVKVrHs9zd5uUXfgJLdfp7sEHmN3397BjL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782926914; c=relaxed/simple;
	bh=gH1wHrS9BcayfaQlwKpY5akdbThf7YJBMHGhbDkSJ78=;
	h=To:Subject:From:Message-Id:Date; b=d8on8FNEzzqpdjqPpy+TEmWGdBWtWtoTLyrj2CiF/C2NccWMDkcEdJONWkUUsUznvRuNUyL7VKYJxt8ZZZK6m5a4zRJUKrrT43tmBc/yWQJXtvx0SHGwD6ZLjcGnhIn+cUlG6mg0BDiXFiEje0bHpJClHJ0gNwMQFTpUdSP9FyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ba7Q5Y0E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ba7Q5Y0E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5B1AC2BCC9
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 17:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782926913;
	bh=gH1wHrS9BcayfaQlwKpY5akdbThf7YJBMHGhbDkSJ78=;
	h=To:Subject:From:Date:From;
	b=Ba7Q5Y0E15GP7erj3Mw/bmxZG5TSi90MTpDveE2MpD1MBiB6zEIXFpN3IDtzCr2ke
	 dMLaCmCFg3DShzqxpu/mlKj2bqg5/aJmmV3Z/xry0J2/U3X0MU2or/Ws9FYaYJBDLz
	 gunPN53dFkyuyg2seaWmnL5rsQJJh9gcHsKum/1fyJlaj+5jiuKvgu8gBiXnNHQvUU
	 jnmPtECFcGm8lDs2enVcxOzoUtPQtOc1FjHBt4BhmprtpnGtzKV4O8FhpphX/Q2N5i
	 yCUXYIde8CJmMnVnG2isrbnWiAZwJYejfNl/x0zaeT+oXzUmnfbGt/KoSbpD9g9Kc5
	 YGEKTlnaYEgfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB319C43327
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 17:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178292691369.22198.9153980136158212393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6123f1e8213262dda728ffd2866427b5d9147f28197af836b0b618e311ba32e9
Date: Wed, 01 Jul 2026 17:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782926913
