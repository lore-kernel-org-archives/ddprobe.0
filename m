Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B47F303A05
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766663034; cv=none; b=A9xYtzdmEmdMbhTHRc585oTZLGg4bHQl4twENjHCoZbw25Dw18LX3hxzizwUsIRM6Ok+UcuTdU/p+BCxOqXTAl4YgLH3VJAlBjsQjteW8ex3lVa72D6DdLpTdsdeAWY9MKokxNZNGAoIdjUVXNsjUEDN96kr4jC1NrLlRGdnr2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766663034; c=relaxed/simple;
	bh=jBVdaZaEJjA9AndvmJ7DmhesnreuoViEUwyRIxVpiis=;
	h=To:Subject:From:Message-Id:Date; b=TQLBhbsNbifOr3PPU+15o+hdY5HN7l9p/cpHKHafI9gOf4EN+K6S6jTU1f7/OJzlTSZ5PqbtloqmIBEiOpNWeY1Dsvr1qF2yfXkk5mLjRRukxxvnGh748zwlP1Enezw7bCe0G7GLrbP4HDfu0P8CO34LhvG51DlCU5p5wwbd8bY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpeRTvCS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpeRTvCS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A735DC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766663033;
	bh=jBVdaZaEJjA9AndvmJ7DmhesnreuoViEUwyRIxVpiis=;
	h=To:Subject:From:Date:From;
	b=KpeRTvCSS3nRrwX0G7KlG4UD8IZg+YFfCGR66DrwKuvWWhsDxDX/0f4Os/iS+t17D
	 JKkBts+U56YJ8Q32M3v62oin48oFZVCla83GYSNN6JWdR9YOy2mhYUKR5iwVZrD4cl
	 H6TvM3DMH5GZFk9EHsptWTLYpmUmqebPkEGEnTR+16PCxBqVPElZkxNR/AoKoX++kV
	 ggC2r693t6Q5gPPep95uBghpqmzuGwZZ2o5DFpFS9UhPj7DT+dWaEtk4dfT0MY3dwl
	 ELBogAoR0TfhpCiRKX/jCu2MxaJi/a8RSVFqb1f8gF6RlxestrvDkuCb74t9KHwosD
	 LGDiLZLgMszPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92326E7AD49
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176666303357.22417.15653597152745780769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eef86c0f19c1916eae8200daf7026414aa9cab98ecf85a4dd742cca40f973adb
Date: Thu, 25 Dec 2025 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766663033
