Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1660F29B205
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750845595; cv=none; b=bE/2pqrz5iV95oK8/iOEScqJ2mUX+JzadayRwsmjtQCKDAXE0ve/DaRWKohJ/k1JX626o4zNMb0KN7mfv5PJp5mCxkvN6HYhwJ9u8sJAlL2trBQwHdSracIzJp6FjqdMmIusPEZuVyNpqLDdQ3R6HzSnmoj9/X8klU3eyp8poTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750845595; c=relaxed/simple;
	bh=bZLK3fPswsrLWT8hq2l1+B2A7kXW3AO4qMgll70YQUo=;
	h=To:Subject:From:Message-Id:Date; b=NeXmpxPuTUb0eSQ4QlKnK2/PfSG4J6g5UOkwK4EfveLpb16wuixM+sYuJ1//i0nLLnXGnm7RK1Yx3oeqv4VGKcNQHamNy5TIHbJprmwd4LJENTuZzYICdsOMBuz8jDyoUfIhkcX5pVu9XW8PKo/45T2Zsto9rb4afVWCeVp13BI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eXvT7vwX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eXvT7vwX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00F6C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750845593;
	bh=bZLK3fPswsrLWT8hq2l1+B2A7kXW3AO4qMgll70YQUo=;
	h=To:Subject:From:Date:From;
	b=eXvT7vwX3boiErY4X5A4coJfAptY30xEGMy+GxrWFvzppEb5QekUnLkMn/hMNsXRK
	 y/r4yjMrsYNZvabI7CC60OLu+PiCxtYhNxt49qK0cd8BKRv2uvhWYCFDfEZSBPw7/n
	 ITlJy2xWR/yVuee5GtyNIDo6VYheI7mCqZIb3RmYqBok/LaEa9q0mzzwvN0x8PW72a
	 Us0C3BDkKdVdAodIUe3mfQGY4DkujogZ9nJ/YOMdrzgc+qmcQCREdBwfddzcdwK/Iu
	 73T5HbdRl1N8VSURyD1VxuqCvoFzbRkuKsaOkHwQnHK5c6Jf/6LqSBdPRZbZaI1eLH
	 DhygZQdRctu5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2B4C7EE30
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175084559357.16429.16965073832562705410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77173ba5a9b1d53ef8e10c09590cd5438045ebefeeaf18b016addf8621df2ad7
Date: Wed, 25 Jun 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750845593
