Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3532A1E7C3B
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745716194; cv=none; b=BArIwWkdXv94F8ft1CD/RqG2kpONoTzrFf5IW4hbnJTZjxhTivLkHoHAWk+3Lhg9X1yeCr+nt+MMsj0G9VCglsE6h4vY3BIBiV8iNKOawWWy5zJ/AzkioWiHkJqiBwRMS/23j/riwVNjRbLMZ2jdb63cdK7taFYklrlxHI70wog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745716194; c=relaxed/simple;
	bh=Sulpr7rCyGrERLrRT5OdFFkP/dPp6vv4qE9brH++1BE=;
	h=To:Subject:From:Message-Id:Date; b=pKZgQAoPOCyrLUL/KRvXdgHezucMe9JMMDO96NdTLqibg+oy7Zfdj/+EUpmQF4mmbjeUDNAej66AGYhiXY81Vf41y8McwGoZdDyck2EYgTdPrKM274BW1oSG7ntq2Na+guvYaRMyG3RkX1/2PwclZRrWb9OKYGTbFFepOrl/xfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SjKmweR5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SjKmweR5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D28CC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745716193;
	bh=Sulpr7rCyGrERLrRT5OdFFkP/dPp6vv4qE9brH++1BE=;
	h=To:Subject:From:Date:From;
	b=SjKmweR5FWxmTFk2AqspS98Rd15qhOfLUfrZ2F0Bnp7ssWhnnEyh6y/YTo5wDqrFN
	 8NzevygtcAwJkLGoG5lyKOZTuH+ku7kJeUaHpsSv966dhK7jyaz8g9h2FFHXEmO2PK
	 /Y9DokxyjmHUa5hGCA13gmnZbufX+p8HvcqsG0P26/CxvOgpc4ahJI9K6VTmMDZS9P
	 Ldo+jOLQgRoRYw2zWr5VR1vHQ4xmEsII144ujOQQuLDMPvJ5x+BvdPIk7MQbQ90KIa
	 vEbSfc2Ohju56kk4pDoEoYeVn8nxKOjF/GpAFlhJp5j9ISBYqorfMUZXv8EkbYtT5Q
	 1NzOjBAuGxv+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFD0C369CB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174571619357.12551.3379033410042083077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03cbdfabf2cf53d805524f5328c6ec675cdff9c5f0f4544de3202ae641f5de02
Date: Sun, 27 Apr 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745716193
