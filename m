Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414FE41DEEB
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787576434; cv=none; b=Bi40dLJkfz1CTpPVPgrxEmN27ci2JxMIf3eqUJof7tqM0JdKKDJ09x8OtOy+D0tNbB2kXAlXtu8f5Qm3NK7nTOoAfUfuVnZe/vGli8xBx4Oyqc651R4AAS1Pumtd/ORMkV6cEvtEkiRKBRqKyVVfb+0J2yFWfWUhvNaY3aNeX8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787576434; c=relaxed/simple;
	bh=zIdjgLmFphkhJhwEhrhNTezF51LwndeIAWeRt7XVcpE=;
	h=To:Subject:From:Message-Id:Date; b=TEJP+oNowxBvQcdmibG1omnOqCPkk8pEtiGm+C7DG1BAD05pssjlYdRUCAoM2wvGDjP0fTkNxrKqkfmlJQnvby1m/upPMOsrd/F5Pl1fyKHRVl3rDvtaGrmv/xvKGmizj1hGKuN9+bdKi9BVI3msZgl03vCMyfSsOc3zxgVZO48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d2v5tOpR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d2v5tOpR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBEFC19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787576433;
	bh=zIdjgLmFphkhJhwEhrhNTezF51LwndeIAWeRt7XVcpE=;
	h=To:Subject:From:Date:From;
	b=d2v5tOpRRZALO2hAMgTTa9vmOOp4JC2Hi3pQ94lZrreiftQByLuESyP4mSyUrTrmD
	 K7LiPWGSLs3ZfWxE5hAnK26GhoRwD5+GySOvmUffQuaGu9qCN6axKHgS09AXvWfCi4
	 hFMeBT/tfTRp+aRleI4Wbv6woYqZNYiV+pRmw9n8TYb+JbGrEx/EX+2N6ewNiBR2aO
	 QppXMCvKTP3/Sp3qN9rvKO+CpQUkanwQKzuKHJYwAglt9OfHaN0OBtF2LaQOncbZAw
	 fnfXMCZmg1fWYRMbhT1/nuPrxczCx+MLiUurGvZex1l6VcCNge6fSfhY5ozKNFRmf1
	 7Thr5bxuCwkow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA73CC5DF81
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178757643368.1875.3384948985804846107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e31342d271a83a9e8f41e99942981920efc63bbe2adf9104b0a641cc02dbb209
Date: Mon, 24 Aug 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787576433
