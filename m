Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4B33E3DAD
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774962294; cv=none; b=Yd+jPNAyjcVAA77DaMnz+9i4M8aRUUX7aIqHD386Bb7ZaAUa8fGSNUdooVGv6eBuXVrYTYIfTaDW1iGRAeSJ2bWSZGFA+SnFdjlJ+QpypR/5klEmEyQFqOJdV+NNDk/via3HqkcNwnPofzCUJaQ5rzPLMtbZQNGya9GSjoXMiR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774962294; c=relaxed/simple;
	bh=fY9Q4HIqg83HT+IQvOcnDx18oP/TEypjcB0YUBjte9k=;
	h=To:Subject:From:Message-Id:Date; b=HmFaW1pXm3GxpLGuDJEeBq2qVk5cgxTrqJeXelTxYByHnw/a4ArM9vltf7GLfYH8G/JCsqIlCKRHGQMFJtfcOofp0vcMeSPAnwp7P17nLwuST5k7fqLMC6icVwr7jrOulHjia/V9FucQuMCaaKdNpYL6lFjc61t9w02qEYooGF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUS+1y9R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUS+1y9R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4291C2BC9E
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774962293;
	bh=fY9Q4HIqg83HT+IQvOcnDx18oP/TEypjcB0YUBjte9k=;
	h=To:Subject:From:Date:From;
	b=KUS+1y9RiMsnlyrnFeVRZHVV/9mJZg9YpFmx4q4J/wyQgUtW0QPVDr/7OM53TvfmE
	 lKSarbBizFV3OyBar3GLHktkS1CqV3/is3cWJAYT8NdusXkk0zsV7tmf2RTi0QATtb
	 XAp9SShE1xOn9OX0pu7krCSpfS6ZXuJF+L2htOQGrApt6/0+jmXkirpPa356DUD0iG
	 e4OOhaBKq0slzBvsIugL4pHQj7MkYhzRmZemazcIv92sXrUNJywu7gTUmn+9YLAbEZ
	 MhrfKD1yoAhV0+N4dIjJ+HHL0sc9aBvsAWFlN/qU/UNgKax5lACuBLdY7vMg4G41/+
	 tJOGNjcHopI6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94115109B463
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177496229359.18151.16600003104308890772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 714ffc12e9ffac59d24a31d7a74b4d38adfa4cc7471b58e6854fe488bb1b8e2f
Date: Tue, 31 Mar 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774962293
