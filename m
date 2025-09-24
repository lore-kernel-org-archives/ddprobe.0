Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6081DE2A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758721795; cv=none; b=WzOX9STSPiDrtE9EPIvBuHvKCqTLU+DLlLf04P1Ly/PdWcvQlueWWO/KE5SbkL6yVSM1s1p8iLcjrUI4Kl7oD+m7cuOzsjJVFlNHhiI0fXDrvlk3dRZ6jVwVwdYLYW0JCzTjRf7+o3DUzShDaA/uSQkqJseJPf7d2gyIGAcIa4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758721795; c=relaxed/simple;
	bh=Q/DCzz9oeP5oUFt91nJvm6vQKt3O4Hh9Irkh0M7pNao=;
	h=To:Subject:From:Message-Id:Date; b=H+JSjyQLzdkaQZA7aWTXLxgAykXxLe9SG7wm2z5CBkkCwjWHwCmIChYjrUH9NXyrQ41K6mgD6wV+9XhomnzX/+wUuJ3W3IjKg4yJS9c1G+rJHP5T2/t4eFDYzPM2sB7gCS0n8lMP2PaoqzVVHG56zD/R/GXUi4gKoMiVlhej1Po=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qn3LpucS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qn3LpucS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DDFC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758721793;
	bh=Q/DCzz9oeP5oUFt91nJvm6vQKt3O4Hh9Irkh0M7pNao=;
	h=To:Subject:From:Date:From;
	b=qn3LpucSM+X7HuJvO4exS5vZQowaYtCbftKGAwA1s1ElUjQhToE2+zZHYcQb2/LAq
	 +pCQZwcvuuVgPBpGX+h/zce8kYDXRa3Ohzh9RFc2gsLXfyq0vSiIOnZDZ8JNKpg+rJ
	 nGnpoHxsjyZNs/bSt+GxN4D3gxHgiNqxXOSYAJazmj64204HRRYhknj1xvEWYEjtOz
	 T+Mv4T1jjqN87TlIsgjYRxtbmV5Y+AVVbKcsMmiK9LBq78igzs1nTa8S7naHtoPHbO
	 oKUQlc2JR3Xd9v8NffAbeCRG6yqi/kouOmyLU0BYtWvZuFYkl3q3Ujy180hYwcrOwS
	 fe2ZxhTQ8ZUFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90441CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175872179358.13914.833145503258231050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50e75ae782e4c3d75a93bf000f4e0128b666b678315cd8c1eba2c4f398df2ecf
Date: Wed, 24 Sep 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758721793
