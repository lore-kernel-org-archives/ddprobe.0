Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D0B23BCFD
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759258194; cv=none; b=PwPfQa+gAWoXpkY2b0P2QKWV/IAYprFqRpJZiTNRViIJM027wsn/p9SpTdGS2VOMX7bxG/3AvDGEBtegsgEPFbxyW19z4ZieujgGBLlwT6KqCMWE7f5ylxmvfLpRqsH8/nhLqAI9Mu8Chnu/krpKlo5qFwMtwJPB3OpwpgVkV3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759258194; c=relaxed/simple;
	bh=gTDBYUlRakzfQU//HVo2oU4uh6DkaqKJwdo1tg51HzE=;
	h=To:Subject:From:Message-Id:Date; b=CNo0zgTG+1qB/eOEgi3DTiverejxLcurISqoL8pof6gkfJJGWZ4eOFzxTXYlw7aEOkOFsckVmwW+Sz9czI3Do8laQYXb4RwGpvpVRR5w6x9vvFYvWvqvkV9DAWO4xxztJdFpFWvq74QpTPK8A/H0DG5YCMNJ1QqbsXdFZp4Ir9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kcH3FfbB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kcH3FfbB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E85C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759258193;
	bh=gTDBYUlRakzfQU//HVo2oU4uh6DkaqKJwdo1tg51HzE=;
	h=To:Subject:From:Date:From;
	b=kcH3FfbBA9GyTdWUpv697DEx0vg5qHNFwq/iF1t6OQtHzpokeBrAXbicPRTM/+W7I
	 F6W2dJFhRyqVLy6XFp4e/s9b/8xwIOV+mpDyTLBOwiRodTR1K3arKr2qCX4IauSZyZ
	 gPx/T0vpfTJQQI+cI93CyLE4iQysiyiNCfKTehNjYxonco5g0mRPzDB8vA2tQPpWSt
	 NzmDVKhNWBzc+bZWKTpuXmC/jzVFcgMkXorhsXzxK1bqaPuV1MlzTVs7cAwPSjJLXU
	 LiH/bxv0/UpcoBLbGQv5gABhlYysPg0zLkrmtREm+CRSIDxCHiwvsAbwimMbhGc8X8
	 eBIih31O170nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD9FCCA470
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175925819358.14970.2993201677472510001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 444288a02f87391ea3a995740c9a2983eca7cf3968f19caa03369ad65d2ee92a
Date: Tue, 30 Sep 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759258193
