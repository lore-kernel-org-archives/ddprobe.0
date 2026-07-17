Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517BB3BBFBA
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 22:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784326114; cv=none; b=mWu2jMVJCXyarlJFfii+UE5CTt/3PP3oM6aWf1mFMynR86F/v52+6vL7Zt3UH/sD0dgV82y+el+qw2JUl038K02TnxSIC+WEgHYqt5+YOUfD2Q6xxMPrJifIoauFYMMzfHMzmgJvH312PlUdfOyt+MeYaM2aCkogYLwfOHWKvic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784326114; c=relaxed/simple;
	bh=7yBogBK0Xk4OJkUnh+Da//nZnJ2wFdEH3xvk0J6Qpng=;
	h=To:Subject:From:Message-Id:Date; b=BNmObH9LRBwjpYd4+dTJ4LIqxdFgG5UqmgNkSvBLs+82UgFM1fVvfbX7vfvAnqwrnUWAWfvpBMx9VPF92gYINYlkokvpfb9rQZB0vXLfyj1FiJq50sArXYzDpv47DA9TmYNBaTXvhreLxN4XX7jd9dplGaB9WR/IFow7gqohk0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZJquNj2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZJquNj2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DCCC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 22:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784326113;
	bh=7yBogBK0Xk4OJkUnh+Da//nZnJ2wFdEH3xvk0J6Qpng=;
	h=To:Subject:From:Date:From;
	b=pZJquNj2DmRPZ6vxMgtk+bAixvNTpCem5czzU4dlXET0enAX8ZQrCWoyTfeHLrP29
	 /aKiJTV3zONj6TVcd8os43Wmffs2LmfnGpJP/zH5zW78ZuPZhNKKdf/VamE8KExwvI
	 V6u16g5YlDLxk3EkPbAbbDubovYoEMLWfCYaE73u3JuRrJnKEIOPx05FJM9R0PiP2q
	 EVoDatfSlYYiP04bnoppuuvctK+X2j/xGWTKTxj9DkhwYkIuixUi4yUSDFW8l+jBA1
	 fO3zfSIm/SzFuqPC1gJ80LHOToMe2Y6kXfl3vAf24qoc4uZwpxUMi28tio0Sf6za3o
	 +IyeGDnRWN/0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3E2C4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 22:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178432611370.1172.12475468685444438383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4d71355cb926a0792e662cfd32d2635be7200e9898922bf5f7a286997c407ed
Date: Fri, 17 Jul 2026 22:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784326113
