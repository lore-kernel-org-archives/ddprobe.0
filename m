Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3189832938B
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765971834; cv=none; b=qw0INY1dQR2caqVGo7cmuaeCNE/GwrVEzVjwCjHJcAicoMhyOzTTwCOLXeRUo2k1PVc1RkfiIv5fJXS7uVVJu1hvIuW+YXBcSupVXjz07NirwnlPk+2QbBLlPsEfeteEruPDhQ1D0/0eoxghSiQDtumFryl0BNOBLKhTPp7569M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765971834; c=relaxed/simple;
	bh=aLgMnxfieqWYFPqBPwNkXPj5JxbykwHBl+vS/rosboc=;
	h=To:Subject:From:Message-Id:Date; b=n3vWWMZlNe5Pa3HZ/70lyxwwgbS/kSHLz2bL6A+UlyseFOUP258LxG/GZAZXmoCY7JGq4359eeBWJz65ofm1g1G+XV/dkyCL+KkIzIUqRvjzlhlTMQIK5nXPTAPD4B8kLzIj1PIQX3GS8uzNorTXhL3kMYzsinxDVeE63VCMwMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+XIys9k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+XIys9k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2833C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765971833;
	bh=aLgMnxfieqWYFPqBPwNkXPj5JxbykwHBl+vS/rosboc=;
	h=To:Subject:From:Date:From;
	b=T+XIys9kl5//dsWEJKXkCTmYALrq+wB/B6HoYqmh3Y0s2zrNazbL3k4zf3KS8YyHB
	 9nzrKw0OfSR3VAZyKSFFeZ6+ooFkFCyf3mcNKGERrpxLFJdfGJXPLJXxoK/kesXLm2
	 tgxTjq8e8tuO9UChFLLHKD/NMoFiWx5vdh/kRIUD7qgzFIGxhmK7ig4YOeDT+5XUJh
	 ZH4Eike8jAvARE3btpWPY0SOH5lENByAwxbbLFp26NeZ2tb8LXGIBln1mHYbLW/E1V
	 l3Qwr6Ol7fwjbuVvYLafuPuiC2gELlYTbM2EzvB7hLyVOc/yYt2E4y1aFcUXQzsbgl
	 Zz0eNV1pItkpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C452D6408B
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176597183360.24884.17652406518371836391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a861fae53b2853c91fb2656aa0e91cae0c652445479c92e70b46e36052f4e530
Date: Wed, 17 Dec 2025 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765971833
