Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381B1CA6B
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743641995; cv=none; b=hZ3IPuKHRJ1KPpgKJfx16p98bWv7B2p8WtsL5/a+6+wbEmZO9s2tGIXaRbZOJeEU3uuAUPfpk87TG/BIGLCcnUUuqSaSRAhSzHmoZIjP6pjH0C/Ype3BZ7dmLDuul93fDh/V4F5D0xMuWsXaDRr0EmYfaXzTWC8smdy44XhXcEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743641995; c=relaxed/simple;
	bh=z5uht03XcBDrhXZu/OCSqsUoFYzmUoor2q+xgxcoaRM=;
	h=To:Subject:From:Message-Id:Date; b=TLA7S0KwbBWTvk9phtGJxWfoJ2PYs33eYy6KHc9mI2UnSs3REP2GllQus9FOSPelGJ2RcP7gMITMEtwqZ8jpmfuqWO12kEgiPE+WwrssVVdx3saA/HKoT/UTxxmkAn+OILlLonJG0vJzK39p/YLK9CwVGW4L7DUnfcZlWBek7sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzND5/sM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzND5/sM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA54AC4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743641993;
	bh=z5uht03XcBDrhXZu/OCSqsUoFYzmUoor2q+xgxcoaRM=;
	h=To:Subject:From:Date:From;
	b=lzND5/sMRVswuo2O0r+MFNJlLsAxLjXjAPdn05nofqfKJTGBq42CL1i3GpDEF5z1D
	 BLqw11190wEUj9YjyTnU7f7UMmdUKSrO0ne/cqumrIe0U4VKpGaKwRNDwBwof/A8v7
	 eqnGYux6zz9xlY6npBDXx1H9dwWLglXqiX21eZKx87cMj/0gftqF/qQVgo+SoWKkz1
	 K5A0DjK/zGmqdNyup1Y4WKSgbhcHhMbUqYmLTZjxjIV4Gyj62LpOtdUTpJv4D88bLU
	 YBmYGFUxfat9cq7clCjPuXkOZRZKw9I9h0W0fbHRBWAZOuYkn3bAd2trHxzRZ2O+UD
	 Y4R3xGNZXUgrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969FDC36014
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174364199358.4723.5714227556665168536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b042140af6a8379d3dda75ee0ff31e174ba090cd229368031878b258d48d772
Date: Thu, 03 Apr 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743641993
