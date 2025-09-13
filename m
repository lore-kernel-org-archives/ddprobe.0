Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AABC15E5DC
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757725794; cv=none; b=Yhequ8IUme5iUDwrqV3Qd/JpqI7nK2OKME3Z1qpJyVq4YRNOqyV80ULcjxbecFkpan9Zse7FAoKMdn+kBwLZmKzG4JUMapXs1X7AbBbOQd8QLnpPncdfs4SfIMBV3ffElPBAOQbbDNWwHoSXYrM1ARtBpSNRwiNEsTjZkNkNXSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757725794; c=relaxed/simple;
	bh=SBv+fgjEH2Ex9xkyH5wqwImt51TFf+Xa+a082zGKVrc=;
	h=To:Subject:From:Message-Id:Date; b=mvif+mXNwiiFyqw0ryIM9JuPjcqVTWMSteiL8VK52lXyY2plYBiK73S5PDrMX1cqtYWuYDmXQ/2i0lqaOVnEZfZWXr/WXj8wqzRX74oUCVxoCHURZf3U4yOu39G+QrTvCDSAVRfoFZpfed3C5BiqgFLivoUERimE6/D5pE9Glys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qlln5loj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qlln5loj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A80C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757725793;
	bh=SBv+fgjEH2Ex9xkyH5wqwImt51TFf+Xa+a082zGKVrc=;
	h=To:Subject:From:Date:From;
	b=qlln5lojwxYyZ0jX4IV3J26cX4lTyCKsR0Loy1t5tnB/UzxVYF3H6wEjwXryxHc/I
	 Me6fkz144f/wut4DRrEeArvl1hqhcHxnJkN/5aDEDYkOG9zHkHpuWou8xgZQ5/qFAK
	 XRLZAxOpQCChCYvIL2dAV4Z5rxI54tFWjvKgfAvZ22KCmu4J8BIfUROxxAz1JQDbDq
	 OrVqxt5umFJhKOSl/1RSbP8a83/9HU0+LS+KMg3e6p0qwVr84jbcGssRAUvkYckA2t
	 eW3RAYJkP7P2YdLC3zGKy0hzA1haGwC6Bp3QCNZuAUVHgxkWMglI6NNE4jFMQ2GbmK
	 7DaTIRGVoxCNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91853CA101F
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175772579358.32442.18205100755918070536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72bee3f3952d4fc130960bbb37d7096e2f25d15b2b2fdde8abb8ab7464588d43
Date: Sat, 13 Sep 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757725793
