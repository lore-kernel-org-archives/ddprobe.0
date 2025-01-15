Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45EAC1E3DCC
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736928954; cv=none; b=jn/i0kWrpilZGDqYjXRrf1F7I8+iLGho75uJccnCu0CYsXKdBtE/WxijE6rQYhZz7k1TrM9zWO3KXIxuCz7Tpn1LBKYEG0B34q0f72xXIt7Cm5a14lK2mvy4oFCloJRTDR+np9+/kf2prPWd0xvJH6uZtBa2s3WGxPj0vHSxb3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736928954; c=relaxed/simple;
	bh=ESCJu358d9FsGWWBUKPcS8E+7vByURHrsjIR4rzRnEs=;
	h=To:Subject:From:Message-Id:Date; b=nbvJflm6T1m97X4wOOcjnO1gTLO2dG+oSppmm6jqCUwnd02xqDHGQOo7zjgvWN895gJ2galxCJB3KQJBALYJogRICEwCEAVwJQvvgUAtkxeikvX0cqY4XF+V/fnP6njKQql5lSW8SMO73fqM9pkgzo4q1ozN5VkEN/rR+dgiN2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nPlxwIHt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nPlxwIHt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0FC2C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736928953;
	bh=ESCJu358d9FsGWWBUKPcS8E+7vByURHrsjIR4rzRnEs=;
	h=To:Subject:From:Date:From;
	b=nPlxwIHth4QgzZ1FtyUAgpQ4O5cL6NHiAMSevWY7TtKMkbWnX+v6kT1ixOJDUB/JI
	 MoQv+MVGR2+SsqWMGEnAFL+/+6pVSq5WcDtdXE+SFYSfRyo0tQacA2YXI341sl4ivU
	 BWXjRhnapHZhC4FfyJfw50SlLnla68yDRa7oBfRY/ZJJTLHduuEKxtqjxHQkSulUut
	 ni3Wv1oRtVg3XT0p2a3I40DvQ7ZVrFxPZg/Ptz5/UUTbHr2uwgkZWIrTjXvlSLESNi
	 SXqTiAWGqLuHFXvOsO6KW91o2Fb4wkcUy3L1vndJ0TGvXr2no3IUZIhhX7pQ/P6Mhv
	 9gej1U1ZRHvgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A7EFC02183
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173692895362.18373.12027386402361049440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63c8ba577b2073036ac7ddb55fd992ebd5d4c0348a8970f8ec2374a86250ec04
Date: Wed, 15 Jan 2025 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736928953
