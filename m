Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2131F92E
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747005594; cv=none; b=BJ7bqHLahjild+I0Aqyp3P0WYTCC5U/vvko90RyFA8C5RSbiLL8GcyV5T0fuHuNaKRMF5oM78IVOyJUh2YhcvCyNJZ42ZvFfeKDn6lLRJpdS0oQ9s4VzsT3tXqPW908xl69vmm4uncEyNkPmekEF+OtRy2o/zaCOwJZi4XTqLkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747005594; c=relaxed/simple;
	bh=bA8v2g9chTWQ1HlInedCnzVLa+5C2Bc/WIrLSlRY28E=;
	h=To:Subject:From:Message-Id:Date; b=HPlNoK/38T/5b/HSmDS7vuxQIeEK+wfNeMUrhCn5vuMiDVPa5XXWqvE+zdYxcMnQkHNUDk2X7boTwj77mdSYKAjFCx26vAidO8B1ehMrowjITT09r2fdOLkDrVWGBJNx6cPFaDW1KkWnv4kRHGX6C1msdq+aWHryv9o+4E+lkww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dnFMzEwd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dnFMzEwd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD3DC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747005593;
	bh=bA8v2g9chTWQ1HlInedCnzVLa+5C2Bc/WIrLSlRY28E=;
	h=To:Subject:From:Date:From;
	b=dnFMzEwdpWdaySA0/s3no/58xt7VuDFlmzC2F2ARvXGE5YzhVO0qUoOIcGZa8pYU0
	 68KLL8mwmOaEXAfk7SwGprm+cWAfRAGeCHPAM6o1xmjrZ3b9c9XNX9SNoco/MXZfts
	 W+60ikJd3OxBhRWP6i+wlz92K6zAFd5tqLiaQbWbnbHQQy4UgAYLmtyXhZlPNGnaw6
	 1U1QI/f9H9rwPwHJi2FfZqdrfChUjpRwDkEfly3UWQdDMr7OaXCnLOL18hTp3AbQdr
	 pfYvxNBPAWlqqxuoWKuw7EIm1q8wWL5Hf7sucrXpaQitYhbRefHIkOQm+ZKdXXNcsN
	 WBTDweX7PYe0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF75C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174700559357.15138.297001589719521104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d43f937bf53ee164cf4180b084940e94c0819000cb97d8c86349337778d1de63
Date: Sun, 11 May 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747005593
