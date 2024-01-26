Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DE214008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706255297; cv=none; b=lD/kyZ2xHrk2/vDHK2HNPfqX8LEK+z1iWqYzvhjIvPq/+S1OS+BN2wiKFw4OoXz51IizkeIrfCqQSlvMjkVHHNXLHBjiZB0ijzch1ae5/1B412ddMjWfiW6LNhmk+HIEDJ8/Avzv/q669LkSfOgVDkHUhyESwDLhlC5l12iNc8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706255297; c=relaxed/simple;
	bh=WRcM2Y5kdhhfb2WTWqqOHkB8UShbbffFK9X9ckLEW48=;
	h=To:Subject:From:Message-Id:Date; b=h61NgqZ2ebcJCnOarGANuPPo+SuUSxQCzLr0vg6UiMWa1d5BT+UydgXmU4/jv0aG8cj64z1RabIfTF4J2bEwH874HLR44rYeoEsUyZLT8XwjPkpVfhp0Jhg/HMOVzqIw3gJVEIfsCNucMA69Pwa0mT7qKhxDCtmjdUTmdyEQMKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vlt71dWy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vlt71dWy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84C91C433F1
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706255296;
	bh=WRcM2Y5kdhhfb2WTWqqOHkB8UShbbffFK9X9ckLEW48=;
	h=To:Subject:From:Date:From;
	b=Vlt71dWym7FSl7H2jDjsO1pdKHO9cIBcQ+P5QBnqnTn4ouXCNdz06ovAQTBVo/JRL
	 tm6p6YVH0Spy9i0paDS141EHbiE+byA8lWP/3h3DX2MxcsEwmNCcRpt1Qzjjnl/kW5
	 ZxFQTAb/CRrE2EiaI6hPVoU7XuwXhQTlS5mLNnAVp9GcBMCUTMwQdxb9RpwaDEfSZd
	 +io6nJEr5/57lENBzTUPhR6Kug9NBs+twGehXfKp7kDYWhdMqafgUlHNGiWf5o64nn
	 v+nezyOq4epwfsFlfxIklsU+wW0o4fqUXDO5QQFeIyZOvpnNExP3/o8Me0KzglzypB
	 Fv7VAioJ58Ocg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AC61C47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170625529641.8409.6447132285726669191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a027dd55a2a37edf289b5962ab2352ac38f7eb64fbbab4c8fc8b471bba93afc0
Date: Fri, 26 Jan 2024 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706255296
