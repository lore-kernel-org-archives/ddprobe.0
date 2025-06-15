Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 298961DA21
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750007994; cv=none; b=fxkaSQXFUvo5dIp1mq7C6spQUmMp4ipmTJskZ5wmEvy46iZ/nvp09Q7oRrSoVLkllLS9ziKkkeEMdYt08kO0X8OIs95oV1g9XzpOnJdWhxMdx7KjPdYfYvBghiMed3CdcdnGsLQ4Ocoevrgbpm/lxclOUd6Srv2KPKPDMgEc6xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750007994; c=relaxed/simple;
	bh=QD4pwYWf5RCLRBYrNoE3CIFUuHenOw3g8jONA4osigI=;
	h=To:Subject:From:Message-Id:Date; b=YHLuBlSHSxP2p3P0hUZtTA3TUnq/wg6n0nBEcSLFpGRGe0fJuETgyUSqc+EHHGA/Vg6guurtK7na/EbCLUA9JyxmAAghHavV7VovLVTv3YNLPgoJbUCIrTiY9cCthwEK6Zt6JlCormDBPvNSjr8I4B0+CLcsf45cE8XCfwgMbeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecaJaohS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecaJaohS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3041C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750007993;
	bh=QD4pwYWf5RCLRBYrNoE3CIFUuHenOw3g8jONA4osigI=;
	h=To:Subject:From:Date:From;
	b=ecaJaohSzyS5wlJQAkOGeBBwftc0C9WT1S6JlIzAZWkQmS7OOd2wbugBTLTFEEoSj
	 7ZLq/a265Dhgw0aN3ZQJolpz/PavH/xkW5JW60rx/9U5rBXU/HQUyKQSkvQfNejopK
	 O3fS+uUx8ouWkVFVHiBWkOwXi+HRbHDgugYt9iLsx0in2ifXQ9BDeKDJhFhRh/kvwH
	 c0rdnUH+PnnpsgJ6gn1rLCWIPBIbSoJ/2uomHCswjhRUGjKLAn8tj+mLbfLXmm95JH
	 aQTUJCrdowOpvyKzpVusuxFQ6P6NKxvUAWdHJ10hCBBGEsg+mQB9G+DkkzMz0Mr8ob
	 EXlgvyyoS+7vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F871C71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175000799358.9280.7293652114901384677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e08dcb31ff011341f6020fb4d98adc311f3d11a030669227c170c7c345f4d866
Date: Sun, 15 Jun 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750007993
