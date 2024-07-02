Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A54171BA
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 03:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719890123; cv=none; b=aJboxr+YmyDkz87iDewtnFPx2Ftt198BN0p4RNMyfE5DDOyXABJR4kyI4fJq0v3SlGjRugyKwDH+091QTfFIwlHy0f15A3OxpSM2sP78bxip1BdFWttElFLGLLNjED5mbLMrI3V1XepknXvaGbLe16Jiun26ffl1wDdZsCJpEEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719890123; c=relaxed/simple;
	bh=zp+10rrFIpNRihGWJ9EjIrPGfdtABm//odlR2YwwY/o=;
	h=To:Subject:From:Message-Id:Date; b=ETqXoqqova++c9ZV3OWRLTaUPRvvVRMfG2ioNGt8kg/ZG1Y/EVN3ULIseAYPcP93c6kncBEdFSrZEl40RXAcmehWVogi3yrTwEznROm3CsVRm3Poo1+G4sEqktHNPudf7zs7+2MlC/2BJtFAtE6oM4BQxDRo6b2GhwmLcKimOkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubLqA6gD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubLqA6gD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E1EC116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 03:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719890122;
	bh=zp+10rrFIpNRihGWJ9EjIrPGfdtABm//odlR2YwwY/o=;
	h=To:Subject:From:Date:From;
	b=ubLqA6gDkte12w0Fuc6rpc39MOcZhJ1BYMY91maJV6lNMRnpqkJzif4I8jGsyC6eC
	 qqYgOJrZSlyyELAC1LWKGopKL7YKIuJCcPtYUffepNmoX5K0eg/XKKFaw+W9BC2A7h
	 q5jmrqw4buflNgkYTzALh6Upl0cY0zLF/VMnzFYYZ4TLLn2FIsf5eKJUmQFsuA7nH8
	 +iNcyioDfj2p2cgGC33lGLYcQrNnEKbh2xy35EGLsf/XqEzaw5mHImUMx/7DXwuMtk
	 QVqwtbLfQ7zLovynlPR2DOZRw92LssNqNM4usjSzz/z4ogYZVwlfd76bj3ZpZL3wL7
	 3OKnc4QJkgupA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4710C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 03:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171989012276.15227.12194685370344741002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3193906b51ab9848f89d6b832554a780950ee6696e853ef0c044261bcf1adee0
Date: Tue, 02 Jul 2024 03:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719890122
