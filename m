Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7A8262BE
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732598754; cv=none; b=oCcpuUsV68Juk42OyqWSY+BP4WevM2QYO73mCs714BK+iD0PsZQqWsk9yteFUzbguExu1cZprtsaheGBDF6hmUfhdrWa6+pdjM8pCvETngFMzz2FjGLmi9icaqqaMWxUwLhfawSvjCI9ywK3yiVIbmxlk87M2HuTT1RwRZrg1kQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732598754; c=relaxed/simple;
	bh=bGF04OCVJ5RSt0Ysbn3cb3nP7Mg4yA3T9Ou79uZJSqU=;
	h=To:Subject:From:Message-Id:Date; b=pRySeXhspxx9abpto5vueKlQme7/haai0qD8uMtVN9argJbr7/ATRW4EVk5kvbd6kDJRS7RkuD9jK3/Sk3qxvB0/KA3DbHzAgGLK8YnIBpmOHZNM1cxbtGjqW/KJt0twVRQ1uaE4PHS+VnlYDA+cd22WaB1dPi5YhPje6wEDx24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yy3aj/Wf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yy3aj/Wf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD570C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732598753;
	bh=bGF04OCVJ5RSt0Ysbn3cb3nP7Mg4yA3T9Ou79uZJSqU=;
	h=To:Subject:From:Date:From;
	b=Yy3aj/Wf058YFbEnpXJQgOLpn32+REHrLnGkeEvA8zqyiWCm4CTnGEG97S3PYgGxa
	 fkWnh1MnrjbKTZgj2OWk6P5ZF1amtNHffHuB1t1OqEXOuGbP36v/ozOfU5b4P2qQBf
	 QqLozQV/w7+HNabW2AAYy0ykmTAPdIdJyzAPgJFgIhtWl1c/ke7raAE87Ln1ORbK8v
	 AkOWE44H7a39LoUPdy4uIXce3uyNh64dAq/IxqhGM23tYrdIFHuXfKfDRP5qxsJS2L
	 m+5/VZvhz6oiUfSXmz7C3ZA/c3zxOEoUBry0+347NFPzFNTNwghoPNw3JskYt5k8Ca
	 XDdyrerXFUx9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB1ED5A6DF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173259875361.30721.4201605584867361746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb6ea1885f9e6671647b77b2dfc77dfa011d85d13c5f9d1fae90f373a177d630
Date: Tue, 26 Nov 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732598753
