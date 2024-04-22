Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6E31E49F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 14:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713797423; cv=none; b=MCDco8xnAGKo6nb2gS3hjqhynwsLwzOhCuz9ch8bAVgYjZmFWd4B59JMTNq+hTzGopS4C7UAzsF2SvqeBlT16IKoNeut1tDGJmuW+I8785zLazjtP0r/KXFGnk7vz76W4eLIBZUEa9X5T88Gy4indwPHSLTC9NtybeE5EvUuAv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713797423; c=relaxed/simple;
	bh=LwU8J8hmTvFkkZVWc7B0m7EFt4YTrHcFv5RHujO7exk=;
	h=To:Subject:From:Message-Id:Date; b=URy7mwqoJkHt6QTSxRCTJAcDD2GKFeIloFE0UDC5TTKd3N3uPyty7yR+4DPmmPq2UT1W2aXJtOd4b4swlCz9CfeReQ0TVCXMv2zftw6M02DfOKEZqEPQTRyF5DBY+LmHTWeKFEta6WWDAUOTJXUc8Fa2bFqwQXuuMxlTh7eKoAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lLCSBt5k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lLCSBt5k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2E7EC113CC
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 14:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713797422;
	bh=LwU8J8hmTvFkkZVWc7B0m7EFt4YTrHcFv5RHujO7exk=;
	h=To:Subject:From:Date:From;
	b=lLCSBt5k2BvttG9Vea+EKviHeb9KfaGZLZkYmZv6vLXkHaeVfNwD0ybOpD6lrfeSU
	 e+7yZxJaJQSglmEn0GRk69c9aXOceNLNWtkajNSRkJwvdWNgglCc9TRoqXe+8xJiLI
	 XVPi859S9VnlsLH2g111iLDmv83Rh6EVXlvc6vMJLqGn62ZxkGRPKFQ76PX0GxBNAP
	 5JlrYcBog45HGsuofOln6q59AP5kH5KqRxT078IvSiUWi9zFFpJO3xMpWLToxsD+U8
	 CEhG598RESLMmMQS01Tv26/2BEjLEZY901Lddm4CwbEP3VBXsyY62+UGMx1YTI3oKZ
	 R2pL20onL8LEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFD38C4345F
	for <ddprobe@lists.linux.dev>; Mon, 22 Apr 2024 14:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171379742282.8095.14469357172865360864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d31c08fe9f11a5115cb4a172e86bf4fef9a9ac698187a1449d2e052093c5b519
Date: Mon, 22 Apr 2024 14:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713797422
