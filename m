Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4021D95A3
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759864194; cv=none; b=CPToUxxtsAA3R8SfK6kTt2pA0fOOrJlrqvoN9a812Ujon5Jt/1+a/YyprQQ2QG63btMhYd0i/9EaZQg4l4ViaBhGtcujaqK3lYvBdbxUPml+IdUIkfnXbazjMkmZAx0gvI3772jKxhHiPk4kIE/Kbjp5FpeNLTcbEECSMAUi4m0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759864194; c=relaxed/simple;
	bh=vonO+00hGSq8Ud5yC/Ix2CxVZLpWQSjAxF4CupW7CJ0=;
	h=To:Subject:From:Message-Id:Date; b=bH6eb8LdsXIW8tpBSfA5ue49gNSk9ZjZ1GsWRuaNjvXs3neiIhB8keRuc1HSYcLZd8ev6jVqWrTDk5uk9hTlUk9MZyKDF0MG5HmXRrrY22TjV2+yianRIiOWyjSZd8G6XineGn5rudKyuJFWF0+165Ue1usRb8eAtOwSu2F2wr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2sf5iEc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2sf5iEc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A351DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759864193;
	bh=vonO+00hGSq8Ud5yC/Ix2CxVZLpWQSjAxF4CupW7CJ0=;
	h=To:Subject:From:Date:From;
	b=T2sf5iEcaj1oRHxqPqb1+fkMbpTg2rijfcnGS1j0WUs04UL0L7ilAj1Ov4MYBUFmv
	 laFKDi60FR7ZDzk5CmLxzp3X4f4f8DPCywOv/jwfNcYuILFUJiKoATIC1HxibS75eh
	 Ji/9E7igkq8HLeZ9B7xy9eIOkKvhkMu7fVoNKeHQJqJ0vJhxauA40SwDtvBGWKtB/l
	 ontt+igBMzxRxCxjf1MRZrhzG89yoLWSwreK2tN5rrzfxWh6ncsQ7/7F+feRCGfCJS
	 Dd2bKtRSqoYwbLAxdpQhGuPOs4TaqCeq8PEiHFMkOomKUenRN6qukPClfn+GOMQvKu
	 FyRvJJO4rrWFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D58CCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175986419360.28439.7897807267220417996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0a668d675ecb667ab6c68124b79a394d2ebfa4200502f113a934970adbec209
Date: Tue, 07 Oct 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759864193
