Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD43130E58
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727297754; cv=none; b=SWpuitqdFVgrg81ykK4Iu9epuXGLu8S16+OZTZrtHkppWzgCKSFtb17Y6J2kBHzZ54FIshF6dc1rcupaYhEDZoQC6/WJ+6Fryy0PTJaejrnkXPPPBS52+0LJqW2Nrc1E745LeXuOZ0tFKb4lDqgwCtb+BO3TgRpLlzG73HwTVms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727297754; c=relaxed/simple;
	bh=TPiq9Py13rpMjzJgmGpT0bV5NhRf2Pkgx0ysVHQrGdg=;
	h=To:Subject:From:Message-Id:Date; b=uGaspnGMZCQQEbBKUByubYUplHUTjQt3kRR9UtViPd4N/FJFRYkYGv2GXEMOv7DhVERpsZH0bWgnwZRUcdfDao0FKPWRN1ziVAUx99eaLPax2nUChRC1qcccDukdapC/WTh+/l0qEGijsyjttHfuQMhpGl0rCfhCwxBbges7aeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bNRzGwHk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bNRzGwHk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3ED0C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727297753;
	bh=TPiq9Py13rpMjzJgmGpT0bV5NhRf2Pkgx0ysVHQrGdg=;
	h=To:Subject:From:Date:From;
	b=bNRzGwHk6Ig5D2DlPHGvUeHEPH5bhiOLDNQy5tR8a1DTroqrpnyPpeILHCeaweC2F
	 GWR+HiIrHyzMGrZoh9p9lkUZdkavEOMErVXUdE34tO2LCv8sDGjsPKPXIRIjWRRYwT
	 vT6FYCiE71dv3h8mp9rc+Nk+B66FiGdS26/LxnxVDGTd5x/8wPND0ZezKI85rj49uS
	 uS3fhu0g5kSaL+RTrudrI4Ojkm4UlQtdZBu1oVU0B2i0inko/1rvu867V18lUhcHpF
	 E/Y+bx6X573Yn0CNIYW06FR3l/u0MTSf9471MKkkoTCPtRYT7XujXUbkJoiwYgTQFr
	 ZNzdtSYX//Yvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9159FCCF9F6
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172729775357.14292.2796941062193082917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0345d570694556ac4250ebf2d90636a839b3e3f0910be9e273893e3abe13f0b
Date: Wed, 25 Sep 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727297753
