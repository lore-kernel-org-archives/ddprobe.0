Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DC8A4D9EA
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 21:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717968443; cv=none; b=gkc53EQjvU2sb2WTlWS73qj98e8oCmJR9fbJkXCZh9+T2KMbEydVgsQVCM/KzIE3hyjGdRrxKOqJDcdE0+EbmJJEzvvSDkG2Eq8E+VnkpmLdtgxesj881dZYdVTCeKfXq7BbQHudOr9sImSsa+oUHfSEsgzKYolKlUuS0PCa27g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717968443; c=relaxed/simple;
	bh=Q4zJKcO84db4r0eYqoOYq/TTjkqdhwJPX7cBMi1Ml1E=;
	h=To:Subject:From:Message-Id:Date; b=A7ldpKtxU6xtOBQb3GXGYS9df3tJfPg3Ug268TD+VsNRtg75qscIf76KePaqHuy3lzVXFaluAKo9PN5cz3GjEgx+R3xe+1ZgxUh/jvyH8at2yHj2MJ5a+8oaEjubpeYXXQaAbcBBWpi2TKHZYSDnAGp9SfW2z4iYU83YZugG0N0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CDc6HpJ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CDc6HpJ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DADCAC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 21:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717968442;
	bh=Q4zJKcO84db4r0eYqoOYq/TTjkqdhwJPX7cBMi1Ml1E=;
	h=To:Subject:From:Date:From;
	b=CDc6HpJ7L+m0DPLWef515BuehFMKpxY+C/hqepofct/LiiCybrL1RmGxx/HvKeojN
	 WqDKKw+5UHvVz/625G9QYvXdCxhnCEwdAHcyO1VyzzSjKeYAJNVmnd3C99vNNJ+BBs
	 u1g7utmpMDmUECvLbnBOHOpoId9BSIARDGW6pBrDWGea9ZScsIfz9eyq3DyRB++Aqz
	 ZzbheDy5aO9Zh5bgDti+KzQTjHsU1WlTKLEo58Y6tRO8DPqxTzw5QvRvmsZ8H4j9GK
	 UujNG4CRYIieHAZbCYDfYlAMIGbQaKWrYaxq/YHit5vOdzT687YdTGHoa30hsZATZq
	 /fM/Flt30xByg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4CE5C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 21:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171796844276.8484.187076942826348976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 429498d9dedf5f36a159bd81c2140473dde37172cc179b2d191965bd3e86fc5b
Date: Sun, 09 Jun 2024 21:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717968442
