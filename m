Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3054B32E74D
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761049794; cv=none; b=jrXv5CMdTHE4sGZM2iGbpBTQwAlIms7ukhOow03/60MmOqvraAV3+AhhYm+GPLRTLExwPD9ut0gmsBQtZOb76Wx+J6BFFWKHX9Z2T6zKPlE5rvafaEBRAnNDZOseLoglMeLz1LSdv/zGZzp0OP+FOLzZmjKWHpjo/FFaOk2SUVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761049794; c=relaxed/simple;
	bh=PskBXqpH+Cu8W4GFvEftLk0K6g8gdomnrUz7cnLEbSw=;
	h=To:Subject:From:Message-Id:Date; b=lt6yaQM9wOrj21mimRUxrzjItP/easSzANU9lQVHiG2Rg2DJrARuSFW5xUYf36InZh7E89PRUhhK3/MZaglt/UmbkQpNzVJn7HmaFZN40/Uc7Kz5jMDVcLwJatMruuhn7lTqEDWUKvDFwYAinxOQWP/CgNX297yiO3mC2XnDQ7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lT2g6Xt2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lT2g6Xt2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B656EC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761049793;
	bh=PskBXqpH+Cu8W4GFvEftLk0K6g8gdomnrUz7cnLEbSw=;
	h=To:Subject:From:Date:From;
	b=lT2g6Xt2IBv4c0FfmC//P83RbTWfS6Y7DQ3kakd26iVG/MJeX5WLQiPBSFKOAhGHV
	 VOy4sKOZBujGAPsLNeEMzD5jXubMTgsQTkGPxlVDD+C7WFh2uzrGV66I8D+uMliNIn
	 a3oKmXkAuqGipLwx60xJQ5QCqIlO9a64VfMJe8NQ8T3nGsbyfTRyezAwzzKBdzWqCb
	 VE+P++wY2gLJ4x0VvjkR9aVKHSdNcA5NAaRmlk8NKAyioX4YWeB03915fCEmmyaBdO
	 NO2mev881rrvtIO+gtECv1txbDehkjiIqGlYKBWm53kNQitwHzOSxoG1g/2md+juRv
	 jYKubs+9kF0cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A59A9CCD1AA
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176104979362.32372.10675438055687872989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58157cbca8f0ed9fd7ddc747d7d3bb9af6f2f4a840d2ebe75ce80020ee6e203e
Date: Tue, 21 Oct 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761049793
