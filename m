Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9831DF25C
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762030194; cv=none; b=i3V03egqoOIqP+qUIipaHISpdvcdWToFZD+p/p7GB9aMTnSJfomeM2TOFXscut+58ic0wGAHzxc9lf4X0wNcZLAyqEaGo6xnIx1/tUcSNIQ/SlkaOGfcO9SdcpZNntkbdOBTYFG9YDwXQul44W7a1+U7dogOH9b4L1oknmnAQqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762030194; c=relaxed/simple;
	bh=9twoiSPy2sunt+fE3/7BJ6eBew8u68Uffa37qemb4og=;
	h=To:Subject:From:Message-Id:Date; b=nzAJTnm2O2NV83LR41X5iFwYRaAsOF4GdmISRrzZBYKrdNFh/mXUZ7DGTSsOZB3ddIdHJcX3bQ7ivL1xTwV42nJGy5pf51hBQDoFMQMGim7R6DxGxbrUKaMGBSQXPXKWtcLB29ZNzbMMX6qVGYnPbZ3JJDpgv6ttnZEQL9+lh5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UxS+EK5R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UxS+EK5R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6096C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762030193;
	bh=9twoiSPy2sunt+fE3/7BJ6eBew8u68Uffa37qemb4og=;
	h=To:Subject:From:Date:From;
	b=UxS+EK5RRMThsMBvZxvhxW/QQ1yjKnrUgwH5zqDJZBtnGl5ESCPsnOKhEghEVgUwP
	 s0TeT1RCTteiGYE754JAeZ6qwyTJgAUNmUrksw/DTBqTWZ5IBBWYJvHiS5/MJVKz9B
	 jXV36VqXhze3K3FjIBfdgxcoNp/J1NUfiV1F64mHFxTP5ddv7i+B031uAh9An7yXu8
	 31hGWu9wMr+SX6u7639Sc1P/zfRYnVX+e7kuTXyVPFNW066Pb4Tpm5jkJMMXq6jLdS
	 iMcJ0EMmMaRFkFWK/SsiKhAXpUoWG03YQFBuKVe7qzZoExKz0tkFGKBXzPOA3OKQJ9
	 oh5XTzAstnv5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94FBCCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176203019366.8510.12024029319337526730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9f9352d6ab71f06c9e4693632fa668647d7c3d4cb821f7912152c411d83524f
Date: Sat, 01 Nov 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762030193
