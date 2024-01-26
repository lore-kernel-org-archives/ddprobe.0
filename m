Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3FDB20B14
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706293096; cv=none; b=e2o6i7jbg/e/m+VqqjM/yHtc3pzhtJgo86c5I4HJMMJJO4zUsK5QeajDOutxrLoA5PE7DaCXhO6Z6xoeRL40A0n/Im5+a5OTeuh3dHgXAX/B/WEmkOuN43zLtZ9pq+Kaz8OHPdWXzGneTDXYzF8lHV1om33cdtv3SzVg9jR6Sj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706293096; c=relaxed/simple;
	bh=BHfWXQrsvXWZJj6FjhnXEkzjh1pye1+n+KrRoeoSiew=;
	h=To:Subject:From:Message-Id:Date; b=ouFQrhcQqV8WNLP+Vnq8VRfCqNOAQq7jXQQMP64prxxH+/pu6+BmgUj7VVPI34PICykXqo08Bv0YAYVu2ghD/0H5/MhGO6Mkqlo+i8qwAE+Q/SM67OeFduJHm2Jbp9Nx64tvCkzChfp13dXq+/OLaMx2zl0gi0ucIfxlNUBo+Sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPb2KF1J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPb2KF1J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7711EC433C7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706293096;
	bh=BHfWXQrsvXWZJj6FjhnXEkzjh1pye1+n+KrRoeoSiew=;
	h=To:Subject:From:Date:From;
	b=jPb2KF1JC+mBtwcAkX+bA4Ou78OuCpNnEerEjSQDPwc6V3m/Of1euoq3Nv/FIeCXL
	 osITR0hLOpqlTD7/C1eB7tV2k29Fjfls/t2ECx62uP2ONiSaJeWo1rOnqbltVIF8iD
	 JIIg70035tR+eioKqWVcIzNdTrC04tzp2bRXZPPozsc0b23U9jGBDs/sTZWqXnFgDh
	 UfbynaN3GJizA0nlt+QHOu31dutyYzyPkz3lNYWti9BB+tmrxObUR+YII7x1UW7cQF
	 y2WTC6W8cgO5EGQpG+0NSQqXiFHJI9gN1hTZGsZakfyisrrNXg4Q2G1/duoxS+2a/W
	 fJ65tCPNkjeaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DF0DC47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170629309637.25621.4556291550025163927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 982f7fe8ffedbdfe901a37df69314fe9719524bf58e01b4a5a6a603d91b81da7
Date: Fri, 26 Jan 2024 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706293096
