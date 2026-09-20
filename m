Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4A2547048
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789942234; cv=none; b=WaQavG8vSzzwqVJafaKcNtVy6FWjzIC2TsuSCVil1A18DDx5WbOKrYYvoehzxmRhTRH8pu2dNKCtcVjAnXPZCBGaDn3pfl0g8UsIfSUCjCColl9IHfHufQgunFzIKm2kYdUo4uJhMxqCzlkGE7Se2NRrE0T2JM9uzIgGKkSK95Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789942234; c=relaxed/simple;
	bh=LUubikzmRidcgRJSj21iNHkCQhUiCUt5Qqgqj9wpsGE=;
	h=To:Subject:From:Message-Id:Date; b=Fy/M2jElUSQgshyo2qtwCNBYTfZjrfRksQjdhsYAJ/5RAK8GHvCase3ByafeJb7Zyl9cSiVMee5w80mnNV0WqSWcYVqS0AIPhs+ukZFZcRQ+QLvxOx7VdxbsPqnHvawQ80b/n0+tyreqQstG9XnnygRtJnZVzGR6svg5jFZZWBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hq8+sf2i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hq8+sf2i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAE31C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789942233;
	bh=LUubikzmRidcgRJSj21iNHkCQhUiCUt5Qqgqj9wpsGE=;
	h=To:Subject:From:Date:From;
	b=hq8+sf2ihLwlZSpAhKw28mwN8hWMxsatCMPAvoZdpBJ4O6bhsybumZVK8jQQOU2ED
	 ng4yhRpcxTJ/I6Fdmbhc4n9yEz7voMDAhHadgq7h4Pg17kGOo/4zx7I4niYpPe1uHs
	 aZsobV1TKNbnE6/I+/mbLYmy6Y/ZyjohQ0xlaeKN9RBkrMU3vgDJDGcr9G1x91UbiT
	 sxBd2G/xKRUQ4j2FZO8BM1pxmrwkkalMZ66HNqh10OUGOPa+Z1yL4CRKm7ItdHqCp5
	 Y5OF6TdZO9C/jlCKOaN2C3YGeH9bBg+EmCCFj4u8PTlgGCyr/10cVTYCs+fo7v+gAH
	 tRTy2n1jx0veA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA05DC982DA
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178994223368.22380.17765854955902712951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8396aea7e4862ef2f9aa6eb09fb41523e24b15656cb465dced40f46fb6c14d06
Date: Sun, 20 Sep 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789942233
