Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3381EDA3C
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751101794; cv=none; b=Evg7+hB+XbEtzzTvWT9N24ZHGe3HS7/JQa+mgWnRjhCdh4ViquL+5Xb44TYBdIkx/2P1dPahbBc/II16P5N5cF1GdqkKaJM9UP2i37/8X59NW7NRuW+VHC9EJL9xOsYZuGfQW7dftvqG9N7ez5rHfjogC0w8sGkuhzi4ImBdrd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751101794; c=relaxed/simple;
	bh=Hp1CpukxVZt+p2TyeZnr56YYRkhydeJqCc2Os7niyOo=;
	h=To:Subject:From:Message-Id:Date; b=KXPBmBcY/fs+Vl1sVdfES00nqfT2bdkcEBCuCiDTRMHOmQ5RNq4t+/smFsukjwVyaJVUZtd7vJShRfijs9B5UmTnUHldhTO3GSF3lZt2EIcQMb3fyzItlf66ougrgfSMi4pFHKeWpJLMT84/F5fdIp3U/siOjIIKZdMxVFAXzvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZQPPER6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZQPPER6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7461C4CEEE
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751101793;
	bh=Hp1CpukxVZt+p2TyeZnr56YYRkhydeJqCc2Os7niyOo=;
	h=To:Subject:From:Date:From;
	b=lZQPPER6+3e2Tu4BW8IBW7tWSi+0cB9afps9liDQM0QpJjbbmqZYBNhL+ITstEYg1
	 +nQYl4t2inEK2C/UGe+MtQstdMvYJx7bXdBo43kBbCNgCaNCZSJiF3pxbydWm5p5ic
	 jtSp/oeaS3D6TTVSnpPUciv7sCZ+LH9xGN+7OJVJifaPB76G2R1u4zn1sOr3UeEcK0
	 CpfmJmZXwYxly2bC8KOCZxR6LqiINf0JVW50NvLC6eZeg6I7UtoUdUJXryB7yZpxsx
	 lLC8PvRwXash595UpiSTG/+zR4DgDhddk119q/OWtgRQMPInKRcdya/wuBqgEtHbqJ
	 tbBlbhJK3ahsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BDCC7EE32
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175110179358.29529.4667724971668659433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9685ab8f149a6f55b20ff6175147525d5c9fe276c475366d1b45470da02bde9e
Date: Sat, 28 Jun 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751101793
