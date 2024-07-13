Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70738F51B
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 09:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720861223; cv=none; b=d6iDa40umaoDDoFBhlYJo469xqaLPv4ZJkp/kFrqDVOhNMzMlr+/EAC8FdIsgbynGZXnCtGa4PmQsx3QypJ6LhzXMa1lf6NxMKq8pDgo/Iizf5ZjQqEjik0cEZZz/z1q3DwYA1fW6q6zRhPJ5DyDSkAItKPW8ElUJ1WU7JJaEfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720861223; c=relaxed/simple;
	bh=ShaH9pOYBocSXB/oCE2VlD7sKZ0+kwTGiBKfpRewpOQ=;
	h=To:Subject:From:Message-Id:Date; b=WFbzPLjpbznfWO+BgTdCAcWfHKVppNQVZjbh87OkLOG/hTXeX/LI+hNUObNoL4b/3ZUowttsNqBk/j8RAS3ntYkmsRasrCVVh/4KhVfB4fSvxNAM+dSQkcyj4hFteYeeKjsI2R7GkJ8HY4q7Wmz2RA3x5kBcBsBw6e3sFqM3mqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SIh7KPgr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SIh7KPgr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 033BCC32786
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 09:00:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720861223;
	bh=ShaH9pOYBocSXB/oCE2VlD7sKZ0+kwTGiBKfpRewpOQ=;
	h=To:Subject:From:Date:From;
	b=SIh7KPgroymARxShCrBSrY9twDHTY9LSLboixaTa4ctqaIG6vQkzArK/94WHcPaYW
	 9lG0h1eTTQhI8f+Zg5hvPjSh1ElkelxSHqWmrlpx2PfbUCmiINjFQGhwdLAPah79q+
	 X535yd1Xf3HwDD5sibusrV5jRVzZCyMDDC5dSY63WttNA2fJwxxPd/UashUie+Fjod
	 +u05Lj8Cd+4dFijPlWoEWgqdIIHu0g7iFXwFyzVb95xDv+V1LLjqbPZjZVy+LHac7P
	 HZFitpXI29z14wpzWjxsVqpVlztkEl/DyDr0xPJzJr44+htBtkRZL2llliTESKU8rY
	 Mk6h7rt46avmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D86ECC3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 09:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172086122285.26883.1453186562923465354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 466f800181e01648d252569b3bc89e7330cdf04d78747b80a0484fa8e3b9a0e5
Date: Sat, 13 Jul 2024 09:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720861222
