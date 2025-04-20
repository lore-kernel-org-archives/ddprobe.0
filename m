Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE791362
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745117994; cv=none; b=TGKA9rw/t71/+Iw1JO+7PQ7aL3cOBekyF2r8JpyEKZgGXYFKI2xULyDT7h+edjzPSkiZyYfEkNL7hCgZDCC2fgchrMmRoeyKm8qawckhJQMMwioT2UKtiSa9kmfkGzvtWE/nbJb8MnkRy67pDFUEUNH0mUEfuKRkoqDK7bFc/MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745117994; c=relaxed/simple;
	bh=FSPiZcI23rqPTg/gbie0FYPJ2Phrhd/xXWtrBpzHbeQ=;
	h=To:Subject:From:Message-Id:Date; b=dXFFQ6YmH+4z2x2kX9wThg+oA5FYR13tR2h5srYM29QvYMbX2dX/13GBD2k3HEWXl1GsExuIYjtF/GWNO0uWqlSx8QJboXVvWsj5Gyp8+7TLhTQdYAPWWH+kkTVTdVAE1jM0Sojo2emDJ01NNud+TiCldgqNlMWAOxZS9SjN/bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YHmsErjR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YHmsErjR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8793C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745117993;
	bh=FSPiZcI23rqPTg/gbie0FYPJ2Phrhd/xXWtrBpzHbeQ=;
	h=To:Subject:From:Date:From;
	b=YHmsErjR1Evkm7bUBfOjwLXujGNdK/k5Ib1zwrLpzqaJLNpDD7i0oX/HPX3IvzF0i
	 shV+qjELwjr7icozf3UR2Fn60A3pgkDVtP/HVITHDVn52nvSSk5sVqrJXPRPTlvMYO
	 yIRk6l4s+qgGAAN/F3Vf4yCZIVZjPLMJlIWrsm/cihBBY34ytG3ZHs873YLk/9MfzZ
	 xl39fwthrxqZcfbMCbI3nBw8unSm97/IOgwz7piWE94A9MFZvHl3PF448dA13pNlUt
	 Ra1Qg2p/v2p/a2UVsTi4lbmn6wMCWmm8hRWppuXT7GWF1i55JW8W3vlb1KiB3LVT3o
	 l0RBfA+PqOJGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F9DCC369CB
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174511799362.32701.674991263590265681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 872d434f1bc92627962c2f5abd8ac50fe5dde7ae1d36addfeac3e2db2eb3e6d7
Date: Sun, 20 Apr 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745117993
