Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E19020C02C
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733333154; cv=none; b=JvZsXAPBt3bZz1o5n5k1BFSjLpOWG3y7Er7kzz53cePNMF2qQ2gekTRUWxoZM+HrPKBRcFY0wqtprTuF+Jd+qKNhVxXuczjjak6d+9aTGJnUth9/Z8oRp7wOERxIW6+K8/0Zh2c7r8VcDfGX8MtF+eHlmG0TO4SGE9LaEwF1CIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733333154; c=relaxed/simple;
	bh=CMtrFE9rgEKwW1OBarSRWSOhv+ugJq4L+X5YPjzXbcs=;
	h=To:Subject:From:Message-Id:Date; b=bacpZ5up7VGSQf4X7Q92cO/qcqTzt/j0eslqwHkc01gmmCsnPSHjCKuNWqx8tMSP3Kuf/ZSVqCkhmLGJiWh4t3Iygrxn3n+w9LRZjW7zwe16KlqvD7uBaKzbfueSiSeEuXSkerwBfcRGVLTUxLwnacbD5uDaZS/Sn9AJTtSueoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AiC5B34e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AiC5B34e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB17EC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733333153;
	bh=CMtrFE9rgEKwW1OBarSRWSOhv+ugJq4L+X5YPjzXbcs=;
	h=To:Subject:From:Date:From;
	b=AiC5B34ex5mJ71R6dabqK8zh7CKJ9WQ6XsPD5W1n6n7k8Bd/PxE1K/MKdbQUPm2Al
	 T6KsGZ7RPsFg0iWbUlI/7MG0WrSAiLdyPXG5Nz9X0Ih4BQA1zDarBulxdDdcCxzowT
	 vylr6Jeb6V3R6mNabwsyLu3FK1Xl4RLlMSHMFSwEVVUkz38NJefD6JlK/YQpwnIj/t
	 cnnhLakx5K8C1Q3IKjnlKSWqtWi+gdsZJK63dkyHzPLQQYzXtOKbISPzcCqpIuzXW0
	 NZ4CuOj4PoqQ5uBYNc1LNKa388s1OxW7Vx9iTU/nM9aMpidHiBopZT72yCfPNsYDy9
	 QCrD1tykcxZUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A407EE77170
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173333315365.21759.4368826256559849026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8f281fa78ce2bad34f24a9ce595adaae991e19887e0443f8b91be30c8ffa0dc
Date: Wed, 04 Dec 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733333153
