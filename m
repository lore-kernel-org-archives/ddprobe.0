Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CFB279DCC
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 04:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791951034; cv=none; b=hkrbmH7Rq4f+Muy+aIoxbubE03Qb0HoaTCjakNOmzb9oH/5ZW6B2ltLrJJJRSu8KA99kPTUxexV4s/KXTiFSF8PQJmtM/QLegsWjjnb0y7t4HAdf0U7mLX+wM10jbHs+X4CJHQAd/H4d4p77BpKuSfOPKmmFGqpb2dz5Rlkbe5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791951034; c=relaxed/simple;
	bh=BqKjGhMDaxEJryFEmWKeEdFp7IWKFUQAUpZoJL+nmhs=;
	h=To:Subject:From:Message-Id:Date; b=SxkcaJO5dPt2f3czTkeq1gQovptMBAAYEWKzFsOvnHqRljwdxTnavN5l2ozR37r+K7lMwr+qCzJkMV+yb5TslxpYE8LYniYkGaJ0uB0OkR0S0tKeB93SldkDK4chtRFI4XM6uyxQtrDkwCQm7kQIW0mQKuCTsMdu9J0LxDN81UI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILJWx1KS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILJWx1KS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1BF2C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791951033;
	bh=BqKjGhMDaxEJryFEmWKeEdFp7IWKFUQAUpZoJL+nmhs=;
	h=To:Subject:From:Date:From;
	b=ILJWx1KSBR55W6vTF5QGkuDPEIBAi3e+v8VJGusIJo2lAVDA3iU8qQappVIuCKKZW
	 Uhz7oZjoib7RxyD8gfHDuBUlxFDI3Kx3QsAPR8v9uQMD4nmZlqv/A+fv96PAAj1qrd
	 s2v0ParvGhJSTx6jpEgZ8/heFIFdhryk8tqOLsidHpoyFqb4+hhYRiPRr+HIMKLPK0
	 G3Xl8qo2QlPgQ7epFziVv3Wt2CgxSpjXQxXFNuWa71HgbSuonRH8UiIkmAV2w/yxfD
	 sGjTbXDfx7bPo/UEFo8t+Y2bH/tkrdnSbxAva8sd3GhffJZXKUx6EjkLYHvaGpHbrz
	 wKuRtJdn8H5+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B06ACCC6B20
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179195103370.14467.10398046948422582790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a07ea9a7f74adfda8bff254a477e722076e95d8c490acd021eaf03dd41e0c7d0
Date: Wed, 14 Oct 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791951033
