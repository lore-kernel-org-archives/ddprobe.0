Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4584C1754B
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747939194; cv=none; b=ed7WgDD9zafgKHCC5Ekm0/9xoSSv38wBpE7C5II508LDx0thNSkwnKN714qGZKI1PvqiST7gdvIyWHIrZaJI0TCPPt2XxUkrIJFwO5CNpEF7nCkwg/mD75LriINXX5zoHigRnkEVxiwewywolqQB31JHINnqfFWunfAyaXOYPdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747939194; c=relaxed/simple;
	bh=FlzBvmPbdAPFlBJjC1/9/ORh0/tZ2G6DnSMCpxATpcY=;
	h=To:Subject:From:Message-Id:Date; b=Ok+bhF8VZIB4oLVJtlPEDSjmbfwgopT9YTSuPQbhPF4BJa2JlY+MfB0JK7r6fO/ZAK9hSqQkY1B3nhUHZTPYMVnWDMDlrw/WhLoXKBHme7Ic9Iq6Evn6+POzpv6CHuH8QQraq0OIWzN2f2kBtqcCdZUzzHuVLKdCBdEbyQMWfjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZU7vLo0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZU7vLo0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DA8C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747939193;
	bh=FlzBvmPbdAPFlBJjC1/9/ORh0/tZ2G6DnSMCpxATpcY=;
	h=To:Subject:From:Date:From;
	b=DZU7vLo0wo/1nUwwR3Q4AboKdfzJJuFPKMmfBnqtjnKpI8/V31P9VQVzj1m2n6OoF
	 e7o/gc6MjqjAKPlfNHxAUrFFDNZl4Torl/YmPrajfe8CG2rxQAbBI2lnKDDclPzOIn
	 ClNGf9vE4iu1bFOE8yZJvi7QTCiub8QfDQaIXoNLiCERl1HJ8VppM3FM96ZYf9SrYc
	 9gy0xOgMnwtr1/n5QUnrOd884DiRzffF574h48ypgImCbhbTORDV4ZeDohMCDSxCf5
	 CWPp+RcfoGPsAnQYruX0dBaiE7WTsxgKIhL2ZmySLj8KyawMkaO9rkS/leYFVNP+2T
	 yVi43s2lAuGYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DAAC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174793919358.29264.7654606292529417432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f943970290511c040518c88103646ae0725326b3e5142a19cba72a1ef12e0936
Date: Thu, 22 May 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747939193
