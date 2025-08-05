Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37207A41
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754356794; cv=none; b=Flkj2tRm8+Kd0bQI5F6kvDRu3BeceCII0TZ3CR7ofa3/nf/x+9028SWwomwJzYSQ3bWFKFUdmXTDeJVamOg3iq51Awir0bNx1MqM6SA4zZRSNT6BvfBOQcS28MQnFzyeP61DKBlGu6Jrs1OUPFjpIq9XBctmLAKXpL3TLfsHVJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754356794; c=relaxed/simple;
	bh=jOVWi+Oxe3FGepxYVSV02bJZVSq6x4oa+uL6UK4LURk=;
	h=To:Subject:From:Message-Id:Date; b=QZGExj/SL1QVz7cN++yfALhjXQvvdCbTJbp6s+h+glr/ZWNGD3Kc5b0ilhWk4egdBYK54en7r59lB7Gvqx7fMSPhAWhejlVpXt4usoO+40X9MijIykAn+hIUee+qS7+p/zzox/k1FjBM0UfYodLY70AJZbroT5P80WM+KTM0sQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ASij1oaU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ASij1oaU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5887C4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754356793;
	bh=jOVWi+Oxe3FGepxYVSV02bJZVSq6x4oa+uL6UK4LURk=;
	h=To:Subject:From:Date:From;
	b=ASij1oaUfFryoAUOcpI3VmqmDDbvqeHg2U/S/u1KkSfe/LDFaynpi+yfA0hS94rfH
	 j9s+1LcQQ0qpmkiPIuaaVT1a2g7ysDkVfpuFOvyyk0QEIiXfihcZGCUwNMnv4v1UNX
	 uwubmZ55o1HBTqYs/S23FMkx0KUdWxuMXB4d+SyCPB5EG75LhudNfQV3EqkUk4UICC
	 p4itbg/Q/0ut7rijDKwdCOGNJ+71mQyDAuvXRl6wlPw+Op+LKoJE2ADggTLyRclUMG
	 eu/5aNzmM7zBkzpce3PZwX/sXmoMXJdy9hXWp7MKNHEO37xP4SVvHz96W0bQXmBxF4
	 TSzKaA7MQbbqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9374FC87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175435679358.19348.8669372039505144334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70c4a9b39bfef6603acc4e64e5a5ac11b67bf2eda15bdd5d156ed181104c9327
Date: Tue, 05 Aug 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754356793
