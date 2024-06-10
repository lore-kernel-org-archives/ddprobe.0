Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B676FB6
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 11:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718020043; cv=none; b=BmKUhbms/Y+AvfJWce/hr+NjkWPWrUyS+EQa/3Y3+dMB3WG8iqG+qdKBOii9BOQZ3WHd2PBnJ0hhE4H0VLY5lWUX0wIi2f71N5sXkgX4skRVQ/U0OUHi78FrYG3CzZqBqCCzktqKUjsV0qsos0fnw8VCaoQRFzrGo/8pKznIiTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718020043; c=relaxed/simple;
	bh=GW4Qa08rAwCZ406UHktnfcbW/tSQSpt2l0BDGBZ+vI0=;
	h=To:Subject:From:Message-Id:Date; b=iJ5DeTLunYJEZ0oHhloon0DpROa8pgDmKjJpe2NnTy5Rxh+y6SSFExeIBtsx3FxXLliDkv8oC0NylZqMTIj223h1Xt+rJWtS9kVhrnm3cJob/yYWHXMGfaNA9IukJIU/DDC6SYxlW88f7TxxmU/ZdLmD79EDUXcWgUPWogje+ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2UyuNSR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2UyuNSR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFE40C4AF1D
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 11:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718020042;
	bh=GW4Qa08rAwCZ406UHktnfcbW/tSQSpt2l0BDGBZ+vI0=;
	h=To:Subject:From:Date:From;
	b=l2UyuNSR/Q2ltABiFZlU+0+qPPUbanfkrfa/0i7De0QN5GoIodQGQHBMkLyNre2a7
	 WIP85oknixS7iIB3z4HX3LAVM8x3dBdQK2Phn36kNyVHDesc91JZi1DNRKMSOOofr0
	 mFJiA5FZ212HpZLQvzMplv5sovBCM7gHe5pgXmCGS5hwoBgjs1O/lDC9QY8HowgekM
	 zEFPwoS7QnjbAVt1g3ZLYDdfV9G7tVlkfYn7cRHRreAz25qyXgXevrIvC5mOnstLNy
	 BGoOtnaEjg09Q7qPuRvNm03wHDXlKYlKZKYs4rse76itQUuJF+EeDQn/CkXc7vqorA
	 HHh9Gw1AzhBCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA423C27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 11:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171802004281.27577.3110946873931236674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72fe7d841a71843317e82480e4607e54b26084479b037a0c29f87771ec73ab93
Date: Mon, 10 Jun 2024 11:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718020042
