Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A077199924
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753564794; cv=none; b=cXYbWC0EIxEW3Xi6Ko1NGUIhuP0nQucW8ASv2pTjeXODHlZc5ZsEvcfkBw3Cb0tzE83iVo05HtgovAzWGva6j1kpgNaTm3lLaTLbAms8w0bcP3YfBDAJpiL8QYIQi8/I7ujCQOChqxFJ4MgVPZNGSWwTjmUsEJaKD9Hqan0uwZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753564794; c=relaxed/simple;
	bh=TUoahBP2sUzKXM7j5CA+5X4ucL5amRTP3lgZD13lrDY=;
	h=To:Subject:From:Message-Id:Date; b=Hd5xJ20SYRLFNneA01O/UNqhgeHnXrHgCHpZQei+cG7eULM3ORdQjj+Ar9bazxbBvxP60KDOls+f0I4EWox5cX8OcBkM5rSPl8e4K9nGgMyS9YDthsBv0yxwnpx3HlC8wEeBY6bV0Y9cCXaRCZohb4sWIHB9r1lDUoTmwnSZl38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SS5/cwtx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SS5/cwtx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9287C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753564793;
	bh=TUoahBP2sUzKXM7j5CA+5X4ucL5amRTP3lgZD13lrDY=;
	h=To:Subject:From:Date:From;
	b=SS5/cwtxI0tuu31YUF6UajOO2SNU7fKGQSfY2OyQpZP6oc65Z8arppmxRrSuHiuwz
	 XAZDJR6VOr+Cs9CWr7ercBe2b/jCWL+RrcjFqvbS/YAVqlm0yZeUXLCpe6gj1vH3Vr
	 XaNP+aIxdpBgXTK0hsN8J1F5BAFcHqjM4f/6wHfDIuiv87cIndFLdMgsfD+8BWm4vD
	 oHZk2WukuCkcoxPJoLEYkfDF2isld7soJ6luNncwt9R6/2HR936XwdUFD/K1KdAq5G
	 E7vjnHl02/bg/7cTWSkTRSO2QrNIiMloV8D8f6N86RYX5tYzt1wmqdQ29pfFwMQnkC
	 QuXqNLA1nVuwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952DFC87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175356479357.12709.8826737347574364648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6513e8ff547234c227a228362e9b1a76682a8ced84587470213b5822dc44364d
Date: Sat, 26 Jul 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753564793
