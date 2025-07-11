Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC1428725E
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752245394; cv=none; b=GM7EWkgcKLRNVH4DFSNCk5HwL3eo2P5hDO/7x3XPvlHefNAZJ/whip3A+8X60UVTNmi1svPXaD+DBK97oJFb+OIaswGcaStFIUekWMmDhks4zBGTRD0+mB/JQ934+nu29sJDUMlJg0vo5/ftCoJf9wiT+EzKxQLSd2PCrvJZrW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752245394; c=relaxed/simple;
	bh=u+4hgyDJVvdsu0oWuQqGO2ad7GmnZlYO5xPuTwTjVj4=;
	h=To:Subject:From:Message-Id:Date; b=qo0I95l/TqeppAiH/mLMhNFFdv4ZbLRAQ+3OXgq4A3h7JmmC1HIw2smRPQoBRclQEK4q+IUP1xukJJH8fHKqwu7Atx3bYgTLyYewZlN8eGChtYsBxKwsiIAxuxJ8yQqkMgIdkCgo3c3ePoeQEFD7K7OECD11zTL8rz6UunTXHq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YNfTh2BZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YNfTh2BZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F08C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752245393;
	bh=u+4hgyDJVvdsu0oWuQqGO2ad7GmnZlYO5xPuTwTjVj4=;
	h=To:Subject:From:Date:From;
	b=YNfTh2BZ3eH5qgqhSZJAkapqlgjlJ2Blm7+jqe2ZUn3qLLzBGXse04QHLnKdZh6Lh
	 FeGJfOTJ9dCxAwRk6a72mKIfJweWxuMBRvOkoPRbuSDpdztkEZ5k7Nwsew3pkhuWfw
	 uH5Jqkj1iij6b3XLfkaH9nEp//Gr/DTSWNHrcYuwshLE5eibwvWBqJBqZMZwhyl9+Q
	 PXwrtXZ3am+VMj8QQmN07nytvlUzbkpJhB82kUKuooKkYnvEV2nnvxsUeljFhbMnIE
	 66N2EX6jbenku0IK4KxROh6zbqvXbBKPv+uXducqzmZdDFr6E79wKI1bavE3E+yPYv
	 pJfTNH4Vm+fOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90005C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175224539358.8461.7114579043924509036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33162bcae1a8cd49ee25bd7c94075f05e6ce5da161d79825173da8db2730f7f4
Date: Fri, 11 Jul 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752245393
