Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C19B121B9E7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758208193; cv=none; b=VvNQrfhcEinmU29ggddwshEQD7JhNWH/qIDrnIJLUId3YWOsfSL5b9LveAbfzOQLcx/RPbYicqyF7UY07o1A+7V+c5f2XyEfSWWBrWcIBNCVg23twneeNXRi5QvDKKyKSLesBBH+HcbcXC/2NNgVIo3yoOZ2EuYnkGZUkN1mXfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758208193; c=relaxed/simple;
	bh=FNsq1MWthe1Xloz1L0rIh/O/wAbcEnm+2hYlS2a10GM=;
	h=To:Subject:From:Message-Id:Date; b=UKzkb4lPa64/kEs2BK5WBeoTPpIfC1ohAjTN0hg/Iiz/69x6JIpNxtUMSdDH8UrnqFgN+4jFgDfySwyxVM/W6caxJG9/Bl77jQbMd68g2Ni3VZsUOrQT4ZcIIQaWw//JM2F/aISwGRyI3wlxiWA2zewbdoJp3A8ZFpOS9y6cjjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LYs67e9o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LYs67e9o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17CCC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758208193;
	bh=FNsq1MWthe1Xloz1L0rIh/O/wAbcEnm+2hYlS2a10GM=;
	h=To:Subject:From:Date:From;
	b=LYs67e9oTfHOjESUJBAPT6V1e8vEOmXyw2kYo0YDuBCVFDRpQIWfeOzeSiwAx6wzm
	 AMwc4MYR1I0nteE4hJRxLyu2xmAMzHX3c9T/Cu34Dbv+p5x89oiNAbrqsbIvmPRkjs
	 5MTdRznvtvSgS1gxf4G8bgdSkmCuV7bBnYLHxcYGZeIcIf6L9NyL9pIEtsQyxy6Ox5
	 nqn+FuOOHHCMBsoO46WqjcBt+IgzIaMSjfCDzvegBIVsPPyC/zxFP7nZHe8JLVqENq
	 F6JiRmgPNCOA0qsmmj1GhBJGpOhzfpN5XHB/CDGYo2fLgMoE6TClYZe3q8RoQqcq04
	 nZtRORc311iXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909B1CA1013
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175820819358.13127.7883827693966058065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae7e1d41914041f04d1b357b905277a1f9f0f63badd91170f0cc1f969b4ada0a
Date: Thu, 18 Sep 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758208193
