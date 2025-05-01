Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2976C126BF1
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746142795; cv=none; b=Q2UOhFiUbeOVhj/IL1S0Gcv2X6r2wFKjiEMb3UxZEIineRceUEqJWWUzL4j7tkRtE3PCC8tJqGiecbm8daKrkwikyuRgNNXo5ibJ/R1UxIDBBN6Y3FpLynGu63pYjkb5ye2PNBcGFuQsOBEjPv4sKHd7lJP92rp/Lap9s081gH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746142795; c=relaxed/simple;
	bh=DxFq88bF7yWR7o7yRdF2BaPAuQ/nf58Mq0cRZskDs1Q=;
	h=To:Subject:From:Message-Id:Date; b=RfMgNC6UrrEGctjd1w1URWCyMKFf2Nq/xM8U9NusjhyBHMLEPHz9UNOVIFDZ0PsiaWopX6nImpld1hRPEG0ARDtolJ/pjtBJtkiMBmmKW/Yn75s6ng77yrOi2sPHjwhEDxmWwMr9ahcdqXy1nIV4Y0G3/BUzBz4cyXzT5K/uRQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqVlLCdb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqVlLCdb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A161AC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746142793;
	bh=DxFq88bF7yWR7o7yRdF2BaPAuQ/nf58Mq0cRZskDs1Q=;
	h=To:Subject:From:Date:From;
	b=PqVlLCdbbo/mMOL74FV4ndiU2TwxR5/IjHcssb48c2XNzWKFEZCoXahE4WtGGU8lG
	 8Trlobq2l1ObaJl+zma6k6kp0UPxB14zJ47inoEh2XaJEiB6Dff1dKrQpNis5aQ1ue
	 RV0z4ih28zKTwMDqAQExPaF9+9Xa8IZSRsO5Tz64MMpWujWRfnc4jzHaejIBoHOvsE
	 q+tr3G8z9B6dPrxtO4/kPaXOjUw+IsBYlAPeAeKlCdxj8fMX+eKfE0oKrikJwe3121
	 vNUgu8h2PsyrwnWVUuJTjwp3QLqApqRKuf0mG9kICrCcsow9l2ITj1V6qxeBgYmyYn
	 WY3ZKEXVF0dPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDBFC369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174614279357.23585.8515772007645673916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94a6b92d3aeece09925836bb7bfb811da1c9c918bdd4797ba515f04913238bd0
Date: Thu, 01 May 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746142793
