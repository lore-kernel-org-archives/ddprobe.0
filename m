Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38863372B57
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789201234; cv=none; b=a91swL0TAyKXDVTCIoyH2YJCFg3+2mVhI3vBkLqI3oeS5tWeAmhwpzbVdJBCabmMplwGAmVDOpKQEnDKAvFzlSWU5vVIjqo2SW98KvSc7cTLubltia6m/VOZhdNBfit/5r606a89zirOD2JeIv8RJPTArZqduDxwysyYr5MrJXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789201234; c=relaxed/simple;
	bh=N5b1boECQB+vca5bEX/zzexo1MGFAN7Zqha61r368OQ=;
	h=To:Subject:From:Message-Id:Date; b=IEZ8TLRkwKFK941XreQLNolY18XSuPtSdWi1kcxN3i9Y6RVHo9E9OeQXjQNj6c/+4clE6yGL9ZAt6WwdsiX3LtiydKyYTKtb+Hu/fyWe6+P+r9PpawoXX3DF+Ieqr9IXksl59qVKS/yhPT5tCEBYlU0gBkXTktJAY3w1FlP06fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mMqZ7A/d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mMqZ7A/d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1674C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789201233;
	bh=N5b1boECQB+vca5bEX/zzexo1MGFAN7Zqha61r368OQ=;
	h=To:Subject:From:Date:From;
	b=mMqZ7A/d9M1xI6ApZH4Rg2jvAoDWwvfdX1OxXhBsdL9aHhWzZ73I8Kp/+nKhtt9Hq
	 1/95O2qYVoFb1nqK5Pv5oyxcBGTngT5xo62ktCNhpsT0txSpJHpOxJBBq7q/L2p+Sg
	 PZdRjdrOE70HpyX0pCfsRo3PfTn+vABUmZYtKikLxZ5AHcUPXxVMzQBgdBMMLBH9/g
	 282JnGk8VtK/RPxi10Hvso7HXs7Kzz6SCpW9qoqnElUVmBfOZ7X1w2k50UL659Bz22
	 qe9RC6nhX3FptAaw/4n1YNokAR7kYFLTGRmP454vGHCNzOtqzhbQlzx9TDnPf67/SA
	 mA/MBqX3Lt9ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF48C88E53
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178920123368.22551.11194995509708609928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 978880f4422d7069e74ab3d8ea39c8ef3d80ac4201f988a5fcd4a9da696e6784
Date: Sat, 12 Sep 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789201233
