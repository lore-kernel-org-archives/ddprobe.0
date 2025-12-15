Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370BD2DEA68
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 16:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765814574; cv=none; b=sREaRVo3yhlOeB9v3bAzacysEd+KnKtvJigNZCjTGnLeDWD1YVH2LzhB5fAsheqKS9B2gt5TSmH+SGoNyFiVjf7rrKMTF+iRDUPiEvWdGKpPmlcErP1f1og0hXCeIcw2ZeCZjm6g4ckxqSjCkN/37qHc0xPJ897m9Un9Oh7TE1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765814574; c=relaxed/simple;
	bh=jaLDrTUUjLIeD/ZkjgiGwVsfo1rAq8ziT9WM2Eywtag=;
	h=To:Subject:From:Message-Id:Date; b=Pw+e+TjCLulOH78nI6achm0Y2NahfpOiIGZ2PUsuxFjfROY6rC/PRiI+5+Jk19y3kPty2KcTNHas7A5ZKKvBhx0Puh5lBbjg5GWh9n0Dq/wQ+ypmP3hXs3hSiQRZPacXO/EAhy/uTnbcvAvbd8okl0NJm+XclBLx5dPlNQcEzAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lskyJdar; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lskyJdar"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BADEBC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 16:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765814573;
	bh=jaLDrTUUjLIeD/ZkjgiGwVsfo1rAq8ziT9WM2Eywtag=;
	h=To:Subject:From:Date:From;
	b=lskyJdarGwSFj6YYyBnPhrKr3NK0qIgeMuEsW1ecIuPn3S69g9CCfmG/tVuWEetpF
	 GHM59Jdnahfun9nTGuOVPFbxxc7AkTpWLj+MsU/dZJ/3ayrmNlBmQVaoqk+cwUV2Yg
	 psWuX6OG7wfexI717wTcz7JnsVNIqNZXPpE1k9ylyW/iN3ANHWMrE4yr/icbo+89IU
	 I4jEWGtxR816XoLZcU9Bp1en2CJZYt64Xihfck2t2oAKR0X9ZoLxJnM7qYA18ju9uu
	 mbTCF/SVlvIo3JhVs+gogzJJI10VRO6wF6VylOdSc2MIKNVShiCk4of21wtmhb/5SZ
	 BNawNeoxzp/Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EBCCD5B16C
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 16:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176581457360.23994.351828725599380905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af710359ad4ed1f717be563351af203c8037d83b37937c771e90e8e1759cf0a0
Date: Mon, 15 Dec 2025 16:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765814573
