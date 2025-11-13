Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 053E81C3306
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763041194; cv=none; b=u0y9HnI5rKCimORNxcl8vbuhyA+M86ezLRXFqCsrgL+duQT50sKWNojDRuzzH12aLoN/k9mudl3aZZtQhHuQ2DBfsOh7uGbpNnUqy4Okk7fJDgWU3amf29/woUC4L2WKuBeRYGcZ9x3/KejedI6tehCtaql5OBRimDdNzcnZWks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763041194; c=relaxed/simple;
	bh=Wizbg2r67XCSqx4lK6t/Pi8LaLMTUr2Oq5IoiqmBSRU=;
	h=To:Subject:From:Message-Id:Date; b=lHT3SpClrWxbMMKoWFeuA2pWPXayDMO8N22fdz6roKaTorqBdTcEzXFiiOKIK2AIM6zk0gG0+XS+YNr4vEIy0D+DQHuydvuDDAX8gVt+hXt+sdz6iUJXe/nSNBRXoE7ylFZFvCp2C2SiUsdY0lHy9zv0DYdaLZs8QEyr++l1po8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZT7Uaoq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZT7Uaoq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3A2C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763041193;
	bh=Wizbg2r67XCSqx4lK6t/Pi8LaLMTUr2Oq5IoiqmBSRU=;
	h=To:Subject:From:Date:From;
	b=JZT7UaoqtzPKsjmvrW2rr2S+WWyah31XWE0D08YB3hQQJdTHR1xqLxP7MZL52Kni5
	 Ci0pZOCRgCwaq/y6ufvvNPAI8NWYZ92d0/1FA+Bw0zo4qtA1FfBOfFCTvGj26FBMTu
	 nzRn0hn7TQw9TNd6ZcNOJ4E1+nPTz+M8HssWJ0sNhWxKdxmhA8Q2EvbbBaFwmIcOvk
	 FfEyRaWtPunDxPULw1PUHrqmKuSRolFoWar7S4XtrZ7Vj9s8bTIPjjJgiaRwtiT+LJ
	 KKmdVr1QgXjUJRD/xUQCZj/+ZKKlphUZB5FCO1CiOzg4H4i1gUiwRd75DRnzEhvanv
	 9zQcxCosZ/KWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A6CCD4F2F
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176304119358.17035.14473079611101801961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2255f3c4b45406dd8ee252a9dad5fe9e0bf1072cbad5674718ed95ef09105eef
Date: Thu, 13 Nov 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763041193
