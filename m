Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8A91EF36E
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758317994; cv=none; b=qudfv1tS6pDBcux6Z2KaXL8iRy9zX1adYatd6DXG6CEOYz4Qi2RErvDC4kjaVb4jxDEkfXG1dv8F5RkDlGsRKPWCC0OaVIGcjQIE/Z0hY6xlZgX1N16EcOLwkGjK4sDB1TSGjRL/XhNubh4Tih6e2wTqRj4TYslgUk5su5a7mf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758317994; c=relaxed/simple;
	bh=tEbb2+kIPOjw1/NeMKArtTwD4L3afIJtNE11SIyPebI=;
	h=To:Subject:From:Message-Id:Date; b=BejWsKy3IcNEFRVUKXjx+JZtU9cd383afBnLgMDoDCGi//kt4Kgjyr5x/gZrfg05ZL1Kgq3/W0pPXr+AezOoqcc9tC9dzgRRyg3dLuV9gLorOPAc3ZimRLL/aIpciJjuxl2wFmvbHLWHDF1UauvVq58DB5wOmJxYnetAA4t9P7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBo/Af41; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBo/Af41"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B2DC4CEF9
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758317993;
	bh=tEbb2+kIPOjw1/NeMKArtTwD4L3afIJtNE11SIyPebI=;
	h=To:Subject:From:Date:From;
	b=aBo/Af41sOl0rexOJDE9Sl3Vw3O/SyHpec+tWptSE4zaa65oXciyPLR/jKBHp8cvL
	 mGXuictXKUZV1ota+CRMiv/pwA07UI1R7YF1UmyQKei4Yhf0sQUSHAwEzkDJo5LY4g
	 KTaVgSdFqxK19lSNM13LFXoIcZ68tKyCcpTekSr0jvXQeSn+0N2YT7c2ezKOG972GM
	 maoWM7o5QdNV0mLIB+/OmAtMguxuewgnTa5C1FHo6Zc+ESLMIvaiKy5occIu6F4ToN
	 Oshso4ubC1Y2KSQyP3cwWHnnpARzFGJ4o+f/6Wj6Ed1YUb1IEklptRSBbjeMdZSOWR
	 q/UXDmPTOGugQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B18CAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175831799358.16529.9143915029919752987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30990ac05b54d528ed11e0c01e30b8be4c9114c118da9e5f7d2b6af61bb24b21
Date: Fri, 19 Sep 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758317993
