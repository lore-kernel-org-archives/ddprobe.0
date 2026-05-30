Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB9E243964
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 10:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780135414; cv=none; b=rsRqh9fooOySab7kv9tPeJCRyn6ymq3Zpk61npYnOdf5yvIt9d+4n1QR75ryy2oCbP569NNvF4m7QepLrO0bAeimLsvJeAarMvw+ad+M9MGupGWHMZW57LOuUcv1XmglKHvlk+2vx4wq7teyqC2Yanmdxiy/DPesRNWt1+2JtFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780135414; c=relaxed/simple;
	bh=0vbnEiIMMVvxfEckhrCaH+T18BxpXVvfDsteAvGWqic=;
	h=To:Subject:From:Message-Id:Date; b=kN59XeZsTKkpVnKfGtR3JmyD4Hh6aB1V+9BxE9ns2gA7nNGILxqOwPNqmfJbUKFAQ/IbxEwspx2flYcdrc8CUdxQfrOvIfHinbYB4z9SqlpuSmRDQ5Vtt0Lo6fXPP8gfJPeqOMp+/m7COYbnvf2qMGv49SzweqwL4jzVSqeW2Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O3a2PWi6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O3a2PWi6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF320C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 10:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780135413;
	bh=0vbnEiIMMVvxfEckhrCaH+T18BxpXVvfDsteAvGWqic=;
	h=To:Subject:From:Date:From;
	b=O3a2PWi66J/DBg1oS2jVxEP6LRI9eKCiSNJcTDciauNKHs/ZAybPOPj61pRnGdJin
	 MEl+0ZsKFCFpi3kTP3XGsPADid9JCAWfiJlZEVyGsWr0Iq/prx3WrQcO6pSY3i0+wN
	 61Q+IsRixCEoSbJplukD5iYA5ckf9hvpFKYFFkjmIBtueltCuy9Z9KJe+/ZtJdlDkg
	 OLYyIve4LbL3J7TLeUgBR2/so5b6jpTPqL+1Wo26cT+oE2jeSkgswAbPBwHnTk/DEd
	 YU+zfKhyVsKMHQ0M2+qm7RR57cs9BlC1d2TtpVrvR0TLOyh3/e3YtXxRKGhahmqvbL
	 nzgnV2cONqj1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A83B9CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 10:03:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178013541368.306.4811119177598264564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f7f1554d025f4f263c619d8c19345c81d90d9b907867b7fd322accd8dfedc13
Date: Sat, 30 May 2026 10:03:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780135413
