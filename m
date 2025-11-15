Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F20A63B9
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763171394; cv=none; b=Woievg6WOwiaX8EEQnW3nMBc9Ahc6hv1VjWFeXYCSb+ZxE0i44bzNKhyglDCppMJP9ObaOCqoizvvTmjR2hxVBISe0Y0UVIwBkJ1KMcLZlhv7jfEJp461ylt6zXsAfA8KAb0ZGWGIjylfrXlLSy3wN5PS/fyFWpFWgN/YBju2ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763171394; c=relaxed/simple;
	bh=ODdmwRgCADFHO94W4jUj8o09imYxsaMTqqQ+EYfNZeQ=;
	h=To:Subject:From:Message-Id:Date; b=IWbJ0TPVDLh7oQqN2nDV6sWo7Xv5OfpaAYgpVbtxiOeCZME1J+zkNtbbrcJ6sJBx3nvW/n6sKyPtqOaBqlTa4H8ZZbUuo7iyEPFcqGqtlGYFK85uvYdyQgW7hruuCQTY4d2datP2i5eTqgjDFzVQLvdBYQ4Fr8SNDwkXIAeshp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r5yWVX6V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r5yWVX6V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18BDC4AF09
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763171393;
	bh=ODdmwRgCADFHO94W4jUj8o09imYxsaMTqqQ+EYfNZeQ=;
	h=To:Subject:From:Date:From;
	b=r5yWVX6VK4DECYAE8mkA4mvIhMc8H9ZWr9Tod2Zu0mmnk10ixQ1MTD+xtvDYfGYAF
	 1uEFu14/uIV2vpyDELNOiNpdGqL+1C3wfi7QR7y0VmKhgj7A6HJrFhjiDFYciXAIb3
	 9/4U8+buKjdJs5zeNT5JeeQgvrGfklGXFK0WHAmfFalYfEyJSz0Y54UGD+LQg7gmMC
	 UtCRkN+/Qh04pdEDiGtyKJOy7deqiQDBC2Sj9KRDYS6HLncy04ZOSyPyNRIwZKFBtb
	 VKckVct2WD2j+6XuZqckHrqzCclT3gF3wSfCRZBGQajXsPbuNWMo/HNx+5y1++Rkri
	 I8xCOFFJL8uhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9170ECE8D6B
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176317139358.29242.4461458795108097312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d4ee50504c20ee6a1a19c35667e16cb5a37b0240fd290e77ba247dc5df5a5bf
Date: Sat, 15 Nov 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763171393
