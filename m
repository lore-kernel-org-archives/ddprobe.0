Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5CE1B6CF2
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731410754; cv=none; b=HR6KU9nnZdhyhcIT/eSINJWNtkgZ9GJOhYA2RHVObrZe/oWQAo9LkSPftZ3H5d0NplKQDhZJbyUM3sZ8jDmlmcBvhpAKl6kMm9z85M8nm8mANORz8CQ6OUwfJw3Fl90Qd1KCw/aA9BTyBO3WvqOI8NZZETsG3LO6SXQmRGzo2Is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731410754; c=relaxed/simple;
	bh=m4ZNg02ajvBilCptCSrr0sPRht/2ojfOZX1/zkp0bO8=;
	h=To:Subject:From:Message-Id:Date; b=CGAfiJrzOEk4eyAL7Q3wJcURd/Gb2VP8VkFKEgDV98d5vCTLEnnx52gjCxzsflq0ZyXFHeoH+U9Glz09ROraJ3X5XY2vs7jll/Hd1PyEcB5Lo88nznqearfPTQqZ3gbLGqKEZGX6rCbGwYANjG6QH/JQwX8p2Vp/ACe4Ac1G1Kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NMhbK0TC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NMhbK0TC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29FDC4CED0
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731410753;
	bh=m4ZNg02ajvBilCptCSrr0sPRht/2ojfOZX1/zkp0bO8=;
	h=To:Subject:From:Date:From;
	b=NMhbK0TCif8umlSDmYRy6z6Qr8cOo/I6UDtmwLK3m7/DvpAmVwSTEM6M3+9uig+wu
	 8Y2J42u2HrxHdUv4clqmaIIs9zDz1Vqjr3tQabbaSTKNBjAiyq3eauxA39t9DHMR7s
	 A3/Z661lLvGaCFQd4TcBgDP7CbsPd2sU4ikM8RbffoxtVXZFVI3ouDDzSc42o/Rvcj
	 nBsERY3Tji1/wYeT6faL4GTmkdLbhZR8ii3PjSPaQPHJEizbo5alD/RMcfElysp3UT
	 Y2kcLW7GUlUujoFWg/ORKaZA69wwDB8KlYFdr1Lfk6SCUZ9ALSdT3ZSHJUO0yRFlOd
	 wmplzSlSpvuXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92227D32D94
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173141075358.3797.10638658033308285576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17020e9cec62b35c2c565536810db12a3a8ade9b5bec721ac2f440a78c2dcf1a
Date: Tue, 12 Nov 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731410753
