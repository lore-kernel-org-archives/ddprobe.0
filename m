Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3147E27CB04
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755883794; cv=none; b=X84YSOyXjHZemH4IaD0xP8999/xGmVeh4rOG3KMLfAvCG8adwyvPAIKytDlIcgRdG8gyxOP25FSgwLehmpOeFbFCP+jJNBWoCLCgzJ6+pq5/0lkQOwkST5/X37IgHeGlTU19L8rALXyU5jSl1TXC+7Bd1ACAEc2W4UM2DrUr+2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755883794; c=relaxed/simple;
	bh=G3Gb10IzaoJbLtq5JsNGA1xQ8s3y/NqB7SfDqH6togA=;
	h=To:Subject:From:Message-Id:Date; b=GcR5OLY4W6rxIzQFvquN6SWwoBs4qn9fInTptGq4Z8Fytk9VQzdFsG/0XGCSMwZCv4mhP/9edPEthx/tv7KM4LcngeuT8n/7X3gP5669g7BiWYZuBkjQiJgAfIv4dLFF8YI81hpZatqJp6fNi5g1KQyjbmp28JAG7jqClHEJTLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJ7LTqGg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJ7LTqGg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19F4C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755883793;
	bh=G3Gb10IzaoJbLtq5JsNGA1xQ8s3y/NqB7SfDqH6togA=;
	h=To:Subject:From:Date:From;
	b=iJ7LTqGgCgd4oP7fnyZiBVlT5/XzaOqHrXMRBvhjftLZXQk+wU/5fwLjBDRbkJRsZ
	 zEVQEcSdNa1BLQmRdCqY/sIZpVJjZqrpcAtOrlHdTrokIN/FwIFQ5GN9Y3AWwYAh3u
	 uisyconbQ14/P8jk4e/LItYhv//p0uYcYrUspCY3N5AQ1A3BT/j/YDkW2JW1bl5wbu
	 WHcXfUBITqbgAL5at/HGldGK/ewwqog1WC8ETo2ASU2YQ6Uvv0I7GO/pBlOl5tWqQ7
	 H4qoLrXWggPUqOoBAfyse04ALTf6MkmliNMXvMjSY8eBwncYF82RwvY0MDMM99Qr8x
	 Ef9FDdAKAArvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F556CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175588379357.21082.10033882579473148827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76d6097c863044c0a0c5fdefcc854e2931c38050a45cc0169cc47876cb193f1c
Date: Fri, 22 Aug 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755883793
