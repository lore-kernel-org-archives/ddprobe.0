Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264CC225A4A
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733868954; cv=none; b=D0wsvhVHUMOl72Bj0h+IislZ20CRezbHffnCVFEStTv5oDNg76lL2O0+T64IjHjQE0fc0afHNK89Zfu6Kvbd1SgFYfFZ1204N6JghUtMrNBdtUxqdxhYlwr3RyZ4HVk6bXoz7smHoI8VbxCrjl3mb80kgxCAa5hB2aa44OlvVo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733868954; c=relaxed/simple;
	bh=iDYN9zQWakqyKOQbsez6nnUmTvhlFuus6XKO8UxpnrM=;
	h=To:Subject:From:Message-Id:Date; b=rqnppWE7JcsBByaunh/GTrnKC6Kh+u4J/++bmPCXimpIwp4qblafmSaHN5lKT1m8UMhv4PO5cSOONS2azrrwE6ReYvBqHExZN5QAl/vgptlPX4wgm+yLz+hdsoElZCwAlau/edSNGYs462o8/wggiBnUJkv3SgMnZB2uYamztDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZuIGTmWY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZuIGTmWY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56C7C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733868953;
	bh=iDYN9zQWakqyKOQbsez6nnUmTvhlFuus6XKO8UxpnrM=;
	h=To:Subject:From:Date:From;
	b=ZuIGTmWYhCUXxGn2QyXJ8BZxCTgSlgHatoy4FIo1X9UNXecHzd8BzEyg5kRwkSNSC
	 B+CzxzTrsNo/vsAsB3JM8xa6YAzShBxhTPDwaxZ7CQnLL9J5Gx9eUwTKS2qud87hof
	 gcx9Fk9n3LDYnduz5vmWwUImJyhyR8WhDn3M2G2sKfrk4zK5sAnlIUMB2Y/e8DzhQB
	 xiVr0MmKW1p/GWd3QKEmj0cxY1guk8GR5gPmu+Kr/t2yT+iOwu7Z0REkc8WYVIxCPs
	 nMVIKimghlF88Q+uskAuAKQJYUWi5nsi32U0fwT1K/IEi6wQo/HL5YUiMdQL/mpv8S
	 WC4T+gdQfU4/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952B5E7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173386895360.20016.16559457491785907405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78f9c3ca0999f3e910f1022dcaf21e8270f49e452ecae66429ec79ad3ae69d42
Date: Tue, 10 Dec 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733868953
