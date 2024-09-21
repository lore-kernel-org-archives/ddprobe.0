Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E13A47
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726929354; cv=none; b=XAKvjL49mRPIOSXuFvhqTtlGHOZANomxu+4j9BfcAhUz67hkJsRY9w06atUEAekpJgRW1SL5xlYH9ckvdxGsj30AYlfzwwho23Wqqfjhl1baoZ/64w/Zo0tb3rItupUjia2+QkUx/4I4cGHNmK7EKopz7cVYq943RiTA6q2MikA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726929354; c=relaxed/simple;
	bh=K/PBrixFGbAJgPuai1FvO7GCNN61n1OFxHhsCcwBBmM=;
	h=To:Subject:From:Message-Id:Date; b=Ubs85Up5KI09R9pbNd9nMLcBPpf/VI90usJZb+3hJOXjvYOoCD9td+oWX4kX4uiGJE6lZVCtMUbw1c8krsJmPJFL2QGx+GaX9BxEp1fDvvvhI6kkaVVjGrCAQyK3rEIDh77/tV7qpLaGLZGAFlEb2n0cB7+EPNnjoNUnspjzv2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHsgqMRc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHsgqMRc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF12C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726929353;
	bh=K/PBrixFGbAJgPuai1FvO7GCNN61n1OFxHhsCcwBBmM=;
	h=To:Subject:From:Date:From;
	b=IHsgqMRcRPAEgFV6XodEi29S9zlEuwOvyrABAe//XvoNErA8ADU3hIN8KxcaXQ5R6
	 swBHl+Hkt6RAbsfwXLxYK4dX4vquWkU1uOfCyhr/rQr8kWgJqF26/9prb+7/E/ny6f
	 qyQS9jEa9aDc707L4qyAs7pNMHgm8stTKyESWAOrW+VsppRArEgoucfKzCPcFx9vdL
	 79k2q0k/5tt44k4uIcQv/0Hqs1T4GA1yS/0X6m3H4FnAGFSQKcroRvR+OqYoSc5KIa
	 b38l0FNG/7IkSHN1vV9NDkTFQs8DKTKn6ALVH5xia5Vgc3Iy/RbFoEgxenQ0DVtBwA
	 4IzQByo1V+svA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E18CF9C69
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172692935360.1440.9633876298719485830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff2cc5dfcc1c8a8bdc950c65b52f1d2fa5ec1bf58aad8b08f93b3bc2c7bdac2a
Date: Sat, 21 Sep 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726929353
