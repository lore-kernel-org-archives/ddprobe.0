Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E81B25788F
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712050697; cv=none; b=oWsQdSok+LeCYl+leQ0KjhE9aNorVceclmv5Yf0OORA8wuc+cuaeNd8MnTvVhxFZWZcxf0Rx68pFOUmTsbfHnpdNRKkYEZB2ttV25EvqTqbuBqXGB97SeMKRHW3+TN0nVcCsnWtr8j9q43nnHNkMDR1qAXCtQbj1YXtHx3FZylo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712050697; c=relaxed/simple;
	bh=Cw9uWCCtTavJ8GyCqRriuJF8Y3qZftpjveHhW0fnCSg=;
	h=To:Subject:From:Message-Id:Date; b=DKiH996qo7mDKri/qaZDZSMsWUp3r3XHUCBjm2HfHmmgEMuxiEChiD7KjflaPEeccMySv/4Ux5sA19teyQccbaessh0IjS/e0doVLSRk0y1gaP1Wjo2+OxMVyVRyGRxWNifKURLrCBp1odHcwgqPxFaYDemY3/gepyGgwu1DW0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIav2fHr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIav2fHr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76A04C433C7
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712050696;
	bh=Cw9uWCCtTavJ8GyCqRriuJF8Y3qZftpjveHhW0fnCSg=;
	h=To:Subject:From:Date:From;
	b=lIav2fHrHNUDBhHzUomACp7F1z8jUO1mFtu9N+gY44UWaTc1m3sFhLzA/py1qkXd9
	 umXul+q5NcvopAcm5sdRQqFb/PMWRWq0xu+Q6BqezxxtybNHENgbMrDjZdiyfR5B/8
	 oBC1XG6NzuFBiOkKK70Egf+Nn7Mjm4VubrcRjPBy57w509+oetekAkaP0S0W+uAWH2
	 wKcbmD6sb75IILFAKhM3ILi3eXTitYCXPmSdxUJhZo4qRpaC9TCuARo6FozAlLcDdU
	 HFUFIl9f28VRoj4e44V/r5IKQsqR1VHRCgPQxbkWkOwzP82/eCaKR5HngVybbhWpLc
	 TCOJTjLRldePA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65C0BCD1284
	for <ddprobe@lists.linux.dev>; Tue,  2 Apr 2024 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171205069640.27699.8323121146319856448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 217ca98802f7f835253c24688679ecbff838c0169640e819373c15407e0d72aa
Date: Tue, 02 Apr 2024 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712050696
