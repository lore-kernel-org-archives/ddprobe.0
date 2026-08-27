Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49AEE364059
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787832034; cv=none; b=uYrQxE4YCSASDytssK1Y/W69K7YZqzziyoBfd7QXM0OycR0dhHbYdJSL1mlpEBAXbDv3JUePQGlocrpJ+KbzolcajCOP0d6UH8G4w2cxlQ61dmqOOxHBGfJnN2hcQonzIo7fvD6gUMLJyBhnzVqwJ5ddhlB0xieKdJA/BaBnegk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787832034; c=relaxed/simple;
	bh=PSH+YqMWtVbNlnzUv/jR9aSu5czvKN8XzC+QlOiF7AM=;
	h=To:Subject:From:Message-Id:Date; b=IpmOevTd2i1qh+NhBlkYKx37qTAP7XM6AZIg0WcNgwagx7gjl6ADaS31LbrSX4EqJKEh8tHmSE3qkAgEGRqWc1YboSTPTjL/MuCtmc3iSqF9kLFGx+H9z1oBchGXCLeuJk2VrIvTp01lf2uBrL5SXZaG0LZxmjFdNCWlR5PAo1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jpy+fQCF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jpy+fQCF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC0FDC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787832033;
	bh=PSH+YqMWtVbNlnzUv/jR9aSu5czvKN8XzC+QlOiF7AM=;
	h=To:Subject:From:Date:From;
	b=jpy+fQCFX79zFwOwZ94aI1w2QgO+yOotoydhbeqnvUXzRBZ6Pi6C6I7MthSStCRyj
	 PWXcSNoIJ6276j722eg4zY1dSe5eXcUjaWXLM5khXUC05mH+pVCWFWWJ2NvQgBfuJp
	 X0Wl++oY8g5QCWrmmY2uyPyKAjeoikJx0Ci/AvHaMu+xoh3coTRYuP514sx46Xn0kF
	 hUSL+v7EU+/noFBIgs5P33N5xEOV2Elet7+7KoSUOtE9rSlpSxl80FXwLeeT3pWR9M
	 gFMs0r2nUwDXWuKtPMEowTA9PtGGQBRPZCOrXycpcKRTEdDtOj6eBsTWvauvAYBMT5
	 xELebBWiw5wUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D80C61DC2
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178783203368.30485.18317924707379415579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e92bfa16d61f662c6242080c7388eb896acc940ecd64cb15c34c04c05db325b
Date: Thu, 27 Aug 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787832033
