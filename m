Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3186E625
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759133394; cv=none; b=glsUdzSzeLUbKqNH1IqBQKYzkmkD3jYzIXlLcrLA8VTafyfdpLO8SzQkKG1TnE9clPp8sRvUMDioevIcWuf+Kcuzb4MSvg414wCs+yQP1OjA8yfF9JJGCO/N0xLTFPcnpcy12+7MeDiDpY+z4C+X8ltXXRGkJLr4bdZdrF6X6HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759133394; c=relaxed/simple;
	bh=VX/oKUn4D72uhlWkbfSNV5PvG4/KdFFY7WDkw8NtGHg=;
	h=To:Subject:From:Message-Id:Date; b=t1H33uWoLH/5RvjDXKXObUnrEv4urvQWrZ0P2e0t7hMGq/v2vQGZ4Ci4TiBVJqfhEyaRt2Lv5FQ7aBubj7ZJ6ud77g1NeY3vnkEUbMHit2X8U30uPQt8BJIpgREvdwwCH9K1JborYqqunEGzTjEZxRvXyWBn4u0N42DT74Hyhrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=phoc/wsr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="phoc/wsr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2826C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759133393;
	bh=VX/oKUn4D72uhlWkbfSNV5PvG4/KdFFY7WDkw8NtGHg=;
	h=To:Subject:From:Date:From;
	b=phoc/wsrS3q51ngP6zWIWcAyCiwG9XY+6K/nT+5BROLb5gq10IHzpZ4JwVqUxj65x
	 y5VOTuisoqgXLFShypxMywlqdbsdaUAbnXQfVuIZ4Q8Fr5U0xMCiPc3IVP8Fhc2fBq
	 K+XSFJB4g+cAFKYuFUhy2Sx3RoH0EJE9jEYD2AQokRMvmJpueP+LegQ83Ffg5h6e5h
	 MiU0lhE048Iy7P5PiQUuvofE11qsAQxOz304hTYAvEOGLXzK/ajhiJuOGS5dMexd8d
	 devQdy0P208OZevNbMy6hHp/c0AcJUHeYg15/n2tAbcgiDEzpoxJ1AFwW+kBarqtZG
	 hVrD/jaFQQuAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90008CAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175913339358.15477.2195569840077005122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 960621f11e94ef4cdf9d252020c91fa7cf686b55429f427e3749bd68083fe4bb
Date: Mon, 29 Sep 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759133393
