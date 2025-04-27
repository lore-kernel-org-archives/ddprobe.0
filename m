Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3997E1DB127
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745743795; cv=none; b=HxCiu84uQmP2Dp+ekcOHam5XvrVfq23m+cJmQsFRzyz7f+DsKa7HunEdJ0PR49nex4GtH5Srz++j76H7NWR7uMUfYcw30HhU+z59bNNR8PpmVo+HdgulM772Zu/o4KzRCVYsA020XnsFJyt6K2OOfmgaJ6dI+V/aZnQXjcTL2Rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745743795; c=relaxed/simple;
	bh=KKuAtYqSrtx0Kr13nwwwSAnDGYwx2Ka3Uls7rxE0pfo=;
	h=To:Subject:From:Message-Id:Date; b=iO81I9DiWsv3v+OC1I6cMCTpQejIyYWr1FtDVM6PXu6W6RpZeDUqpflsObS261Ii9vTp+7f/ApNjjBERe+3wBNqJ7PUqGMY9yf2CapkR4poIL/3OA4wqGYDwFIEhrdO2Iw0AQyOmNDLWSm/d7AapE4xbdjtMx1LVDYpInjEwpYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nZW2ebNK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nZW2ebNK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25F2C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745743793;
	bh=KKuAtYqSrtx0Kr13nwwwSAnDGYwx2Ka3Uls7rxE0pfo=;
	h=To:Subject:From:Date:From;
	b=nZW2ebNK9FIU1JbgsVvCvBdwCFqThqt/hoM+Ti3CxBODP3JXjdAhLK0xfrJBkcXsL
	 cbUjcvpu1FO92shViRSWw+yfq1h/q3F6c1uzU8JXzPEJTjfeVfdYe1yEyXVhF3+AiV
	 UEl5xRVBAozEslyB6aBI0Bdfeqy1HC3/E7BQ/tJpL2wdkuvyuLB1pJWEOrBcTAaUYk
	 Wi50R8gWBWeGXC9A1LBiLrDbtKH9GPoG7qEcupzz92/efZdWpjYAUpdSP1aqySeLrL
	 lHTqz/YzwgJRj/oIqPT52wVKEjSlpWQkFb9ivGGuwwgDViC/3a6QqaPkpYJ8Ak73+R
	 z2VIcAdGl/iPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911EDC369D5
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174574379357.22284.16579565625827051951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 856bdf6a5149027784b54378b53fc621517822b79fc5592d231bb9e212b35797
Date: Sun, 27 Apr 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745743793
