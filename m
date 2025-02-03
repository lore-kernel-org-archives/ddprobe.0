Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5193025A623
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738611954; cv=none; b=ABfcBsNRjD3EZ4Lj/n7Ixd3FNL2EeBTcDTkIkBU06dkMsWkkONic9j+B1KZObmcxtxuRVgMhKB0evRebp8yx0+w4wmJE92TS3t82FPpnFVIH9kNqgAFhLz/sj2dFoVIDnjz7nbwlQfdV9XnnHfxvmvggfVpMCvFZqFvcAzq0pjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738611954; c=relaxed/simple;
	bh=damv5LUic5T+0suaum5D7GCkaVGnln3o1Yyb0PM7Vps=;
	h=To:Subject:From:Message-Id:Date; b=Q3fzbW7tw/dYwQ0ZL1W4kHEQyZiL0CfP0vnuhsuMQ4GuzUT84FTdacbIJzrbmzaSfB+iGtG7Wn5l+MEQNNsEJpv11EDwh3bA2ih3/PKKy0pfDYBRAW2PWhide3sxCP/t2TEkEConzoGr1P0tg6wIEXN5MZRmi30YQhOadinuohI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Na3kjz8G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Na3kjz8G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8EB3C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738611953;
	bh=damv5LUic5T+0suaum5D7GCkaVGnln3o1Yyb0PM7Vps=;
	h=To:Subject:From:Date:From;
	b=Na3kjz8GGtmN02DwQN0pcM1xLQNrWPsCUIT7HWf8t5IbyUGHhVqh9aCMdTdwQzWYs
	 syYjke7ZqX1OWXt1LPOsz4mskoy+N9ptOfKM5J6c+t4CxoRLTmPJVdPGZ2iI64ip3g
	 s+JfebN+TBq5hN4Tvr9VWts0K3wqIj4yxGSYtyQWuJmMphP2+Q9F78BhFkdFnEtHgW
	 ubLFJwQbAegd3ijeQE7yia2iDjDSUfHuB1oVR/S8i+v5Ffm+3SBfhiaTRzbp2Ebmyl
	 i5joMvMyDrtzDQoIG+OgW8m7spezsj0+earwOwcEurtzBKj4DbTblDnXtfizXaZDwj
	 cW7yHYds5KMnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3529C02193
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173861195364.5551.2125887884892839487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40faa9df87859751fe68f703263b750b6d4af647467ef2516d964f1ae9deb3c3
Date: Mon, 03 Feb 2025 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738611953
