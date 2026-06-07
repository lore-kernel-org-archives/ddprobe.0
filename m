Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F972D3ECF
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 16:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780851274; cv=none; b=ZDdOFZ6/zSybDGqBWeVAv2wFV5nn34BaUX7lIyggGw2w6lcGiM4On57+H28cU6gL2ngQzraTkHLI+HRx9Cw4x1tX/FpAgh6E3kwfSadderzAzXk0n5yxalInUTmghFen3n648lyOj7uZ4PXfjwpuktqVrTrKBE7mW0y1egr+hkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780851274; c=relaxed/simple;
	bh=maj8ADXj68IoxFpMU9s8YMkfO7OELrw039ynDqHwLwY=;
	h=To:Subject:From:Message-Id:Date; b=bn4K6vvhMyp8w8vL+8JswhkFGvXafomUnwut6SpXkYxb90gro8wNratNtLnNHPcYGsDHkrjZ1T0rl/oB1qPf9Uo1xuZZ8HImTq99TEKmI8v9sPuCZ9QbJs5Vw9gt67rUlBMsDlEHcm4Avy/Somb5r8T4FL7Wmu7mz/1oabZFbfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHazRA7w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHazRA7w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B65BDC2BCC7
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 16:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780851273;
	bh=maj8ADXj68IoxFpMU9s8YMkfO7OELrw039ynDqHwLwY=;
	h=To:Subject:From:Date:From;
	b=YHazRA7w1OP4HKoau1a6vH+Mmmd08bKhR+vTInbxmarafpqYPR1nfu0lLSFQWAKyi
	 kANmCwsT1dlawRbRpWAj84Msj8VvySeDbwoafwbMQotnesxAAu4oS7tvtedEuBgkwu
	 QDI37RuA38JwTEK5S24nA7G4e1fDpJz+Z+dKv9izaIZ1E916CfvPmaow3Md6vNmh7i
	 que0rVe31VyrqdYz7UEgnGPAz7DpsXr6/Sao/1rCZwXCUmN8mlEA7LJXrvSlTI4zNi
	 ZQtL3dHbmCQvXn32JIQr4P41/YyWh4/Wc9JClLLdDO8109Ii2q2+IHYgC3OINjMkwE
	 bGc07Bho+UBxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EC8CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 16:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178085127368.29654.16781576223279913670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07e1af2523cd1a8e3d82dd8cdb7148046835cfd4425b295dc1360a50671e7d3c
Date: Sun, 07 Jun 2026 16:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780851273
