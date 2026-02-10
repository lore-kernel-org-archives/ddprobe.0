Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A4EF17B418
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 01:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770687834; cv=none; b=XhS2aakOrndpurqNTkZ2HCTcbTif/mJl/fU9droYeXfZFeg1hWMSVpzeTFzBw3LtO+AOrZaRNKAaMv7mKvWMKe2LUzkop9mQwkhsHf3x62MGdeSMsqjG9ZbDjSf0LUcfM+uZza7Nvlt3ElgXsjYgV7LpEtBCal72FoSiCYVSi94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770687834; c=relaxed/simple;
	bh=jDtjdhv4tPsaNSKXT7swIJlsIFUEug5/UKedIL0YtfM=;
	h=To:Subject:From:Message-Id:Date; b=kNsWFNpqQq8fmHfT+4ifKStn0xRJCbPeefYSEwsU/YOgSSOuILuaNX6CO/Of4l8s4MQgVSqGR9sM1jQwPPCPWGFXrj9harl/h+IOvCldMxJLDJnGxSyzKZ5IzqoJd+AXj+Di2QlqHbnKxIoqSrtxQwDzsWtVs5ORYjBhJ7fpblU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hGHtwjus; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hGHtwjus"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 17376C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 01:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770687834;
	bh=jDtjdhv4tPsaNSKXT7swIJlsIFUEug5/UKedIL0YtfM=;
	h=To:Subject:From:Date:From;
	b=hGHtwjussnB+fn6U8PVtipNmnqq7BIvIKC+UN8uIXUebCuY2auNtltIYRuTRit9nX
	 d9fqGdK3R+rDq2QQ4ZdxAiRv98zX6tfR09ZGbCIogldycdqxocyCzy3VuHxxVsoRtY
	 6bgX0WcJQP2Cb3bKurL0ekfNQc4Qwu3C5z6MPG5CmS+4HY7bB3i2gTqamb+xhE8J6m
	 b76tiUmnQL3RgC+wp5pRYreGhxS4coV2LJ5zSqaYQGn7cGFiJ+gA4HyZ2Z5E4VjALa
	 b2Lpoo8bXpaumeuRvxEPdGA3hEKvASUghoyE+BMTkHjoSxVrjX5Wn5fGxMI7z4WgQL
	 Ku7E/oQ0FAvmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EBB06E94625
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177068783388.8031.17059332293676775515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50e7fe4a6f97b7e4f10022d77f5b86dc10e1ab877076fa953db3f15b5422f290
Date: Tue, 10 Feb 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770687833
