Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B593A9DBA
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 08:52:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779439957; cv=none; b=eotijXghmnWwDdNNniJBW5plLO81/LjVB5jeTMQqnT+Zr/ilqK6LfVs/emZHariezw7lfsbMgqvAYHfqjbs/zi9F0UVjxzmA4jmBo1cYpb32Y3t7/5eWAYb57zVkh0qX06cMgDiBKE6u99g8zdfezWeMGa1Roq1yV5PDXdy9xtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779439957; c=relaxed/simple;
	bh=qEniLK5ahxsrsnwR0G1u886n2JlJYQCG3uyX83cgUKo=;
	h=To:Subject:From:Message-Id:Date; b=l3URDTyukmNhiqaxkw7WjCMxsqR1lKPQECr7OAo9Vq9BKy07so0bKWHcgy8NynB/zymFuXrTJy9BEgW6Q6X1x2b0JCUOAMZnOl4fxRnYoV3OjzguuhfI65ZelGV9bzS3Avp97iqnocIKcvvVyDJsRrMPypppNgns7T0eSUp0Cb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKEXpzGw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKEXpzGw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1259C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 08:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779439953;
	bh=qEniLK5ahxsrsnwR0G1u886n2JlJYQCG3uyX83cgUKo=;
	h=To:Subject:From:Date:From;
	b=RKEXpzGwAJhsJo7VL8eORP8hnikt9Bqj3JXqvo5P2iPPj2zX94RNsPouvxMGxY+0O
	 udC5ncc3fgKujIIllh8D0WSuWyHDE1Oarvf1cD91c/9pKTAxtJoCAPHGwu11Lk8UVf
	 GJI+IZhBRZK6fD+Sqt7ZJXTvFWx+daWaCJntE0ji+jJhP+tKtlj50Ktj4wj40rw1mN
	 ij0THsl0ZQJQXmy4TrcjUKKNxhj70QMfVtY33+77GATGCsyhKdDabLLosu/Z3tp0aJ
	 l2oDeRyQz93qtsapbpRI8BQI4BepHL9P86hxLryaJggv+Phxv73N/OSS9zbCPrWWd3
	 rhiCpgE3CcnWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E41CD5BAC
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 08:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177943995368.16276.8502394831189804347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 230aa2b3781d32dfa4c76b2793b715c8e74b351076d4204581691cb81f3eaa22
Date: Fri, 22 May 2026 08:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779439953
