Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C56381AF
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 00:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783298914; cv=none; b=VIGaDIUgIa+UYqLVECSSrLio6LGN/O/4Y5SD2vazU2VTAUNuTWDozeHA9Xv8RiQsXeK1WBXmKEEJgMQvDpX1/5qQeHcUyWJyGhfBGY0Dw1ft9Auzo0ZihtXvAdKpq1AJH62KETt1/rJmUAaWWHsAIUvHXUgiz+WswqxfymqaDS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783298914; c=relaxed/simple;
	bh=W2DUmV2O5kZ63DI/PpZOAA6B+7+9H3vZNCr5wzGbhfQ=;
	h=To:Subject:From:Message-Id:Date; b=inp/6G1KQwI08n511TuC7O3WDacEHK3umJAU8sff9FLVmHlcUicrY4qAT4qksE9ZhY1b7RqBUIH+1T411gZnSD4qtUmgsjYZnh0vsRQg8uUitgAf49vdgccf4XzQs0RMEuP6gRiBvsUCEU7zvtiQ79vFkHQ9ZU9F8ImxnRpyOSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eUkID+oY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eUkID+oY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B03C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 00:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783298913;
	bh=W2DUmV2O5kZ63DI/PpZOAA6B+7+9H3vZNCr5wzGbhfQ=;
	h=To:Subject:From:Date:From;
	b=eUkID+oYSwjex9GzKhg/0WhcEnKvrAdypgRPkGgZj1/wJGd6RcEZkA0z2vG+pJ3UD
	 I9IBH2Rx7g8ROC76zEaVOupQjTPjswFfiWC858qzYaeZC2facdRDG9/HcuPd7jOZgD
	 gwl6bwXaNQ1bLe4ENsxnn7eVT/RZfEO9ymIWh7tqMfNvzTXhfSS9zlR4oTMB/i6mIv
	 BOq2EfEFmphcDVRnY5sog2dTUjbEWBS+dMRFFD3Tc/tp6bYyjYt5rTqKjosmw1e1HC
	 KKm0+0slgV0UlYsI8t/EOLyp5O/pRikyY+QXXQFD2P2t82MpWkyw7r+jPwWXcsb6U9
	 D28KCnFautEeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA55C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 00:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178329891368.16293.8123960213261209024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2979034b8905e2afade3be2a2618af9921af82127230d95edc75920c733cc94b
Date: Mon, 06 Jul 2026 00:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783298913
