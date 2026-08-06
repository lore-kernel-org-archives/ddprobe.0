Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E26415F2D
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786053034; cv=none; b=K8c8c8FCzsKwdINGpCIzh45KmGy9tT7Dv+X/+3xgW32sCUoYQQHCQDCQWlh0nwqKOzUvyLJ+jFjfJ5qLKR+cFTAZDaaps60nAtVvMz985cPwzd/bFn4FL51efriRsc1kMNUZZYLo51A+KKdqvbjmjcl1Pp7L0WEwSpuJr1FwKng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786053034; c=relaxed/simple;
	bh=m15SBKQ2+cL8AhjU6bQCntkw6gZCUxaQWPwfiEpweeY=;
	h=To:Subject:From:Message-Id:Date; b=lszDhESVrZQvl3P2WhTmC1ELld+eU0NNHINlKoM9yPSWXAK2mJtburB7S3hbi32lWqLPJthCkaMOcfLjdzMExCLA34H1JvpsyF0ZNVDUqjW0EtAw4WTdKfecKh1EvHxGbscXYyNhVSpSa/1iB+2zZgvyT3E6h2Lt+zuwx34Pzrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iUZJwdYR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iUZJwdYR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF57C2BCF4
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786053033;
	bh=m15SBKQ2+cL8AhjU6bQCntkw6gZCUxaQWPwfiEpweeY=;
	h=To:Subject:From:Date:From;
	b=iUZJwdYRLvpDx3268F2ySANOPzU1cxXjVQSNhSqS6YL5vCqNlGco33pf/vaOHrRYN
	 CoiHqDuy5S/ql+qsX4foMMHPY7L8Tukvyu6rQ9z2CqVsGbsrv/MXUn/90KnMZ9qhaf
	 yhJtqkpAfzJpAiRQquCOV33f4rOk+UUjltIuOYCzwlUCLiNC4KusJlSBjJwoKYP8mx
	 XMoAsDo5w02Ejq6q6ghtYDKzyG7kwroCgneNisPISzPHW/iZbueCSOP8C1BficKknJ
	 vg87P4OX2gkNvEcIlHP8Ju9YxAUyASvx2Nds/Sz5D9nJGicDMudpT87Ni5kpktRpcL
	 67umF1LIr09HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA310C5AC67
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178605303368.13727.1429165799518760809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6844c5342a7eeb680e38c13c2078044db710b98d86f8cfb81696e6585d66b825
Date: Thu, 06 Aug 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786053033
