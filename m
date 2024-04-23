Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4DCC1CAA2
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 07:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713856823; cv=none; b=iV4c4rNjXC/x6MnUwaUAM3XLdYeEhAFvDU52L6VwUOiUHgQ+tGxIiDQSea5ZrLu+tBmAR/YtS8oZsL8vnX4i6/ebBoJe/8PkS/BOT59Q3pk/+wfAboHUuxgKMO/G9iPnF96MZpqDGgYqgzcfa9SOyGNWxKMm8XzeXzWgQaTgr5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713856823; c=relaxed/simple;
	bh=6mBZ5nVB7OTBVHDIsl0agBqNU1maGM6ZoMx7Ab7zAMo=;
	h=To:Subject:From:Message-Id:Date; b=kr4gXqqBo568npa3KwolMzgcV3nmROMsCPQGt77rihCCqu4sQGj+vaLbNCCIcHKdwYL2i0Cxqlz4Ab+x6U+HPNYoWCtbP9M5sZ0bIuGHiYjosUt//BvRbS5ls1QDygt1iWVm0NP2TLD4rnzfx4diiHSgd/snD2zHOQ7Akotxbzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dpga+ohD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dpga+ohD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 10E4EC4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 07:20:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713856823;
	bh=6mBZ5nVB7OTBVHDIsl0agBqNU1maGM6ZoMx7Ab7zAMo=;
	h=To:Subject:From:Date:From;
	b=dpga+ohDAIpaUeYj/Nef7TkVBICi3AIO5Xk051QOTBkVBqyg6XekEtzvrEV4GX8G3
	 i+XCHlj/2iiMzX9v+Quo0qCxGgkt5DAdEngSVVjVcvL2DvXjJ4hhA5fIG9modY3AJ9
	 QLbS56SCkmyTwDkSKOHKvFI8kotVEnjobXdzhnzAIz3aw6q4lVtX9xaEE9Gy/UjGR/
	 bMih5yeNL+/0YIlLay0CbT7D3iqyVvDdpcXwbpdexqoJt/Qn1VPG0VuVvzauaUdfx+
	 N9ZcqIpfG5QIZ2snpYZH5BBVG/QRzWaCP368fwon4Azt7I2zTuVw16hadv6/gr8SJJ
	 TzXJNp/dR+YKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA78CC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 07:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171385682281.7273.2263461387204745455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d2b2070b5cec81ec113625ee835717b1fd9b038d3e9cfa3b7dee08086f89ba5
Date: Tue, 23 Apr 2024 07:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713856822
