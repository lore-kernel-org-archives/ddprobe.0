Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AED213DDAE
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751143794; cv=none; b=kGtTBjVfxOJU3tP2G206S9ijq3L3pYqe2kzxNyK0dmgJ2ks//Sp9NBR6uv/RPi5P7Q6EVojn4/Hs92NqV1Jk6f0iw4c1N4cBvn6x3ccjckl15k+KZaI+mnU++V4Q/9gIAbCk+Un22+HtvMd0GC99a4KpOehtXtwjn5SPS+fjnyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751143794; c=relaxed/simple;
	bh=T5H+VQ9QSUu6WXSbJg+rij3uRjCOae4BVRfGMLFg+m8=;
	h=To:Subject:From:Message-Id:Date; b=ssFx4UE2+rtLTRRMQmLn3fNXfPjITJt43YcIh3g47mXsd7VPnkMmexuJ59Wytv4OnpVWAUi7y/amgQkeeKsTIFfR7YcdnPfGe+KCgMToMB9CZDQk5DJzXyP8iZlz/BiLADMHjWwp6kYxXqby3lmVCwfdsd/U/k8esmsQv6FC004=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BlCwxLan; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BlCwxLan"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98F6C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751143793;
	bh=T5H+VQ9QSUu6WXSbJg+rij3uRjCOae4BVRfGMLFg+m8=;
	h=To:Subject:From:Date:From;
	b=BlCwxLanixceYunfgl95PdObf6UfYGc6QbpX1Zh9InDtsBplDY7d9qHHBKiG3ygMN
	 6m5a8BAwGvtiMu2CzM73VoGXPPsXJE5qRNWAJMdN+9FG4RNDxKWvHi8lMdTn8NhA9k
	 djqrIAa/SEvET/v3Uirs4WghQZjk14DIHAP4haCx5XhoJ1pH3Uej3h9wgypJzrcW/H
	 2AKF02eeC2YZ7jc9z7gDHVKIvhURQGEwJ6kaDloFJA/rfFYEoxktZ3mSJiier9/htT
	 5iB7DV+rduMjbS4xwnx0Hlbl3+HqEeecKmlLMM7bAHVbah7gVRjCg1yOXBGWFg3rZV
	 wN7XUi2Bu3gVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9253DC54ED1
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175114379357.5102.11870400846605685408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15fe4558059ed870d39f192f0717e8b3dc4f7744d14aa72400eba34bfea70926
Date: Sat, 28 Jun 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751143793
