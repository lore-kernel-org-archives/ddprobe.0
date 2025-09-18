Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1980A248166
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758199795; cv=none; b=q/5qWLKfZq1cX1iLTvwgFWAVeF83oGH0aaooY0quycDXTMCszdnJKr0TH1Zid/mXHfrMk2gs2JvP2nFgTZiSADoNW6tOH1B3WnDlmyndwvdk5a4wfByNurBSJ1hEa7qlkMEvLKMLK8qyquvqQgchfq5CN03kypNJPkgioJmqvRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758199795; c=relaxed/simple;
	bh=oMoYvIxLAnqC8UbRSaMcIvDU81F/riTNXI66THWCvmw=;
	h=To:Subject:From:Message-Id:Date; b=YL7vpd4fNmW7T1vY2GYDNLsWK8T5rT8ohO35pDsigt8xfQIFO+z3B4hDoNvLDB1JynmotZ8WcpKJJaWigrOnQaZxE0IpAnPOr4zdjiHswYXsklcRQNetXXz/o9X5QG/y85Awv7UIJXVjLTvBUIdcWxKiA+4lG/xtOsbTgt18zWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7QPI9JU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7QPI9JU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8DCC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758199793;
	bh=oMoYvIxLAnqC8UbRSaMcIvDU81F/riTNXI66THWCvmw=;
	h=To:Subject:From:Date:From;
	b=V7QPI9JUBw+R5mEkqYl/7Ctvz9UhHZPDWPkHh5bFu2QL73fH8WuLbUr7OZL+0mgMd
	 nV+t6XAYoP1ZTOApl0+LyJmlKm+9WucukY260Ffq8MTGpS2IrvDoWtHEeW3qbAskAE
	 oy6HGP94QWcWsFef69sF369gsJLmHTCVT8b42rxq7986AiK49/rWLhZqFmVDgW7PWA
	 tDgh2DIWkkWVtxdZsOQJxK+38qdc7YTIkeCRGLHNtwyeqSd5UUOY2uG40U3h3evA0V
	 Qjk83Q2RCMFDP9uL/3Qdidr2qVUMZQC7b6u9Y5Z1sChAfOZW+dZMVSe+w9b1g9heex
	 1e8erV6wuBuKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF29CAC5A0
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175819979358.18152.12666561509576277651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f885def9b150358552cff122b5879366a70fb0b8cd09d9201149a1b9108895a8
Date: Thu, 18 Sep 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758199793
