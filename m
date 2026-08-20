Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60D5941A905
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787230234; cv=none; b=MYMrifyDKm88tsVSCKBak7nM1Wk5gjcwq110wPngS4BXZL/KtDmUm5uzj4d91wU7CMSuP3hpFcwBxEZMwhjbNdfp45EsT1wi4iciAP7Uhj8Tzt9ukYQdmXDjGv+TFGh0U+6CDYss3E5s+lm/CibQaegEEJ8kCVwxL5+2B523I/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787230234; c=relaxed/simple;
	bh=9/xnQJiPNrs7eGTnEHWuTFtRWkBXjUmya3qbvYcf17Y=;
	h=To:Subject:From:Message-Id:Date; b=KRXPZ6+gWIpUr/sFJK9jYEisuMWcWFmgwv5hD7+ie0Yd0umsYCnwy+snCGI0JRTdbu/+FcqoNJXUjruYLQMVc8tPxoS7JpA7om0G+LFIUdeTIteeAp5Vy6AYU5c8rVC7NLf8/JKGmjV3YnndRAgzFan/H2CHzpPrI1QdDDyoU08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cBPDriWL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cBPDriWL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE875C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787230233;
	bh=9/xnQJiPNrs7eGTnEHWuTFtRWkBXjUmya3qbvYcf17Y=;
	h=To:Subject:From:Date:From;
	b=cBPDriWL7cUklJtJm7GF+Wird5P1QMw2h6ZX61US8lD+8IsI1wlGwGWCJdvyixXA+
	 pc80SMDbUhHB6BK1m8Kx5kRs7r5n9L0OGPaaFyV7bXoo1YVVe2nJuAND75wiRLo5WY
	 GQXuxbuHdT2f/jnVez3R9HedzMnjVP/TfEAR3kVU51qiW7f6MG2wQlMaCgeA+koWNi
	 /0PVR05xKEex7LZYPgQXYvD+6I3o2fz4ssIkaGWYLiZCOxbb406MFAWvT2ogVtoh3U
	 OHmBzloC+/v0RIPswlj4wDB6s6C+cAz6FYLFeDh2GL9Vqe/29EN3gW5NIRMhsOswTX
	 AgOFpLEGUr51g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6B4C5DF88
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178723023369.16203.12525130229408931051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a076838f90f5340930ce1a20f4ed05e8cb0f9c1ce2b60afb701e7c67c82eb2da
Date: Thu, 20 Aug 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787230233
