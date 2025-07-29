Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D8970808
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753796994; cv=none; b=SoghTsPAXqe4sa8VZYgdkqqOXWAPp1JE6ZK8eFJsPYH6/aMVsHy9gcgVyOs1eImR1AQ0aN7t0rtls+6rHrsTaF5kwgQh4MJeqqra3nUv8PIMWUAD1T0XbTv8YXHAhk+MHO6jyZD27/1ThCzsFewTyT5DzJEtTIlEyxBPsOynFIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753796994; c=relaxed/simple;
	bh=u4CTmdd2ckIxaizSbn9TH0ENuz5RCLOwB1vKpl6bZBA=;
	h=To:Subject:From:Message-Id:Date; b=hCkAqb2AFqXfbbw5eJaa4fhjZ3mhaS/xM64nPudc5zfmAY21XQ+U4na3vmNj5mUfxeIjRnB/NLkx0ZCVG3K2ecowdo4uwuHC4DpMOtyjztPbZTh/cRkBl4aVfyuARn3nCl+Ax5M8jcgXcP2IAdtyxSEiJIOhWsP4/uia1Hyd8MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXdJNPhi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXdJNPhi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A471CC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753796993;
	bh=u4CTmdd2ckIxaizSbn9TH0ENuz5RCLOwB1vKpl6bZBA=;
	h=To:Subject:From:Date:From;
	b=OXdJNPhikcPl4zlz2EH/U9MiNzC+g42DVs6o+nMJ6h7bKd6gSlv14XShyxXa/EJBP
	 233g1JAzGoKv/5oWSev0EJ7xRoEDYBypgBCUjNfOfdVgwJpN3gqPA1QCx0jj9RqV0c
	 AnmTOLpDpDQHdVYHBvJbx7Y/fugbj/+NFEHHtgEv4bSHMiB0F0kzh7CmgaQLB6Mpmq
	 SBvmyg3kv6kyBfCD61LmoXVIMH0w1ZrFsrz3cnxNRIvZKxJVpqwZr006u7xUIgOkov
	 FNKwkjXulmfJymu7DD74MHff2IIxGyl3tW6ceUqEAqfTRID2l65HveAl/i95HAxXbf
	 V1v+NgZIdry6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0C9C87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175379699357.28513.8924977057214321015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e9724b3c3ddc5a2066ae11064aac60e44f2c35be74102c0ad6816524cd63965
Date: Tue, 29 Jul 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753796993
