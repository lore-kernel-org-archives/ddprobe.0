Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2776C186287
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727533554; cv=none; b=YdKdYmMG/Se63fbBB3QnCfztjMV2nVAdOExVlyEEiGNlYDi9+x4P/MC2u5EvVYuDCE4cZAyhREd/Pl/48Vmv3BHayw++rZxCXZPQSoB3l6berdOgEQ4p7RT/qiklU1ESESodFv4LmWf6OxfkkiJigHw9ksTcwockS8QQ4slYvmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727533554; c=relaxed/simple;
	bh=ZsWerAVx+Yc6JwDacc3olpk+rMcHdl6eMrHAAi0Njww=;
	h=To:Subject:From:Message-Id:Date; b=up2lnRToSFCTZAvEZFmT5cCNMmhkUvDfMUGNeQTFnAHlK3XtMDyeOUYVlyu3y/gTAudSX06ryZDdHPqdagIMmISd3Y0VqhiiYHdj7aI142r3oEhDZBF0Ku52UyyjrIkb3F9rqEMo2CKfbOUqYWTrvC+4lkl0jC8EtAn3/jxdv/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vFFoF6Et; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFFoF6Et"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD6BC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727533553;
	bh=ZsWerAVx+Yc6JwDacc3olpk+rMcHdl6eMrHAAi0Njww=;
	h=To:Subject:From:Date:From;
	b=vFFoF6EtP/KYhVB0tVYcb0Ys9/pjU2ubmzmtH/FAwOPmuJn2D3uA5NeKEb0jzzbjM
	 JbWmT0ON8Sj6y8H/XYsV4CrTEgBFGb8RNWfmDE6C1AFfw6CfxaRLblwGnB/nqRNJz/
	 mR7aWbWCxc3qmvCTFzLlCPGtdGE2y/N8HnRrZfNGMS0PNmE1/N9iPuAk11zfsXEEi0
	 z6nA/D6s3leg3laG1sa7n1Odyj7aqX6Uqg7/pBlZwKyi80DbhN9ArwI+Dt/0E3a7dL
	 FSGGKUaOKK5Rc2BurZrLDjzQS3CFaccmPwdCQV+yc7Gb/oBmpuNZ4rs4AgSXRlz1Q6
	 ylNUfH5TicUCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB75CF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172753355362.15546.15164981862261018047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c069b4c7a8834cadaa73f64bf23e85d8d48ff853f261a9fce5cf76a82096b20
Date: Sat, 28 Sep 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727533553
