Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274242030A
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 03:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763869914; cv=none; b=GvVdkWLzj8pIxFywbfx2yuSMB+pmNABo+94J5tdJ5rvDghtne15NcnudPXBmmRv/MDohPzjpx3MfTGO/rZcfjjTyLjV1fcvOQ3+hxMKWhxkJHhE5vftfSggDHFrqTNB3h4dKPSwMeYnegHPmgB07gGhCvnu8D/ljUWlXwBjX4tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763869914; c=relaxed/simple;
	bh=d2Tr1K6SYzxJTeAkuaDtQz/iAemUapgFA95I+vanS4Y=;
	h=To:Subject:From:Message-Id:Date; b=GpfmnvkwHKMxZGenv3SFwkYvh2GTF2T3kvLeB7iDZpMgrYcz695+E6TO2SCdzmETN+dNVKv8GITFAAy96qLHvx3wb0VzynBOsE4jB/PB4kc3pdKLHNZfW4Frc25uXQqh75Xoq9BjQ4F2OuYxhXWnorT2C/9ie3d64/zjER0KUIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=htRgaay3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="htRgaay3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EFCC116B1
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 03:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763869913;
	bh=d2Tr1K6SYzxJTeAkuaDtQz/iAemUapgFA95I+vanS4Y=;
	h=To:Subject:From:Date:From;
	b=htRgaay3Um0ZUZdxrpqv/SrB151306HOzsW0EjYk3+GKXDBNpl1WZoHmUgFSl7bLy
	 M6gmDzO7deYy+T8X8WMkpJWQwcm6nCv2/Xa2ykkxoBqj7Qjlfn8/V9vBXJQNFZhYvn
	 n48c1FtiFnQ1yu4ZkIkYjbl2ClbHtZdyHjGVVAGxxtbmx64T5Q/a1Aa8Pwx+OWkZKL
	 KHluEBEYQu5JvzlrqzgeUy20HemV7uX4M7L5MAWp8MBM3eR/9ixgbSzFqvkGRGWxu3
	 BIH2DB/NN5eQbMF53J6z7yUEo9ssdHRVIK0rVDOsJPYXJsXNzxjv/vwhBTJS5TifA7
	 Zrwdg9LZfGNBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9661BCFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 03:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176386991358.25895.9518434774655800646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c655ad83e8c0eb2da26a8f2debf2e731f804a63f0966430484267b229c65977b
Date: Sun, 23 Nov 2025 03:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763869913
