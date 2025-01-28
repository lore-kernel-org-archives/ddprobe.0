Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484C54A1D
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738052754; cv=none; b=F1bkfm+P8iFbkAbnLCFWd/NKKgSgCsQvby7cBMhvHtcOQPO8+y1UhafLJYVh6HOdstPmIeiAQclVDUfm75p2HqxfE7jypyhqUIMerEl87d+rsR29LSo5n+Yt2sNLOjSvtFNaDFQqSyUciBaGRA6qVZDJephgbCtUufSvHA96LZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738052754; c=relaxed/simple;
	bh=TqzAAEl+1e9jELGzpua8N5QFYnI3+zLyFtgQaIGHe18=;
	h=To:Subject:From:Message-Id:Date; b=QVVtXIBXeQ82+laMV/sJrtd5x/YW/aOMBm3jPI2RNnevtWR198ECgQqMZlFfl3UtMx0p0fWnnIMS4BK+jWI/ddM9Ul4FrpQjb961aXH54M5rOWj1bW88F2A1O6pak3IBYUdMcpdlw3J2I6SlW8dk1LItcKeYiRo8zbr8UHrUplM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lrRY/6V4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lrRY/6V4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B181BC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738052753;
	bh=TqzAAEl+1e9jELGzpua8N5QFYnI3+zLyFtgQaIGHe18=;
	h=To:Subject:From:Date:From;
	b=lrRY/6V4v7LKdgzdRJfn7rNIkS6YtplBMGlky0kxPwnUX7s/8xjAS8x86WWcljrM6
	 xssCdf1WxEmtrHyz6j9A4OsTwfLFqNTGYh9xItueUunq0hBHxssskIhKF7p8564JIH
	 9/ljVe538c/FfTnocPfhWMguOlYLDKQ2pcTdYDE38pDqXb6lS3uXeIKlxQ2HdpTXqU
	 NNd41XE9pMfaenU0fxe8HB+VKW13/pv7yWZHY61RCy7He9TuAPjtth0lYKs2zQPbmV
	 wRI4kdDhuk/9eVNJuQKRFku32cTBcPwjKh+ci+aAzXJ6Gh/iLGA1gBoobVoEPBYH3y
	 b438dr0hEFbKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95787C0218D
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173805275360.10379.835025436247487244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14195d36e094c23a6b29b28beb7b41f9dd46ccb328103ed5f1c94b64759520c5
Date: Tue, 28 Jan 2025 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738052753
