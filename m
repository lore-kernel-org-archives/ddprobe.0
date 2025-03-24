Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A42119CC36
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742846994; cv=none; b=kSOBuWIYF15eHuKFVwrvw6xpU6+483TYV37LRlT37VlOex6QSWg0kvRs2D6huKqcBZstYBGUmgIkXHH+MDo3N5a/P1YDtf7PZgbiax/hqglifvHpaVSWuWPrsc62iywrwlCZCN/La+ZLj4gkeEHmehLbmXsMntMHyFE63R2vanw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742846994; c=relaxed/simple;
	bh=GvENguHFMTwYsL+klL8zOgyImSosCaYAW5zc+cIvcz0=;
	h=To:Subject:From:Message-Id:Date; b=c1yeHUhULGqCaoU5oaxxEJ8WIsdxdj1VmdmPSvb76r3R3kMzKn7lPKkV2ZHR+SnUJL/cxB/bbxCTFxRPMrVhBHAZj+tF0fCG8l//eyu7fOCpXrqYVXoPxl8aDuakEazu7WQZ4/cOZue9mQhvp9I1s7WhOMjSgazDC9TH+sFxpE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pH83mHoW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pH83mHoW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C67C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742846993;
	bh=GvENguHFMTwYsL+klL8zOgyImSosCaYAW5zc+cIvcz0=;
	h=To:Subject:From:Date:From;
	b=pH83mHoWqYNt48C09/oTTSqJ7KXqNxzJ0bYgKiqr+4arLVwhj5iidbKDY1vspjD9p
	 sPUz18hK0WTMi2IsoTvop2lqJ77PJ4P0czylGrUUP3PHuSgInVBQnyoLBrnb2Od235
	 m8YYSA/LZg4d3sVcBeaeuwmFhvY+q5O3GufBKr0f1HFMysOQZY6Gl83xBJSEI4fLqD
	 alws8N5pQB5a4g0Mb50Z6MvWcvxiQVpAICg2Oi+KiGITP7n/eNxv89GtwDujuA2fBK
	 SHgjZjcuvOg7F85XI8WFw6lwWog9q8o3uMUrVUykVahCBVySO/I6WJ5dUMpk5n6SXn
	 Qp+3sxgeE4yuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C1BC36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174284699360.7669.1003893684108643491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b73404b8ee02588841c5891df58f8bf44f3dd8d122d0573d592ab195f741459
Date: Mon, 24 Mar 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742846993
