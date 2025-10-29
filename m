Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1981D3168FA
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761782394; cv=none; b=coksMT5NvzHBbYwVcKpjguB+LEDJuai5I2epuFkvr4wnjgbApC5jE0qFaXiWoIRAL+nZ+PWYOkLLJyGrY5ks2NV6HNLbhb1TyhZbnMuVf/My18YlcEYJ1EXvEU753HYnq695soWEwI8BFxYXX3Dy87l3+lO2CP9epUhfK295Srw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761782394; c=relaxed/simple;
	bh=IOc4jZKnLvb3ut+ENE16rsT2P+QSuQmZhtXFwbWAFC8=;
	h=To:Subject:From:Message-Id:Date; b=RZhAy6VftdzMN5sp9XsPqhK1Zhip5F3VNUyh0tACL5J9WP1v54o7f2gfkuAS0mfTy52oBZJMoGjzbqRTgK2otTh5fzfN9+jwbvztkQT/GHQ9mjb67INGKn2PRVez3044zmwTOeAMcQs5ZEST9WsFEsOCQGmgE+5MefPCKNM0W3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DBeI2H+v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DBeI2H+v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20E5C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761782393;
	bh=IOc4jZKnLvb3ut+ENE16rsT2P+QSuQmZhtXFwbWAFC8=;
	h=To:Subject:From:Date:From;
	b=DBeI2H+vHp83f1laxHhEW/uZ1RJ0rkk4PF54Ct1069/L63Q09EG6nx1hXqJi4lL8i
	 WQJwMRqhpVOBhQRZzqXgsSUDokE9Z8GRg3qkh1NOBBztFQOY9Zprx55eqv3ClSamKA
	 pAYk0PVEYgX8Fll//6SYQ3JWuy+3fmrJYlRa6L9PTeltbh7zwO/8MlR6PDZSkHVZNG
	 AIERPME1KlUpcddxqb6GgzzuorEpLkQXoI7elsktF3459GLLk9LRZod9duBuMKD1AY
	 MV1jD8v+p58OHJa+MBvtVtqZfaGFTYkQNhXpBS7oycWTMvan84JHQ5LTKdjtQG0Rxt
	 r75E3av7s5ckw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CCBCCF9EE
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176178239358.28031.15253751230478706330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fbd12638e2907512da3fc78eb572148c44c8246b3a3bc0d72dc06ef68fe5cb1
Date: Wed, 29 Oct 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761782393
