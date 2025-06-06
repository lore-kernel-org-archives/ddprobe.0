Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BC723A6
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749180594; cv=none; b=HR4DNnnMiAHk+MLTbdss/Fx9GNgl/hup+M9r1w2bk/iaOBMXkjRYrvogQ2333DaCGFJWweCgvvdW+7hv1DSkYz2OPpeDcqggBvBXaowH+FL9Ndy3x8aOPBIj8cCdugycwmF86VxIuOatsPwozBTxGBMrUgmpUjDPZwJznX8551c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749180594; c=relaxed/simple;
	bh=FQkBSN4Wq2UI9Yg3r9+cnhPJoeoY2ywHCSaidKhD3yE=;
	h=To:Subject:From:Message-Id:Date; b=YFXOC30GstMPeOLjJNXq1T/cZfCef3QYdUHNjo3QBrGltN9wriVRn9gYkQv1T+xCKvheKK9yjYU3IBZQX/qtn0kzmlvhzc+qBA8a5opbkfuj+B2u2NlYbVKpdiFg/svErhm+ai5wjDAtkvqH9l/eiReDk/pNogKwcf4LWUEltHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o3sL8w/o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o3sL8w/o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD41FC4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749180593;
	bh=FQkBSN4Wq2UI9Yg3r9+cnhPJoeoY2ywHCSaidKhD3yE=;
	h=To:Subject:From:Date:From;
	b=o3sL8w/oolusVSxyOfp91kh/v9K5o+1VxqDr5QeWBCgv9nMma2RCzyoqNeqLKR9Og
	 4BzrtVq0aIWZxxFZnZbLQo8o4WvBZCRVpgtqBZusGYGCvhhti0w94bSvrcOGN2GJlp
	 KCt7ySImiym2amhbYv+x+gnImJCx7t75sg1eg8sw7GQWvfZR3jK7WvaNizXXOeQN2X
	 mOC/Su5gnjs+oNQ5zcl2vuE1pLycenMPukIqkPsjSNhWa9sbOAEmmn2plHs9RNaz9A
	 894rFt3PHz7A1roLOixlyOQrZKLYwPsXl2Em/XCWNrbWRRv5wqOVLFbAJsda01tm+2
	 ozclHkjZN0jyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D3FC5B543
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174918059358.3058.3129447077275073011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85bb6b05d36952238dac049cc79662b483219f65360b50f11290bf3a2c0a15bf
Date: Fri, 06 Jun 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749180593
