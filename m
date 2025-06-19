Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D382630E852
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750369193; cv=none; b=QaY2dqoS3Sl5SIRPErfGdk6h9S7ObrGe1/10KCotJuOIA66vU7TA8EOlX49bEeBJYzKqDF+jP+7b2+1j1GJR+2K2pMI7LYml9C8jclfGRfKqTd4JlGgBPz+e1Jrdn/nZpMxnsTTwnZXSPMsrISeeO2CS5VWIzjI/RgfmBnyyaQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750369193; c=relaxed/simple;
	bh=R9f1L77Gl/0e0qf9MfPzsi8Qq41lhw4kGWiYu0gOApM=;
	h=To:Subject:From:Message-Id:Date; b=nchFvnEoC0bAE7BpEbBfXlgKrGCjRCId6HmKxpRuy84FCwf65tA8JqXRnrvUCchlhhBJuipXwMHrUPCwPIjKthGf66DXRHvHNO7TDYMmTLFIgnsZFZ5YBDfnJ/SSmjXIM+b5iOGf5LDScYOLrRSBHTRBtZTUUkflZa0VybYPU/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQPH+/XQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQPH+/XQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9542C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750369193;
	bh=R9f1L77Gl/0e0qf9MfPzsi8Qq41lhw4kGWiYu0gOApM=;
	h=To:Subject:From:Date:From;
	b=OQPH+/XQGswhR2pZHnSybww5Eowu369CzWx6acMGmj5krUq2Hoa7epuP6gnG7tEkb
	 kVchYZiNEvlC8TS0EjwhAHUgM2w042+n4dFaR3E9shbaoBNXm8+5L1tKvBgYXgVGPV
	 XiPr369gyY4Zc7Ui2qIzXJPtnGxHIBlA38iIHBlkAXMds3VvCtAbD03tQY3dej/9Sq
	 Oeh6U1cTpGG7aNNEWx80ZC+WLj+QvHnup5TJTD6YPLJDFeLDKk/jydZcOOCSeFYuM8
	 iNZqw8P+WWQE/OritmHhtqFT2bwl6KuBdPggD+heCVi1H+zF4UWQlInmuNabLm15uL
	 O28mXJkD58zeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF20C7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175036919361.17683.13733957632450484181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03d6a018fceaee6cc59a66f6ba0b7bee46b8c5f2d89da1fbfd5469c696c8ec5a
Date: Thu, 19 Jun 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750369193
