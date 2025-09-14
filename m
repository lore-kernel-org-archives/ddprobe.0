Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FD1248F68
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757849394; cv=none; b=hI7uUpR65U71qbKjdb1beu73bWnydEgbrV8HaEZK2a/iqvT4a92AwmRS411HhPp7tCyr17W+737QHVrhYTnkII2Ubg5JkKwXUooPVbjW2Q5voQ7CCGCVUuFBJ9sbdqEU4FZNONHVVLhSe4ERlZ/rTkzXg6Bg8tjqB0uPBDX4vHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757849394; c=relaxed/simple;
	bh=eWFCNupptTvj5rWBprKa0j8/v3oBBZqQMgNA+EOXlMs=;
	h=To:Subject:From:Message-Id:Date; b=b5X+X8BCW7s+/fHxJ4sPkjl8vw4wTG7mmJtC0ElB66lcKvI0zKdJv8ARwWgHTcR0fKs8ImlIRZC2L/PAdsYAAPAnmdW0D/mEpUqFWMw8fqTZoPzl9eV9DKVz/XaBDn3PihQHU+B4IpaIU9bp2oWdKCTncYPJlDt2+21zH2QkqU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kL+aqaaO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kL+aqaaO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78EDC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757849393;
	bh=eWFCNupptTvj5rWBprKa0j8/v3oBBZqQMgNA+EOXlMs=;
	h=To:Subject:From:Date:From;
	b=kL+aqaaOCiz6R58+H/au5d7160xYi5nGJL43kV0F3rXxdfwtwWF7CWDu7yqnZed2+
	 ikz0njnuqS59JsztbYD7Eg23HsN1Soqgc8JVSxi/KxKujnOyRO+l74wbMm9Ou8RJbM
	 wCM0N0XNUbV4v9NNaawLcgmYIYolQ8j74wrFv6YtnSxFpwsiJ21jWqepqq3NZIUDg7
	 KWSQiRTjhwkmEkVGrP653QaxUOYneAk3ExteSttsb19GRDLzXZdso+EhUnH/S1OJSm
	 T11ZN926xCLiuKNMX8yesaktI7x3ZJLiZjftS6RDXrY2cDlCIbzt5yM4UcPlpfJcxd
	 ni2Zfi0HKuQ6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AB1CAC582
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175784939358.1096.9334967936136000762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34db4d2fbb98d1880814625cf087365730344c547fda692d0d244fa0ae90f98c
Date: Sun, 14 Sep 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757849393
