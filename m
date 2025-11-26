Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C4331618B
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 07:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764142974; cv=none; b=ISqpd1cyXq7bfp1uu4YY8ZSdRF5P5SlYLbHYlGW107DAqE70ctCt+YBjv1/pt77k+ACQCfd8A07tBeXmQuAPi42LJHV5nBO21qqkKns1E9K+C6P/3ygEg6BCipiaE6odaODyyNY05qY/gF7HOApdeQyWLX7tOzj8jfEEIIpbHsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764142974; c=relaxed/simple;
	bh=OY8rELk+UQ9aLxd1e80x8NltsF2iQIOFtGiDVKuZaXg=;
	h=To:Subject:From:Message-Id:Date; b=bMEthTS9Ls3TFWyj1dlGq/vXw54O3oQ4BWIdeKwxw827srl2DyUDbbZagKZwVOvXVFjYDwqxNmYgGNcqPi+hNLNmJjJkzcK7+9MhtB615XIJoly27mbNAy6A90xq8s21LAb2+aKXBrj/mTu6QSh9xibidkvNymQVZhPIUbdNpgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q+U4D8WG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+U4D8WG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9661C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 07:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764142973;
	bh=OY8rELk+UQ9aLxd1e80x8NltsF2iQIOFtGiDVKuZaXg=;
	h=To:Subject:From:Date:From;
	b=q+U4D8WGeXeQrFQErEML4gFMzmDxi/tS6/SRWk7D4AWdICjJ74oAwchaDKzp0giVM
	 EYbI5y8zOxq2O7VVDnRpNBIb73gvl4kK5qQlb5AYXAXLFCNI1lU5aTbXkZoN2VkS3c
	 kRDcqO1mhiNg4xYYEVlr0jobxfqY8H58czxw6V3eYsVbhwFEUkVfZtA6/FG0pJm4C2
	 cY4XeXAM6DG2qEVSZgq9SVQE8SJ7JhCwlyWNt6vh7X96KDCDk9xhGZ2nPPJfEmu90g
	 VUJJt7OyvZC5S8SFC3OYccuiUYXJZ1DxDwZlLmiWEFUUYB5dcaROFJora2K+b7ivhS
	 ohq9FE/Wi+3yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1075D10389
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 07:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176414297364.13120.17507006746141458212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a763e3e688d946a1d55ed8d0866d61406b9654924fbee1c316d779460e2cf516
Date: Wed, 26 Nov 2025 07:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764142973
