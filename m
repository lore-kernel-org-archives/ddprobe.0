Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F3D1EB5FE
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752901794; cv=none; b=f8I1MAONgQoFN4kHRm0QIHwrb0x0JKfW0of9SYPdVOrUPv1MH2dXLKLEt4yeZGjs9SeZTOXRXuaZHritaunCdXZh7Kr7cSZQqTqtWAF3vhwpuJY2dbZSVZYFAZQ21sDIluaT/zvLlcSDST/JH/AYGRmmz4DX87VGvO8ZiD4AKl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752901794; c=relaxed/simple;
	bh=GYh0ATvCud4+d93wUlSQ4zfbjqLxB2pcVJ7UCrolat8=;
	h=To:Subject:From:Message-Id:Date; b=XlzatfKuiBDtf+NM8geM2/YMuYouJuah1YYHbRV1TkFYmNIlHMGR+5H+mxP07B6R8cyzgOs7b+4hW71Y+mLlQvUDZuyIXDd4xQucQ+rmBI7pq5EIt4MFt8CyHYqd2E7FFDTK2P+yp2SvFhBwSxZKMUycJlAzGNQRdt1llQ2mIBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVisRuJm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVisRuJm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE78AC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752901793;
	bh=GYh0ATvCud4+d93wUlSQ4zfbjqLxB2pcVJ7UCrolat8=;
	h=To:Subject:From:Date:From;
	b=eVisRuJmfwwKDSIYtWNpWPSL7VzftBlLgRJBQb/9JE6LF3ZxNA7lKzBvNJJEKtfho
	 7e5lUPjIs1qBkiZoMg4U6boBjHE+iSL79mg01eCyD2p1t4AxUZJSmu9vdPEiO7tMuC
	 iL9AqzHAQesYHm61ZymfIG9+qVGors537CW7gyr1r0ttvwBN6ziUTSRDNAP/3cT/g4
	 QMZnyU2bHnUcQ2t/14tctlnvNg2gXSuCORX7r/XxpXiF3N/w/37WaHwe3zLU2WDXMU
	 lq2j+C2Ws4srn6741mhNqRZnCU6LTXr/p48hu6SYKb7/69BdrQfb539CSd+NyjDd2Q
	 bqHhsvZLaXkFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2D9C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175290179357.8090.11442156086804273646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10e53d10a5298042c72a1926d273c204a2d5ff9ec4b891e7d36d966ed7011611
Date: Sat, 19 Jul 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752901793
