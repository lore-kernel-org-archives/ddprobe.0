Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186251C700C
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757494794; cv=none; b=p1eEA7BaDmdpA5fSt0tdX/AKDGCmxggAu/dpMRwy/cXat7X+4uq5kS558/Aoba3T3hoyNGPDbHBcgbk2Ph6Q1Je0pGSGoptdA1yvI7NnCC5Nsxm0ySYWN59Tl3V7ffqUE2nKWwTIzgMcEYbhyaVz1FOFL7vYOYSoA/+srdQXwEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757494794; c=relaxed/simple;
	bh=eqHGivc/iGMcMd6IDUk/yVZ2z9WGUDNPWOZ/F8LJhHQ=;
	h=To:Subject:From:Message-Id:Date; b=d8LZqREy7DITHUbvYe1c23LhewBBtcHIZGcS06o44QVc8k7E0McyG+beHneZ5Qnb2Vh1MfcftUAD9E9BD2ExwhK2MDBzdiizbMG79dpkkdF2aHZAJvvJ3I0z7J39jHY7Rr1u6+rUt0i6VEz9lacmjkOf8/fuOWtk9FsmKr14Bts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nB/s7agM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nB/s7agM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A395EC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757494793;
	bh=eqHGivc/iGMcMd6IDUk/yVZ2z9WGUDNPWOZ/F8LJhHQ=;
	h=To:Subject:From:Date:From;
	b=nB/s7agMaYDCIhOmnCSARtWtfmo3zaOY0kh96wzcRVIRISzBgEtT2evKa8RuQ8h3M
	 RKMuSA44LOzf1d/qCdlYSjrMjOLBPGeDdvergeZnapkZO8CbQy+z4wIU9k9VFnDTNr
	 5HWXoEL+Kq2At7M+8whPf3NwkuIuYvxV1f6fxnVgXLfpt6kHrKPpAok5c3HOuKPADG
	 uhSOm13H8K0gxxdV60zZY8YeJ9rXX2V7MuvS7rkv/i3R+0J379sh/Ec2Edef8N0blO
	 KgKWBkRn/BWoFPbbBFmQyIT/H3EOtnnCo/fmFBc56XmQNjUS8Ylv7SuUirMqy4vS/m
	 g90aM58FE/nPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9265ACA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175749479357.27185.1526563909529330125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e968282d0070faf5578d66f24a93e72c261b54c3b419bbfaf243e69be8b42e0
Date: Wed, 10 Sep 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757494793
