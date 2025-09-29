Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0CB2288E3
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759171195; cv=none; b=QCRVbu7M0eGePzVpA3DH2Np7AUEdECMbyrqJhHDuCofKkpWvwGmg1V/ymWPkSaMV3cNHd6RTe+CHFhIlOFYaCcyYpWdhIDL7hxlpssxhljc8XNL7CAAfqMcLeQgMszXxycrAzeKrtjMT2ZhVYwjiHfKx2izoP3cjadDySMWayag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759171195; c=relaxed/simple;
	bh=xUumqG7kZ9n60iKeUzsNcXNAieS3jFtFPtNmi1VMp/A=;
	h=To:Subject:From:Message-Id:Date; b=f786e0NR1cIziDSHSzlbHITdK6pxeQwY27+6E1SZywZnKgl7xFH1DtljB38nTHNe6dU2U3vlh47DnMw1jgu16URoGCB3rdQokpEDAjSdXAaGQSOakLx37ipq3D5vvbmmfxMSyW2wMMKrGrbLfUC6DMETFyZ2EEiQpXsX4IsYOmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bljCfRsM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bljCfRsM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF05C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759171193;
	bh=xUumqG7kZ9n60iKeUzsNcXNAieS3jFtFPtNmi1VMp/A=;
	h=To:Subject:From:Date:From;
	b=bljCfRsMmPPVhTQbe4ocO8fRGndABcm2xDaRRvjRh8TYqye98t+fUPvFiF1VyGW98
	 mH9t6yG8SvtRox/iIDgP0sJV9ilusuBRM2RPxsfgcktxfq5UYb7purR7waFR3iHDPk
	 dYk//e4k+yxz9/Nok7sKdKr0u66PV3p6V4sFOdtZNxfipvBBD8zzVpEWpmL1BLNXnt
	 H0qrNugiu+wC9kbJfXvHjM0Iheu2r5Hhr5pPnZnweHOl7xgyvWr5Oshes2B7rSjz03
	 6KlBKLWUY6spPdTfY9Mzk4kwNuFT9cXuX6lxxMWPjI2cNQ5OaH5tqJ0KOUlIw9u7nL
	 ev4WZkVqxAKrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97BD1CAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175917119361.11816.8907333208549494334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04e227ec96b9f4202da343b72bfb7fefb69f11db06921a5a5d4842a1118e9dc6
Date: Mon, 29 Sep 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759171193
