Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C62633998
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732140354; cv=none; b=LmXh1Kw4bwta55E6JiwoKaHHtUzEgsrdABWG8als93/Oxwba5kubie37DF87bAWloeHZCafdij3UVpVxO/HWsGAR/3KAKX63bQsiUxCxTl+gvZqB/uzjs4gW6vcH61dwGuVp8guV66zscxzs7/ytsMu5NPgvwpLL28lxSMfTIO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732140354; c=relaxed/simple;
	bh=bBHDqX7XzhAi5nfwFwuUJ7jRwWTGIexfxl4tyEkaOvM=;
	h=To:Subject:From:Message-Id:Date; b=Y6FlUt3bUts69YU7lvctX6H3lZYqjbjPRvLUBExm2/mBFwwL9vlym1mS2/SbJ8a3jPe0EE4XiN6FC0/hZrYZe9o/B4UUg2gWxvbs4m9+FkdKavuWXY3Jc4dDaXnVwAMWoew/mrxy7aUEjm1cykZnVjiV4+mZ83MuhzmYHSqEDak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GVMUZQv3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GVMUZQv3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F7EC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732140353;
	bh=bBHDqX7XzhAi5nfwFwuUJ7jRwWTGIexfxl4tyEkaOvM=;
	h=To:Subject:From:Date:From;
	b=GVMUZQv39iOH4/TRwtD6mEChIH05Bl/aSYCcKP6J1MhDVsFKWJZCBikNVuX3TX5Tc
	 +w31riQw/5ButYaRC2e+1SKr7TUVCflyS53+HbqyZr1gnVCqla71yTRGNAkm1YwHVH
	 FKnNwJ6xyaLz99bZb588ycw7ucDfB59aQeIfsVkvPqFMlpvr8YtnSUnR/rL7xL4ai/
	 PWvBdxRweLDpPKKh39240RwMsbdzYY2ygEI7H9YbdmHfuUXoWS398g8EMmm+ZZMwNy
	 xXS8JE/F3Afjg1DViwgbULyi/J5JKOY3hd60a8Iic/OMa6kPYZpV7u4PrL/WjhJDNg
	 2bLWRsVDfdIkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92825D743E9
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173214035358.28643.18296532573201922663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc2bb862b068c977b244884f2812078543d8815761a6871f6614a974e373bdc6
Date: Wed, 20 Nov 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732140353
