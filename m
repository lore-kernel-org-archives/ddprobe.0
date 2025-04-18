Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371D6268C5E
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744957794; cv=none; b=p6E2NKozXKBDsjhryZP1K9WN83VARB4BQl49mB4iaS3rXUiNxJMA0LUzG6rGHso9sEofUxn9It+VC/DuxSzN7/SAs9BRHIiBmMZowzsf3znx7e2SuCW79XJByyeTDxbjbaM0qWvMkruQys+SrG84L740d3Hno6Mg0S5SA0V10vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744957794; c=relaxed/simple;
	bh=U539PojU4P704M599qzQJCtnZ5mS3zMlm0Lqbh3lfyY=;
	h=To:Subject:From:Message-Id:Date; b=WfqhEiePBz3JK/eztdSMR+pAkPMoMvdxbqnM0Ny3vWRdV1+kJHxodCHy6ANL/kCA8O7Nvh34Bd+cmWtE32Q2QZDPJWraexx3i3bGDOIH2rjYc+D/8e50w7c6s+gDtd/uiFgb5px+4f1W74bmhysIC9+cvvHPz+dtwL+AGFSRZGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MsphQozT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MsphQozT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7884C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744957793;
	bh=U539PojU4P704M599qzQJCtnZ5mS3zMlm0Lqbh3lfyY=;
	h=To:Subject:From:Date:From;
	b=MsphQozTgfx0/hF/OUbYTB0YW09EBacP+dnCm7rH/CH6t5AVF2TVj92fP9p5WOR7A
	 WldAqVTNGvTXSHsnO11/KewImpjyaD/bFBcNFwzaZO1iutlujQuTCbo7582o0Tb6Sr
	 HPsH28/u2GjazEQOYR0SKKY7zmyXNrw5oRYMkwN9IuCnvcbBrMeQ1r/CyXfumaJIjn
	 rLsHBGLcOoD1tByi24jJ9g7y9sPjqZiFcmZL7ciHn3XpRraX4u7A6Zg1ZwPlpjv0IU
	 AyCZtib3O3hEKApVeSkEzxMD86db4pnDJyGLGxDcSHsthtech2o1QSrViv4Po8ZB5y
	 GR02JQRMWmf2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AA7C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174495779359.17214.3096001719344021310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2062f8b39e8ab4df59df4903e1259edc39eb1f94a8ee2fa013626294e9a2aa2
Date: Fri, 18 Apr 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744957793
