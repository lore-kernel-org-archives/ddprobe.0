Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C93143866
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 10:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715856743; cv=none; b=VNFy+Dxgl+7h1lVKvWZJZ8s+vai72xtNp/iIr8FTULEPcpTE9hoNQQrYLrwQz6xXpMABVJ3bgeL+xGZxVjy2heXEH1MX8mt7AdOzKpX0Oh/0Ef2HcR/9G+ddvqj8NOMfrLBkHUaULT8/7ixj0lUNrCy9Zh5dD1FUvxcgbd518iE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715856743; c=relaxed/simple;
	bh=7AedCSHueIhUYkIKg+uqQs9R37hzv8xG7j5ycn5OV+Y=;
	h=To:Subject:From:Message-Id:Date; b=L6y94OR1HL7WYbP504JBfzhMcV4m4njJBMaO/3/4JV2oKA3o4//zzNvS+G5uS36hZHd/OIEiVzsWwNjv4Akd+ote5LwDMpJUT0SDKgSJf6T9/mFkhIwdbDciURXAbQT30Ea1Md7vEoXMxt9W+GZktR6VfbmRWNqhwFpJVviZNDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IU3Ju/Xy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IU3Ju/Xy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D69BEC113CC
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 10:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715856742;
	bh=7AedCSHueIhUYkIKg+uqQs9R37hzv8xG7j5ycn5OV+Y=;
	h=To:Subject:From:Date:From;
	b=IU3Ju/Xy+OlVwwO8pWQHBeYhwvdK6xIa5Ka6dg/r3fz7EGgqA6HdAZxcOVyb/5fwH
	 oOQtEuJ/7ZswAmU9mdrdEgANa1ZbcYKpWQ3WNjgLz50H95OyxSOKzmDVkSgXEwt6jq
	 S0BH256WC0MbuDFGrhsAfiMM7vV9+wbm6eZWLoWKikAl8SstjkBfctqh8qabYftNqP
	 KWu5sdyRdFy9m7X8TnlU1SiYOzst/PSI2YPay8TcLurUxDSm2JB+f4tWHO23UOvP1z
	 2e1SSyHSZU5a6gS5aR06Fxfi0ftW00tK7WX7rH2IssbGi6YfJlCgSsrqOsHoi6ZLch
	 kAI9FG/zdAZCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB73C25B74
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 10:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171585674277.25283.1095001176956514636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5acaf42f51f9b806e0a2575905b228c80951d8b31fcad453ee915c2f99c6b57c
Date: Thu, 16 May 2024 10:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715856742
