Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4991925BC
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758947994; cv=none; b=CDy/PmnPeZFKzwHsrVG256vxA9S/E/VYm+T1iydBcUOH5rkPZGD/zIMPX90//4p8r/QiwNfhHaExiJHv4tofZ4bdrsjBeUNLMYk/8pAdkMBgAue2uvtgJJztvLZswWJdMdysNnhBUCuzWB0VA234GoJaJXQqQJqaipmvh+mCzOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758947994; c=relaxed/simple;
	bh=1zaL06SgLGQQWZB+jcJIIxijZ0cqyuqPDDnXCddXO44=;
	h=To:Subject:From:Message-Id:Date; b=ldwSDOW6ea4Aeuu8HWm8rvRQrEYftleelaPi8HGkVsM0uJGZUah89snTRx2TshbP8XXl1WHPU5Hy0iXSAYqwTo+vBx+bc9rITo1RkrF+dv2HCDngL6qVeOBtOyZeX4DhigT7hWI2LGrl1cH0Ao8aHfQZYSnDJ3YgO9Elf8SBSmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A69bcQmR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A69bcQmR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB212C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758947993;
	bh=1zaL06SgLGQQWZB+jcJIIxijZ0cqyuqPDDnXCddXO44=;
	h=To:Subject:From:Date:From;
	b=A69bcQmRmVVIAZ1BV3GEP9oHMEN8WxE6CRQPTpK9IjkIDGh3w1rkfW888Oj978X8c
	 Grsz8Jhv6TuNUTQi41QtO9u7v6NXjJUYKzDiyEC7jA8pZFw8XH9tsZDT951I+PgLw1
	 sHVKg7EwI9/SOlqmsFdAhI5a9K1X/+qTlFO9PQk5gRe7txaCsraIEB1jDSF1fjnLJV
	 D4mA8Z7/sdysKbj3deqleUKKxFmegmp2bMVOQzQ+sn59fjTXG2NquKLcu/V020jepj
	 2ngk5ZGgVDZ3odktynfvSyzhhMR75TR1/sN1B/UmwlJwJBvGR434/v++XSA6P7/+ye
	 LJ8LQ6cNYFySA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C2BCAC5B0
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175894799359.15010.12484890366128388725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f106bb72ab93262fa9c97a3369538514ee2b8293e196a531b4c9ae4139ae6b53
Date: Sat, 27 Sep 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758947993
