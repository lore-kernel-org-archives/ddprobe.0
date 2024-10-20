Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D795B674
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729431354; cv=none; b=E31SL9EtLFLmt6jQzmhJxI1Y8ItkFpfatX/+CiF8JWCa24SPHcO3Dp6XFhYlNupTGPIk0sY08NdOquSna2v9dhBWRRMSVFkT5FVighC0CQaAtrJzk+fQRdvilDSyB9vwCWGxfgU+lw0jTQV3x6RKHT3c1h/gyLC1uDlgwH+7n8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729431354; c=relaxed/simple;
	bh=pkTalWBMn8enWarsKDcweXfADjcCTa2Kj8wlTO1tjss=;
	h=To:Subject:From:Message-Id:Date; b=otd/WS/oKZh7TYzmRQ9z+5zTPycyvMi6WfyrtqG+MbgpzL/zbwtoHDPaT4poLCUOufNT0BJI0xlylY0ouu9RAeMSOqcqvryvdUngfOgNmw9mk1UqZ/8R+uuepokvfZXn5t8ccc+c/43sgoAKOrFALo6fFQjE41k6WFxV5yny9yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rM0pYjK5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rM0pYjK5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA84C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729431353;
	bh=pkTalWBMn8enWarsKDcweXfADjcCTa2Kj8wlTO1tjss=;
	h=To:Subject:From:Date:From;
	b=rM0pYjK50pWqn8GaIQ7pQDZqdemtrSwzqTHFryeGS/qJQvOJ5RmOm9cdA4zpivMvG
	 0UcJAkKa+bQI7mxZgpQkC6SojqAcs8F9dD/4FapUwYRzsOAPemXa/f6rqBqb33SSd/
	 6q3V2Ttnx9JzfBSn6AEWsgIqrllfMAv85jW4HKqnoEcJsWqY/ktWzUyHva4Os1lwMm
	 n/RINflVLr8IJkuEeqM/ILJ9kuCnrpLuTXVYbA/rlj6drHZAURNKxD/dDMsnyW1jqe
	 ped2+E+zmfaEx3CTANkHthYckvVB+SerIxNImgwizM9BIRt4x/qTyWAXc7HvnSn6j6
	 JGoFRtpUJewIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F3DD3C92D
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172943135359.17443.14340475878209906697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd39717a41b048ab59b73a25b45274f9fdbea23f40514674f91bfc55ee5dde68
Date: Sun, 20 Oct 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729431353
