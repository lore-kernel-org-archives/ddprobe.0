Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90ED913DDA7
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 11:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719833663; cv=none; b=JzhpfR9fBWu7RhqkXe1qZrIgZ/dQK7kN5HSZFiUsFH+X/aXRKRGFg6coqdt5Ev3iC9AKkkXwi49oF++7ieDqJKiZM83aQLVNhs2+CBc2p+ciZUAAC951R8EA3KLDSd4w1Y+bAmKb+OfMl70tYxR85aYAjjbCXKZj3vPmBKnLBbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719833663; c=relaxed/simple;
	bh=6wWaUoR9q0fOrnOg56LJ9vFGIdL95o098ILuJBm4/fI=;
	h=To:Subject:From:Message-Id:Date; b=jIBDWuKI+Jst2YqqN6gYhG+w48TSqcjVtMXVypb5bQ6f3vwALLE2lvSG7xLl1fFgolM1IXcYQc4QmGoMvO6zx5utP1DP02F3sOqDleinNcnxy8w4vlIqArNcFENzdsfJ6TiG8vaCmT5j0mvmRGvFCCoUSyGc3RVmfL25hpDZmqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RwD+y+Ub; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RwD+y+Ub"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 33B01C32786
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 11:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719833663;
	bh=6wWaUoR9q0fOrnOg56LJ9vFGIdL95o098ILuJBm4/fI=;
	h=To:Subject:From:Date:From;
	b=RwD+y+UbpwpbBH4LKCP4mrz9lMatUOMSk/d6GfOh9PZ93pnWsjpwBEdz9/tbuYX4I
	 q05WGR1FDKkXydNCRAldiudwl78HfWXRc98rlq2Jp810JIfPofEKos3hefFQEIFXVF
	 Y+1g4RDFW12q+X2u7i1vKQu1IkhgHUD3PvJ2aVuZKjbhfguF45VnykAyU2J/W58Evg
	 S7+DcM8ZRugUT9PUK432dTt2igFBb3MNwMSQOaH0U9CpJp/CFN8vnHUgHlnEkbvcb0
	 AUH4E3eqBs1cPX7HJrmbgzrhFV7Wpaj5H2CDOC1LPj4RpotiURfc1C3EihikPuqszL
	 luaHLU9zNTrVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 195BAC30653
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 11:34:23 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171983366305.14697.4490695931115494486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 668c425ce89601975bdc78e1a0396dc5bb7e16fed223a25a8e8a268dc04a6ec1
Date: Mon, 01 Jul 2024 11:34:23 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719833663
