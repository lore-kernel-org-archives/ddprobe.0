Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E481422C7
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 09:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714987343; cv=none; b=jDSRuiawXmKVQ3RWQXH0ZgBTDsL+xORShJoK0Jqh7qGSEYcA+7Q42jc7id8b6G8qki63AfSU94InofzPW1oGSx6KX7BOEGeo2kcRI4+0bipKAZVz9Wu8uTG6QkGQjVCo5lICfPg0GS2K4yMxXtvsaLD2WC5Nhf+wnWDSsb5ayuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714987343; c=relaxed/simple;
	bh=Ioju7QprX5B1cyPQufQo84E2oqR08IQfJlL9EPjiDYc=;
	h=To:Subject:From:Message-Id:Date; b=hvKOC1dh7WXhFaQPf2/T37GAmL/DR0tre3DyO9Rq/nmX0mkCyjDC8gRfbC+r74DMj5DBL3nb8XRK44MbEXSQ3lhccNjFOD0hQhiqOjBYXVuh51xpN96k5TskhbMPNNCrak0zqoDcdmznppn1z/qTcLmVMqFm1Mr3IKYTD9cE7kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hMgevrvo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hMgevrvo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE94CC116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 09:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714987342;
	bh=Ioju7QprX5B1cyPQufQo84E2oqR08IQfJlL9EPjiDYc=;
	h=To:Subject:From:Date:From;
	b=hMgevrvoJqYPmVYVaQQkX0e8AFBePa3Jp7mjgX7GyFop2IhlbKYxKPJoClTscbDMT
	 2EymtqzfFoZuyquOzcIHNyCmyCLqvn0xIfmSZg7O66O+te7jL29YEuebXjGOpiowLn
	 nuFWGcOKLF4BQGqgbFQ2EAfN9tc0RzX8dDcOuPz2Y9zd9ZxyM4pr8WOtwVk2CfE957
	 QwE5Wf6Zm/sirycAEgSJazVfQBOOtvNKRxLYo6wgSwunvRxLrZ9+vfz2XnuFWTmkcj
	 M5+MIvDBl4Qltk2uZobTFHsXvSmCetFLTOEHAh2ZTwEkn65NRhAmutEWYVmK7uck45
	 2ZSOVQZCilfWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA163C25B5C
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 09:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171498734275.26032.11873272555535443775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96cdc6bd28e98763ef820dfa15530fd544836be730e1a175a9866537527f3bae
Date: Mon, 06 May 2024 09:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714987342
