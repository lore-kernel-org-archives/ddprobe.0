Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 144191B5827
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722435954; cv=none; b=SU0Gw3ouXUUPC9Lw22G9tNwQdOQi9OLvROai6lcgwRqWvdTdW2ygpkmC84dLgCNinNkziLloSR06xBoE/pe9RxaLMPVXl9nKQcVsoKkBhRdZ3cQXX/2/LCbRcZ6x5PBNFTBKwg3TcJS92eYK1b5v4brt8XzKINl9BKIRCA8kLwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722435954; c=relaxed/simple;
	bh=GhQSUriQ45FHM7cI/g/UFkhtx/GQDn9NWahLSjeXb3I=;
	h=To:Subject:From:Message-Id:Date; b=J03qj28/vZEsgELVCgai4t7R8iRGGSa7fIneD4u3hJr6RjByU4AoeQ1TVQOaudOSsnY8/JNn4yhJvimeNjSgTuwFoWoLGskhTMvchdgZkn1OvdLbxeOoat4DmeUxWU1r7wbBHCB/GlOQOZdLQkhQ2i5c+XCjGBxGlpEf4wRhj0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R99rtk2B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R99rtk2B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A76C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722435953;
	bh=GhQSUriQ45FHM7cI/g/UFkhtx/GQDn9NWahLSjeXb3I=;
	h=To:Subject:From:Date:From;
	b=R99rtk2B1202wJcRw5ZFkzifp2w7c5Bslc6DoJPAHyP/V6b89yeWbWWC2dUOYrI+V
	 xPw7fKOc2BLUZ7YRHZNezE1nTlhOh2pNp6YecVJ7l4HD9jzRrJ1kn+BJLso0oaModM
	 DXmrZvaNbO79/ze7BJctskDaSS7H8nhXgxVbg4K3n1fLAmhmrn6cLP79ZE5IA+W/KY
	 O2x3xrh50gUkl57kG5eEFyifmIRSah0ffgCke7jm5AqCsEBzXYEGkeaYMqVSCV4/IF
	 HvQ2mxo7BmZpHYaLK6chJRVV3FmGIUke2gNEHFDAYN64TKT2RV6wUAmQS/+I7bXSqM
	 C8jHsMucztN7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 968F7C3DA64
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172243595360.26387.15756866184953297860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bf86225d229e37f2f12f8ce687cd0435fb869dd1562e6dd2c31cadb7ba0582a
Date: Wed, 31 Jul 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722435953
