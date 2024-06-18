Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A88D46426
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 18:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718737163; cv=none; b=BTgdnTNvYDtES0IcwArOqMm37ywVus9T2VF8VOsyf5yr5j9IBKsjWSXW+DtigBFMpXQenQzqQX/oW5EbSocwTz877W6bfQ0J7ju8rtvpkrjNydYNzY+pGzsIHlSKAhL20SphO5GClvBTRLaNOmSR1r7WmP9q69qqOPBu9M4BQIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718737163; c=relaxed/simple;
	bh=87/DiRm+9BAXNlmyxIhnHP8bW23ldWi0OFerpLMd+2o=;
	h=To:Subject:From:Message-Id:Date; b=b/NqugfkironrIvYNNHmsW2z9W2ZgvNHDCxkVCX8ZnXyB6NRtfZ55RewZWBJyVZOaNSiyp4YIm+wEWbGbUWqYUCdaXiI9dACxJ5rooz4IN3lQRsybY3oQEPvbAd1La/UvGqjI4Rm2vkV1S8M4rHwvwkOKUKVeSqR+Z1F5SnEv+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HH8rCCBz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HH8rCCBz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8A38C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 18:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718737162;
	bh=87/DiRm+9BAXNlmyxIhnHP8bW23ldWi0OFerpLMd+2o=;
	h=To:Subject:From:Date:From;
	b=HH8rCCBz5mkuXVM5uz28fwxQJTVRGVi9XKbIF0kOeCvHCALJ12QR+xlbXeX2LrgUE
	 ijOzZtxufqHGpRYuVt4RO+rOdKMKc5nvEAGGJ5T9ztW4BEOL8bLJL3hs9EKHgKujjK
	 zDBWEtfJqOTz8u1jXAWdH0Aou6S4t5OmWNFelqZcGWRaiAEmK/ANpaMx4Pweb7ExgK
	 tJ6MXIS/OMtU4EvBq+IxUbugX+ZF+RsX2kznVFJbNkP1HowQkm7L5J5tFJK/LJZfQ8
	 O0CzPHxk3zhF6jpN7kRdPAxRqlzwnRapbxzj0oKnB1y3CsZv5JFADM9ZgmYwH371io
	 I5o/pVHziVk8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C661FC2BA15
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 18:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171873716279.4322.3274276670204614644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fbd91e41393289cd1a026ba9464e74f02c39949b9a692f69896bd0fb81b57c9
Date: Tue, 18 Jun 2024 18:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718737162
