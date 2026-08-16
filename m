Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51D6D222590
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786849234; cv=none; b=eM8Ads+ubUM7Ju75R7ZkeTcLJGnwFB+7PjAevAsLV8atZpfxmU6VjlC2H4ALIWn6MDlY8W2ppM9fmBXRiA7qRuFpxlHR1o3Ex4SLP6BEd1ZTWa8bjtW1rIR2YSOsdreigre3W4gmR31FKooTTA4e/J+d7awsRQ1bzulFGrqeBWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786849234; c=relaxed/simple;
	bh=RYvypOd2lEF5R+fQkC9d8iAVmiif7PrmCFoXhqY07hg=;
	h=To:Subject:From:Message-Id:Date; b=lp8y7VXucWeXgwnOLrElY6Rs67sUB6+n0UYvtNbpofl/cSUn4WpyQbUjWJ+txuJnBMUg9NbECwUYw/au7H60dMhfmVAK9QPdiWrxw3wtnfLzxvFzf7dljsiAJYn4wST9yfzfEDoHm1emGLGanDwneI+RUDkT0ZsA7cf+CSq34Co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6HiMMj7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6HiMMj7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D477EC19425
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786849233;
	bh=RYvypOd2lEF5R+fQkC9d8iAVmiif7PrmCFoXhqY07hg=;
	h=To:Subject:From:Date:From;
	b=I6HiMMj78m+7wRVJh1ThQEc5Gm/jrq3mfOJ7vbpJHOjE7Y4WIzrr+F58itZflAwV0
	 yjWUC1Hf2Rf595KKx27aq2kE8Ry2vK+ZId4IIc4nPFe4ZOuwhvpyQUSbZjBM2HKDwB
	 JUc4psa1+QFzs6HMJne7S7wU9hvZyQyXtL5dhY+hgTTCZcc4aTiii8cjK3iaJNavvx
	 1B78qCOKDDqS8HTesxG8IkldxrWMmFrrlkJ/hOcgX3sMtg2Jhs9vgF2DPtix494wIt
	 9An5syyVWavgVcLYUQ9DDaB9jfDev9MJnbU/jYS6Zx5qMoQ9OkbOUvS8wizac84/Vg
	 h7PLSJ/iUFcVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E87C5DF67
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178684923368.29928.10045504813915062746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7707b2ec4855f67e9bd66aaf5b6f89ff076dbb2f2f7be6a13ca9f10ad8ff170b
Date: Sun, 16 Aug 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786849233
