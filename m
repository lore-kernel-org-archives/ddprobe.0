Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0880F2905
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752125994; cv=none; b=NbBBa5HYap7PVk/OapeCK6KfDyL70YpgK7VGfAArOv2vKWzDzhjQoKUY2XyBsfynOfmLfNLnsYs5YD+6zvqVFELpPAwFLHDQ+veE8+ayPaUuueSuz0MJBJzpHucHHN4NbsvJ0KhnmRIURnUf8CCslR9OzjZv8wv11wK1pz3A6Pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752125994; c=relaxed/simple;
	bh=2SrqabxGMd1dqMbGv/6at5dXGN2NDVZjCrmlJCUXraU=;
	h=To:Subject:From:Message-Id:Date; b=sXv+UowlNKUO9hBcGW1wknKulNGUTTTzVMZstsopHV/UmnelzY3CJpwgIgqXKwDzwq0OooVdJYgEmqxJcnsx43SDaUV+VLiLR2daOV/ohlEd0PA5lRbpI79lCgdARM8QO3nNgnBI03JsBoZ4+ae9s7Gi9FG0lvNfV0VVVkQM29w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CcVnEFgf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CcVnEFgf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A087EC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752125993;
	bh=2SrqabxGMd1dqMbGv/6at5dXGN2NDVZjCrmlJCUXraU=;
	h=To:Subject:From:Date:From;
	b=CcVnEFgf89efUp8hgTMQ6qn2Hv4fFJl5xx64ZR9wIG/6tRf0kAnPCZ7BchgYXIPh0
	 CAoXDYKKkMNgqcgZou5zVQVDlKtMGK9I8IVELEvsgxvCFm5YG68d2Wuk814DstWS5U
	 AAiBA0/9YvbP/XCNfNVDuaC3fkgpq7dWvfODxu7Kbjne3FvNxHWsWajSQFJaSY6m2s
	 KZCrcYdVtccjDA/2J6mG/5z1W30YuTKXR/TOEKZYEy3HNFHLQ/gZdTNIt/WDSOenOT
	 xchKxzBXPXFrHLLrpC41jC50YYot+FagULHz7GFe8rYC8+dEvTcd4XhYWtJgas33Qz
	 3OCwjX03ZPzdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E597C83F09
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175212599357.8567.8847485244104382061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa021502b706fc8d37808f1c701d226455ae0b011d2d240fab5031ca132359b5
Date: Thu, 10 Jul 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752125993
