Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C0938B98E
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 18:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770749634; cv=none; b=EaDsp1oTcr9YGFzqHORWh5r+Je+ZMJRQqXmwoLEMJsdWJYPf4mQeKmYbkjUyaiZ6KBdb9EBqRLfS6/eGoSJ11GBKWRIu7ZvIBC60eo1kcRFB49shvGnHRt+cSMVWiFexOPUBtpqFxk7yMnHqoRgnnLYCZC98rxoZtK7QYgttVuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770749634; c=relaxed/simple;
	bh=zw3p5aL0apxC2L8rsBRrL9jxHosQJgKG1OMUDatf0o8=;
	h=To:Subject:From:Message-Id:Date; b=S3Qpph+XcIEvm5f/LHWy25WZxSaq5FpP40x8/GeyulAygiRfIWvtaE00GtTk7VcOI0eWWkHNzrTl1jK+B2wkIcvhXhXzdqJhOY+J8jvAgWP7uSgcSItMd43YTMMqUVolS9b19uJHYbkofBiyeWpE6iZstQNzZB+SKUBn92JRhQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BNBdhjbR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BNBdhjbR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D18FCC116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 18:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770749633;
	bh=zw3p5aL0apxC2L8rsBRrL9jxHosQJgKG1OMUDatf0o8=;
	h=To:Subject:From:Date:From;
	b=BNBdhjbRv3gIfVhcXuNeB4ZOZIAGJCKErEw81X6YaJTPBXfITwZSX1PNKzsIQuI2H
	 v2SDBmfaMN+FJBIXnBp5POToqBGSoC68Cg2XYgViJsiZAdXrqPGXcFmLx63/TEEkQ0
	 67uGL7DJN0iNYcyhSKG+88ToGgQsaYr3HIpzDVF0WX2RaE10KyEaTGkmHjrVYWVkCP
	 OU92zTEVjJjRh9d3bR4n1NhINWOOsEyl+aYK0CoJGUu4Pr9Tu6y1BbvV3BEXCV6XaO
	 j5Zv0Z6wElHFjR5mtWJfaUcqWR2+3j75ibMJRDQhunyI+kU79W8xaHjH9fo7jWHuM+
	 nTsHTZlCyRzhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B31C5EB26FD
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 18:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177074963370.3008.7190902326817068510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e2c68fdb809fd674d95550530759339f3e286bdc8dbda1c83c5351ad1ca5a87
Date: Tue, 10 Feb 2026 18:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770749633
