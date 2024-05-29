Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F09A167DB1
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 09:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716975863; cv=none; b=FsA8FUyw6m6q9owyVpZ4mWrumwz81e+LYBy5fksZuR7rSV5Zxwd09oK4Yv+BYt6bPMwatf2VMaUCyN2nqzXHNN7+aesTGZryhQIgFFKNejuAEDnSanX1pDjmjVYuW/JWsgjcIh4yzMs+gO3G53lfL2KHlenQoZkebCYDqXFbRtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716975863; c=relaxed/simple;
	bh=oBJpyeP/wKGlmnAzzutS8ObSabAyala7ahYCPao4KT0=;
	h=To:Subject:From:Message-Id:Date; b=gNk+J1qGr2G4jfplbpRN3qCwGArOGwfaoC/UbbDmSFmxQJFf43Da4Fuy9MeYJnaMTZfxHLkNF8tbsFy8YCpAcF42VNzRVmPtK/6H2hmtLHv1SVi1v4IEZCxnP9K9YioTIoo7UAGT1xhv1hwFvoKE1DzqVeH3WiHpeoM832Y9mzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MR3oFqGa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MR3oFqGa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0AC7C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 09:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716975862;
	bh=oBJpyeP/wKGlmnAzzutS8ObSabAyala7ahYCPao4KT0=;
	h=To:Subject:From:Date:From;
	b=MR3oFqGaNQ58nFsKJj39xEYaWBbh5LBEiGxGU01Vraxak8mXUx59tuY+Sr2utof5F
	 rgrLGcfOwlzkudx6OOtuPZShG1toYFy7pWGjPvSyZdcFZSxgh/eGEk+1yP6dr4ar8Y
	 7Px9W+11BzTwNdCRipn5yM3pf/FaWNQdS/mEsdopx9g2Q4gSFMCtOrhgg3IVHM0zf/
	 0ce1sR9tLcqJ7BD6kwkV3+3WEW6toiSFShTR1ufhGbU1HKtex1s3rXcb+iy7YP+PPx
	 upzJY1qduHeAzfeo+y5an4cML3KR0kZVss9OWjRE+mptCaKAdt3Xu7LDLxLHAtmXGw
	 k3laOZSqfIoGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C989BC25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 09:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171697586281.17139.11367295153513800953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0f50d8b28024b0d1ebc8976fb48b3ccac9fcc720fb2fe0eac048b47ae234627
Date: Wed, 29 May 2024 09:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716975862
