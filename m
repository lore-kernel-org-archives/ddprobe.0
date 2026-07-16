Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53EFC27F75C
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 02:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784169514; cv=none; b=bCImsN3Q3InFDn3Fo0yKV9TLGRp3Y/nBLv85BavVW7Q0mmJmJSKLKDviXk2Q1AtnXWLSl2Th/bP2PanV3+//BMFX7FoGYZgXzT97dkyxV5wZScWbn05wp249+3vcbxR6PykaR3+PdhBuQXqoGeRbRUnY73R+JNDgT8jbeaYRpMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784169514; c=relaxed/simple;
	bh=gX9TzmkvZ2w4pFjo6gIhVU5LU5aB7v1APgUMX0hrA8A=;
	h=To:Subject:From:Message-Id:Date; b=IE5sNHVeFNlQ9d3KtsYEhxRqtYNZGdE/V5viTviFtxLDiZl1ApqExxdiD4qvmr6W4ONb//uxswNExlrKWq82OG2zU+7Afoc5Gx86T/kqgrcGpaSztkcpzxj8kD9DYLTqbTIq7UldcqRJts5pFXdnSjqOOjL6ykee0sPlbKlqgw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IXR8aRt9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IXR8aRt9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A82C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 02:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784169513;
	bh=gX9TzmkvZ2w4pFjo6gIhVU5LU5aB7v1APgUMX0hrA8A=;
	h=To:Subject:From:Date:From;
	b=IXR8aRt9Xfl0RMWWVtJKy0boDEF7khefXQGtlvsLmT8yLZ7sho9uUCvRZfAhcx1sd
	 ZWesC9fc0Fl8BGqKJ7DPMoO/F/DLZkYWTr1yM5LGIfdZOWTPMnHUsTVj/Y9jVlDhcW
	 LrkJQU/OdfXtJffoykaMKiOR3WTqeZjafU4lCTrqXyGBRSF6lxAKztmBaQi7awvUXC
	 HnBKGmBEubcl9ggPR0H9OJ1XPR++do5mzcvTQecc/URuY38GPzFtgsNWXlyXAvXT6s
	 yOIsPDUhHNrfryEhuk1bDBH037dH1NHvaFxJwipuZjkj6anLkGCvz7nmWYYu6rDjhZ
	 crbNzfGKjXljg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8BBC44507
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 02:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178416951368.2017.3784570954425036495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53aead37bafde5043018f95924d298d76c9473d0b7cf8b433a04cc9048857df3
Date: Thu, 16 Jul 2026 02:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784169513
