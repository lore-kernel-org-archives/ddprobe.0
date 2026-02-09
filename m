Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331E8328638
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 20:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770667434; cv=none; b=OsuJHGIKaTR4p2Vlgft27+rUFrPR9rFIBzcdx833ryNUSKh5XhLyaRvZilcfc/r5zoZBdoo2W5nI06ub3T1VPom+A9alTe26m3WdAjy6VCA1ms4h3/MeWTaqLjceIUXJ5fIINMexACu29u0wV7vmWi1c5rCMcE0Ux7BR/QZoCUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770667434; c=relaxed/simple;
	bh=iSSGtVcQYGc0f7vDP14/JKZ9PBrJw1FkiFtnE7TftrY=;
	h=To:Subject:From:Message-Id:Date; b=l7DZFwGjOsfTZH4Y2D0rwIoY5XdseL4rCmJROVJHNwW0l/v3nRUGuaHMcr9yOjTkc7sPcCuQsuyKD4UHwQg3YIP1ia4/qF2qylU9yMiN0SG/ziIQVWP4S3dc41v6g3mZcSCOF2C1mdM5I5FVMgBzYN3B3fMTgg66836fgTHOuk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DDjNjMex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DDjNjMex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D01E2C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770667433;
	bh=iSSGtVcQYGc0f7vDP14/JKZ9PBrJw1FkiFtnE7TftrY=;
	h=To:Subject:From:Date:From;
	b=DDjNjMexTX8pfXj7hg5xCDEsr1K1xnGHSrXo3Y3jM1WeaJ0NDJ/sd282ZW33Jp2pF
	 dSaOwMUwbnL4KW5GV5pLVaq7WjY0s77VY7XvnoDB4LyK8xGhTIGO+cXb3owzH9tFQW
	 wHmyiPY8312UM8iPeV0FfmZYm4wFg5EFMAjm9mcWuzL8GVxH0iD9R9l55sip2CDeDx
	 KmjhH9o2fP8zjUZ9urTuEZZP3AGXdxnf5PPBGkLGN10fp8AMU9sVFOWnabsFLkFN8Q
	 gf1IzSRmOqONFqZwtnVe/p/MEwjcmeTczv3S70Zjhq3qbmJVo5kVgpn+8wvLbPzwLg
	 kZk4NFBTxYrsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD87FE7E0DB
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177066743369.27628.9822367152958509613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23bde93923d07a0de22120a97a6966c8125238cac6e8e1ecbabecdd2584d9710
Date: Mon, 09 Feb 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770667433
