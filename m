Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473BB3B776F
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 09:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780911874; cv=none; b=GbwgBnGKWFvLS4X1DmuNiJ6P62JQjPqCrEinnT3Osg2AOoJ/ERcCXvLM1qjnODg167zXVAQlHa3Z236lQPPEpXffoYD82wCMgQuwvyHjo04dJ2/1JZz5nb6kbz/xLn8uaF9PmgjC35L4F/3i0bbJSAauzhEwQl1TlqrrHpbQoWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780911874; c=relaxed/simple;
	bh=1HeiNWTe3Kvxjl1l4T0bO+S3wYE3/fg8C48oSURTtWA=;
	h=To:Subject:From:Message-Id:Date; b=folPiCPqv9Jz4iRUy4UcGNRjM+cY3/a0LMWIV27QvlE0xMUUKuuyuwWlkZcWzKgcKmBZAid+4uZpwFYHVjheEDHFw6T3kJx1pC9dkc6EA+mJu9Q2Yd6siJ03cAZZBbd2amwWpaxLZ+iOv+Tgk63au5w6qtAG1aX2HIoCLbbWIg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JhyNA3cG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JhyNA3cG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C68C4AF0D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 09:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780911873;
	bh=1HeiNWTe3Kvxjl1l4T0bO+S3wYE3/fg8C48oSURTtWA=;
	h=To:Subject:From:Date:From;
	b=JhyNA3cG/VaUEMdJeWLCOJRYB4cOwUM44ETmSkDeJHxZuY0lyui+HCrfhGWrY0XfK
	 O7kWcXPKfMJP+e6U/9cuoTV2GIYDWUKiiYNFLGVXl0X1bK9VcGABuivqL7EbigBwKH
	 wN5h4TtFQX38EtVGDhWp4l3yDzAErvA+rnjWgy07VNhGoLPQsYpPzs+8gyRZ4h67Ix
	 LexRcqeu5f+OkZbExs3UrgMZm7X8oMkmXGtpmVl8XFdCGLYFG9oNDdcE2nPDL1vtQy
	 pdAxLWth1uht2TQvtG0a2Fl5mwJTb4ja9VHfzUefz98hu+jfg+SSskVXYQVntYRAQk
	 hBtLrSHKkyy4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5368CD8C9F
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 09:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178091187373.14579.11565166867089811561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b65c6d6f7f0348da8f8ff3f330f44cb3c3a8ff4c4773bcb97f2392ef84328543
Date: Mon, 08 Jun 2026 09:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780911873
