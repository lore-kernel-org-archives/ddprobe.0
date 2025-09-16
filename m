Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C45731A0728
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757984393; cv=none; b=OrwrKjp+M4Rdyux4XABjx6goGdDPbUq4HED1mcUys1b0X6K+h7HskmAfAWwHAEAqSu+36v+4xackq74ZJOrtu8iODHnVyohGP7JU32Aqpd7CxYrqT3LCvVlV5XtEPh/OuSoZ2536oNJckTGBb2olJZ8h3spheD22mcL9JFdNFoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757984393; c=relaxed/simple;
	bh=/huk4L59Z5TypC0M9GaSHUVitq8baf6snrHAR1HywPs=;
	h=To:Subject:From:Message-Id:Date; b=IFmq7YG5yL1opSqhwYxxNPIt+TWmgrb0DwmzHVcPAdwjfQHclQkR6QnqjGlGQ6iBTtOO+UlbcZGqPlDaG5qHXZu8o1KP3Unc6lRVBHpaS7lhlicEBNv9qrVh/aILYOjcC3qCOfjgb3oNcA2Z3a6CSU8+6NbK6VDvM+24jadu6zI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VhCjezwY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VhCjezwY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DB2C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757984393;
	bh=/huk4L59Z5TypC0M9GaSHUVitq8baf6snrHAR1HywPs=;
	h=To:Subject:From:Date:From;
	b=VhCjezwY95y5bcoSFkdATugnGdXKaE8skSy/jRPH/J1boANqiXjiwY9KANO0cbCs3
	 Mn1qZSGABV8vFKi2kfwOPxENko+6oFhvjeoVw3vwriHOxmsErZ+C+IHbn7D2P6giKA
	 iBwtf43wFR6INd/pzy0jHBgqPndzYMUUvtloAPt92rdt65yz+d1SKxmYCDRTKmqiUG
	 G5HWE9v1hYlMWXk98acfweRzbrgL1FMQMdmvpgW1Dhjqjtoj8p/OFhVSzee6y07IQL
	 wVhxzGbdglLRKcFjuf3QQBzAD29ZM6mp4KR7oJJI/vGopspCuarrj1Dvtg6i1+Ce+/
	 BBvnAGIdv+haQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E35CAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175798439360.31239.7325701411686426590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dea6d7a5de74e984b897639a547546c7bb76695aa8da599ab9ec1a5e1d87fe6
Date: Tue, 16 Sep 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757984393
