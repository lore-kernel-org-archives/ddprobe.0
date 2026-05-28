Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04797372067
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 08:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779957154; cv=none; b=Ajj7nPbfus/bEdsU2z/d4JS6oOGMZKC0TDO20KQ7MB+c8M0SSeXtmiikYlEkUKECfMv5uavgfdAoHmbe/WL9T9u2un4n2XXkCt+jd19m9OHKSpSJrwQuG15InFXTz1aXthUv2ow6yv/Ya0v/VIh1tI6RB4/YdwI7vN+LYgAE0Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779957154; c=relaxed/simple;
	bh=Q2YWlSKTBiuZR9khfD7auU1Y62NgGPXcKaw1WXsicms=;
	h=To:Subject:From:Message-Id:Date; b=FOVIBgUXd6e9aY5C6KLKThwDGuzvynnpnYtA613lH35QvvLWwbNYayz5sknW8w33KjPmLUwIcHAPQtKoRnPI/zcm1ckvDCh4F4dMJqBf4iFj25PXsxn7wmBMac1/yEiJoZLuvFJRajBEVvqp1vIqGwxpFAcEAfUUsFsoPxnEZro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iDZhX30a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iDZhX30a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4809C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 08:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779957153;
	bh=Q2YWlSKTBiuZR9khfD7auU1Y62NgGPXcKaw1WXsicms=;
	h=To:Subject:From:Date:From;
	b=iDZhX30agcMT+FeLZusvDsqoTsW5TRlJ4RlFlJCpYuuAdyuGaXFt9WNpxo8graEp9
	 kKM0qJRGvp2oeC/zOtmRRiYPaSQt0s50vFlhpWox9mT4V3AK2hiskIH0BHXiK5RvWJ
	 fHkem86fAMZOK4upqbWXP66B76B/chG08BuW12IvwHQQaLFtN8mJv1jo9mMIrWPBGU
	 o6odcLBcggOM2EKDm5tPtpQNtPc8NV4v/cynHNw9LQZuabOzGl1zLTTwlFwUHBycZs
	 a1ndr93ncM+IAR4T0WlZ6LT7K24ggdOUhddhVYZ2YLXOisRmDGRboL5m0QmThtoK77
	 EbEEEQQMsxNtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7D4CD5BD5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 08:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177995715370.28190.15859417684323905081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d8a2201a899fbaaf7490ac976fcbb8908216bad4cd0f62f8cfb0dedbcc013a6
Date: Thu, 28 May 2026 08:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779957153
