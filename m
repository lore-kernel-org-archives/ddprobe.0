Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 733682D7BF
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789533034; cv=none; b=JseaC9zIt4iqKBACd/hAAnKpxTW4bS5/lKQB/4oG3wx0g9z2PsGvNKfv9DBUQca2er+xMegolSCr+67vQ+OgTG0Ib6+U1UHrAX5ydEabB7XcQuJj3Rg014NVEDxEFc6njHht02hgHd5Ba/XoZeaWYlIpxbHgE3XBK3qw/Wpml3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789533034; c=relaxed/simple;
	bh=EzehHnfBaIchToMf72IVz/T8GliL1YVsNyrU9jXOww8=;
	h=To:Subject:From:Message-Id:Date; b=pQuRWiJo9xdZ+nAOm8CfqSfJsBXqF5oA5lBjMvhAPGGC2+LNEf+aWjEpc8iYlkvz197C7ALJlppeM4tMSbmaGmcKa4vO6egnsx1NHMLTkYTeo9tbr1NxL36KlRjzpYzmKs6VzMvdNX9M57t1ohBpMeOE3xew/94iZMdH+z5qRDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXBakTX8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXBakTX8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEA47C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789533033;
	bh=EzehHnfBaIchToMf72IVz/T8GliL1YVsNyrU9jXOww8=;
	h=To:Subject:From:Date:From;
	b=KXBakTX8HEF5MaPgl/K5dG/m/yWlxzpSW5zoRdH+O8loOT4JOIIeZk7LJcg09bd3Y
	 nHDqwEUizqEgnGArVja1xPnykGuvVFVr3YjR0T7JxJW+6wJPAIOcvTSVVYbhxjn0xJ
	 FrZ3/AL/KxPeykKeFaaP6IngWm7hWtHC37IWPQbbSSaF0bb5vxKZSeFaYhzOxDOPB1
	 nFrApxw58E5thdO2OzRtNHG3wva/eyjQsvo9/XbZDwArumNcgVxDY6Xmyj0PGeACEz
	 BXFs7aDe7lH65GhFQJeCGIpDENNwS0IOW9e9ljBPH9J26hG9eINMFJKG/UGBSZYmaT
	 6ov5P6n3jpYwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08CFC88E5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178953303371.3694.3839649304691905551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45e1628c710e7a42e14ef0009dbbbea1b64730675e3088fac2bf358d0a8710c7
Date: Wed, 16 Sep 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789533033
