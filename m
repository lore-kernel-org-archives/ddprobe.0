Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47AE12C234E
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786149634; cv=none; b=EEcO+YDHS1CTliF+vcWnIaFbnWK90mWh0ljwlWhAg5rSktmWTwcstjntEjgW/5kEwrBeQWZ4CvPkYA+26mEqd2wUC7uialf9n4rYEsakwXwwiIfvDByOcnS5owJdNg8urVn5ouvE0JQOxHnwZCl4QWOZbqwXy6vRnhYOFxfjnds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786149634; c=relaxed/simple;
	bh=Hkqu0LzAbm2gn4pt5QQ2vpelbghqkyDEPCBSg04enJ8=;
	h=To:Subject:From:Message-Id:Date; b=kT53TBkJPgEcgJP/zHYN1cMFsJKN1IodsxQG/OTxcdO/uxXWV1eLZsqDnf7pBy5gqTuISCLZU06mr0xXmkfO/zZYdXWYpXZR3oKodRJSgR4e2EUDTfyh5jcfu3TEWpvwWCrf3ZcA28C5h+VZWorxJrrAui1n8LG8nCLZMTYsfFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCPDc8r/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCPDc8r/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2877C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786149633;
	bh=Hkqu0LzAbm2gn4pt5QQ2vpelbghqkyDEPCBSg04enJ8=;
	h=To:Subject:From:Date:From;
	b=VCPDc8r/EpIgzGvuhf99gxsnbRZ5qXvjFS0WZHig1IxDFro2IL/AnrxY8bFTgJZek
	 +HOIHcqITImUYRPuTvkXt8rlA0Fd1DvyrcGe5oOryz+zVoPruKS5RJEYgVLB5O08hI
	 xAVpgQlRTQ9u+K5vStUgjh6n9PrN6DNbVpuJ2T2UN9lffAOCxmA2Hr8gR0lYU9+HcU
	 ZyXBhFLnwpThkf+/AcPa+E3sjNGPPV1v65EtCoq2IrkYh3TM2eEoosqU2Jy56aqDDa
	 AJIkvuWlYSjWJG+O0RB8/s7RRFXk+eLNUe1Q2Phk9aGN4VwfQO7lmhQ1TcJTjH1C5v
	 h8z2m6We7SqzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1E4C5AD2B
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178614963369.30718.12181670280830015356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fbf97054ffaadec33342888ade465f4f21ba53fb9dce06d801b4336a8632d87
Date: Sat, 08 Aug 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786149633
