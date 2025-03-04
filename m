Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BB55202977
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 13:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741094335; cv=none; b=KEJt63vN9WCr4uytPr/NIrPSbZHHxrNouP4MSfsDqMtUBi5doTFCNx1MuGKWkgEolp44oCHJdZTio8z6LYvQjefOY3VgfnWx7Yb0eZCzq/sxZ1HSdxjskRWcDfntmb24OxTPLgs+51y6Ugzwqur1QgCPLAN1DrB61r9xJPDfZIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741094335; c=relaxed/simple;
	bh=ihDbhY3YklUbVZYv7ypWI8hWGaEI7UGEuIjDC9qXcfc=;
	h=To:Subject:From:Message-Id:Date; b=kZzGArdbHjdYCm9IDqyCDhXSPJkVWoF5NZunKcW1lVDLUzSum5LqW5VAGWJaADniV2McJmmjVaYyunDWoiclGIcPI/l8gGK0MGzSwKE6cEPXEi8BhC3cbhLMk6ZSCYtf5cCrJVrXJPJK4ww22iD7P/bTyuBUB6mJ4OBEGxDNxHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oxhwDobK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oxhwDobK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4707C4CEE9
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 13:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741094333;
	bh=ihDbhY3YklUbVZYv7ypWI8hWGaEI7UGEuIjDC9qXcfc=;
	h=To:Subject:From:Date:From;
	b=oxhwDobKXCCZ5akO8IEBxbi/ANudjLUWT4RpGhs7zpJ/+0hArw1RX/gIwKjKEs/uc
	 VYX5fntu3eaQqIoQL9J/LgAIrJdMpto2vzfwmLwOF0WhOE34Q6aAreVOY1Sn2b0Vgx
	 SYKKY/uzUR831uV3bOiqvkdUYBdyWVfgyKaJPxlgEoLj2RYs/6W/p5OauSEE3XKJa/
	 6tQnmWm40KKTok+TVKTwG4HI3p4EyogTbsDMXlArXQBvVDR5SgfzTpLD3eAhesK/Ti
	 x4+yjDHweZVmbOpP0jRphZF54pwBMtCRNP5tCdxzt6Ia2ccb2z1+FLWE0MGNBVHKpw
	 b+VYv3sfeWtUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB768C021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 13:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174109433368.7175.10313515399155090524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6b0d0cc5806c6551f976c60d304401c65da8263d7113ebc52b882ad386a1c3a
Date: Tue, 04 Mar 2025 13:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741094333
