Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74C6B1A316E
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 17:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778348254; cv=none; b=T2gycMbB1Ieki1E9UtsOCrakSgYbbT6/AdqT2VnOibt83Uv5uC8iV0W5eFwheTKmYf9KW7/UjOGhq3NkVOOP64GhBWfMKgv6f8bKGs8QN/k3Gu+35y9QC65PjBhr771Z/Nl2upacQsZ8j3VZUdnFdvZPj56yIqJP51p1uPPxrXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778348254; c=relaxed/simple;
	bh=PzyV9hpTDo1MNSavWF31bxtBY+7zVF76GpUZzIiYYP8=;
	h=To:Subject:From:Message-Id:Date; b=nVa8d59sJSu2nhO6Z8YUyl96qe868hiQOCbq48fI07W940xKe7Z2eZrCftMYDNjDFHOFB6DwWlyEvh+mndG5Q1qZ5MbL5VHH97uN7auGAXiFBow2WEmXA+rHISEAQ7VWp04BWl6PU9yM+o7pcUBiXlw/3Z7iG0r02MT/ekAt5eU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qa4W0v97; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qa4W0v97"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 17C93C2BCC4
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 17:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778348254;
	bh=PzyV9hpTDo1MNSavWF31bxtBY+7zVF76GpUZzIiYYP8=;
	h=To:Subject:From:Date:From;
	b=qa4W0v97ZEpVBevCDujPiCpclipyUZZSxqbwdO3vnI1y61uFBlXPZDKdqL6fXPcvF
	 E0oTqePmiFQZDrxQ4JcjTCfigE0MGpfOruswMfQorY7J5irSLuHjcz1MlIYWMMeLZI
	 I2N3tKHVD7YBYjzJgGoeJRzE50pIYkk66pa89qG0+1g+K1iQtiO5Y0qadEswQ77+hH
	 vbKFcz1kETiXtUhXkEZNRrsLMwOcHuggv/PBLGsiSgmj6F4wS7RhSbcz7kDAiGe7Dm
	 ErzDziwzm+wukir97k9Gzw+/PhTwNmLvS8ogpWgTSTH2bV/NinM0+5h1HBhyRWBa1B
	 iOhYTWpt5lIfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3684CD3445
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 17:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177834825378.4122.1579029822557200143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43b3c484ce446ea65d26da8cc9c261a703c13b7115b387e0d3435c5882c9c38b
Date: Sat, 09 May 2026 17:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778348253
