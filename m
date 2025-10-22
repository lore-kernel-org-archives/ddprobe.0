Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2739D1A317D
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761094794; cv=none; b=DQjXvmmm8TGbQlVcg+2nybDt7rp+DAxfmbhxqYpe2qZ6wc9B0bI4e0MWFV0iR/cmn3EbofeTIzTtfZl9Zr5Lp4hcacxJTcGGhhRspQ89MkTGnmenutAkeKcLottslWBlpbzKoT1UleCgOiHMnK3mlLRa3OrvOATDSg8yEEs4X2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761094794; c=relaxed/simple;
	bh=9NgAFhABb4reL9w+DLfD7n0DxMWK3KMaL+p3OeumPNQ=;
	h=To:Subject:From:Message-Id:Date; b=XcjMoSrziidcsYgK9dAsNMAu4+255dF2LbSuYDykBbFuwaQAEyXliJTdpHgsYgR48MB4Z7PdYMZcBC3FHFSGQc4EsgrGszHFqhh5ObtHN2xVlIO07D4cYfeDLsbnv+f7fXcimZBnaPqKBMnv8nnwc75+kxs/eFDZaKFyLLSUqSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0QBhCDP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0QBhCDP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5244C4CEFD
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761094793;
	bh=9NgAFhABb4reL9w+DLfD7n0DxMWK3KMaL+p3OeumPNQ=;
	h=To:Subject:From:Date:From;
	b=E0QBhCDPux0PNof36OYtEu25EEYLqT/5IWlmgObzXkoL8lb/5ioq7UX7OyVNtjadR
	 uI3x81WERYM8Yf3VliIBOJZFPIJpwnwPgnqDETQ4CZWb/AIt6NCg1kn3bDrFGyNGu1
	 kvbl3dw5dUX8yr3WxbDHzoEEx40Vm+fFbOcJBIsYj8hqRQ068Ss2haYYdgf2144eaP
	 Hvyo9Vk7UxvsTo4pe6Q2wFt7dII5oetoLRklKhrjIcO+FEws/mmjbzsa7uxjOzhv53
	 IDHZCs+7uQ01Hj9V4wcAhsYmiO7qvVhzXVTaSUqxyB3R89bs37kE7/Czn9njj5q7YG
	 win5cEgl7ITIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913B3CCD1A5
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176109479358.16168.1550239078013150463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0f2364277bd996dd2093f526283e1e7d83ba2b63dec6202cd182ef2eff69bb9
Date: Wed, 22 Oct 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761094793
