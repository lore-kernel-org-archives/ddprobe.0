Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219D91CA84
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759968594; cv=none; b=Z6xoxNNHz9vZveZQTPtX+aKxRkYXpcKKwvWvtFVyXIgilWHyPuPS1nKHuUvydhas30rENIw2XJjfEprqISfUyIQk1WMdSNcCju3D/a1nIFzfCMStL3p+Rex6LUz6xNCsltbwz66vGLZNouo+DmNdY6aVu0PCx62y2GfIRD+C1uE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759968594; c=relaxed/simple;
	bh=1ilWYe080RyPu6akREL2neBX7ItMEWDEthvHw8yNrbA=;
	h=To:Subject:From:Message-Id:Date; b=Va7nDofDatZJxIiIm454EKcpS63LluDKVKyFgNiQoQWwbwIoNTeeVgYch7i09oFhlSQarQZSdmXyS/qwMsQL+vHqVXFxmx9Bq4Rw0krfmc7V09vY3CXQE6dq66RXNr2TUl6DCUQBDj5VF0h77/q8GRbpShYPOM6aDuoUHgkPgB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OfS/vJe2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OfS/vJe2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51D6C4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759968593;
	bh=1ilWYe080RyPu6akREL2neBX7ItMEWDEthvHw8yNrbA=;
	h=To:Subject:From:Date:From;
	b=OfS/vJe2th/G1oH398Gq44ihzKO3Y7aHPNc6L01haxMXHrZAmcOelhaSAqXWaXnIy
	 OWJ7fR8HHILMf/Bk9BRv9t/+WEOEVR3U5a83otmK70OVKNfkGbRuhB8/ueXNwuhgoq
	 yaZUTZ/NstwiLufzufiUrzV41efe2pemHDU1aEvF0Ln4vFDKV9h1TtPfOIg0EXhuGW
	 SDZDzLqiy5vXYF+ZBs4S7URUYqKvjT+mG6XcmGSmIZnVlNl7oobSrrDbnQiQAo7FAa
	 gVTeKLFB3WY9IXlwfvbJGF1xzRdwRwWMWJrhLEp32Hk743zvXNT5Uy4y+oM+kqQD4h
	 lxWthhQMIdvjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BE0CAC5BB
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175996859357.13744.9390141173499530703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd5418f61eb6b07818f9c3ea699f994eac5cffa762db52c3a62650a168b4da13
Date: Thu, 09 Oct 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759968593
