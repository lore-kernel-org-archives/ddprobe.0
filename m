Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DC674C14
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732113954; cv=none; b=V5riZbZE+N4Ofhkidw/coha44LKNEo/CwAqEtbPtercn6TGnkkSn91Las07eGE0Av8d5FkDyRJ6vQdfgThYYURhgobt6SyGP0wKQxAbBtcCGAJ3uyFgbJDHa3IdX4bDrZO6erEL12LQGyYLu1JK2Ok6X5w/jiOE8vx05qdNV+vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732113954; c=relaxed/simple;
	bh=cMboRIrWa3mizmxz4uKToncRIyAURzsn7YX+yavKeYk=;
	h=To:Subject:From:Message-Id:Date; b=pbJYUSp1SoGfdbR6jhTjVvvc6rc2e19veCDlPEmG21xz2lOOz6lRi0MrlB76hn2pkXhgP2bWGoeBOTSTY90TzjnkKbRKA60sXK1qTt1D05uiWOdpM2fZupWGjkiBN+rb4ElBKnvCd7YhCxNHs9JwhlGrGLHxcaqe2YYg8sUB/hU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QoF3uPZS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QoF3uPZS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83B4C4CECE
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732113953;
	bh=cMboRIrWa3mizmxz4uKToncRIyAURzsn7YX+yavKeYk=;
	h=To:Subject:From:Date:From;
	b=QoF3uPZSZ33a84ZIp0uTKHbLkbaY83pmUbvsObwsDMCYGBHXwHetsg0ddg0xaX/Vh
	 wl7TzC/W+obKMO5bxHPVQczIP7QKWsxqCOgnJJTccA9xb4islPZFIK/a9CNjPCO8Xd
	 j34Cjbz165bvNp8jf40YRro/6U4v/I47GLjCk2Ci+NjISO5q0Z+NF2Mf6gluFuPqAz
	 6k2w5NzQN5hFuw4m4VEgXmmp6OCmhsyQB/MxMhg+wiwumkE14W6Tj9WWjew8MnpO/2
	 uNCSqgpUerAS1c2+zck9JzxI3mkBGrXVL5PdCaUXouMOmGPRH4AY3AJLEIzN//24Sl
	 /r3TttGrTHllw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94786D6395F
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173211395359.28316.4305282665536822937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c58af79d8e1bdc8573cdee6b72156cea02966dd28c287f7e832544686db80b9
Date: Wed, 20 Nov 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732113953
