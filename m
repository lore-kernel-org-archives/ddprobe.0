Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429E01BBBF1
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735934754; cv=none; b=Tuo1fnYgmW0qE0efRBfurcJAwqD+xjyCr9GL1drQNGNiaIAmiHOSyCZZlMr83RWrqk5fpVvpoyk48g0/bUgB46N0VYx+k1rBI9u+ereJi0JkUV1oZZoPtqlKcg57wYxMQMMmhhauxedqEbhAZIjRw8AP6eOJAd6X++sZ9FuIPok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735934754; c=relaxed/simple;
	bh=9g+dPoAVwodRnHJiLtS6I+m4v8zyL6S0x/kvcCqLNvg=;
	h=To:Subject:From:Message-Id:Date; b=NakT6mPyFtKX6Cbamslc01jjOro9/nOcUXIYCbWR7mUvnwt0WKsHv9Zv2Vd0qD7c0z7+FDaQdT/tanB1St7oREJLOTX1rQtuJ3ZzMdnskgo1ULDCuJtLGN5OjkQl05gSj2bcsMj48lXZTbceupzwZg/uikRPGp+zxdQJM11F/XE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKxqrKrt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKxqrKrt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4BC5C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735934753;
	bh=9g+dPoAVwodRnHJiLtS6I+m4v8zyL6S0x/kvcCqLNvg=;
	h=To:Subject:From:Date:From;
	b=RKxqrKrtPWAEtpc+LmWkq9UsxPpYINXowO8Y99OBLC7iEval4/52TvfjIBvcEzrNZ
	 5OiIC0CniHe2T50iL5gRFDMfAH7xpgFuBXQYQqDFz09TEu1xWA/og3j6SrYjlALaVi
	 LplYoah63OcG3PmvusvWRgJ5nsX70dKKougSPTpPNbznzgcn1smiyH/6udS1vIDD9V
	 910SGqMGJd0G8/MndULFcIU69nd1xLqprxyn5qj5wpkZs9Iu8aUttDEafigkeC5NPH
	 u+CXL9BWD53ggxYuuM2mp+t6GQtiy6LlY6mQ2Ed4+SSrlx4sJAs8O4vCZ0Wg/pl/I4
	 I7tKJ+zoU87Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F8F7E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173593475361.21002.5413780869930800119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c38a7ad94081c283fd4ea987392b414bfa26e4e2cb9f2ae4bf6a5dd7599cf926
Date: Fri, 03 Jan 2025 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735934753
