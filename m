Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 518C41E7C18
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787355034; cv=none; b=ApEUmsdN+J2zzLluXsS/KkSeBws8YOR3d1FJGtI+l3rppvTVatDUjNgAq7GMAN3UJC9ODmYq0OmS9+4++7W0LrodknN7lSrykIZc0mO9BtBQ07sVaPGdpkkWvUhQBNtOqbnArMPMlmVkofpGCDW+NWt8yn9kqtMBkAvauGUwK10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787355034; c=relaxed/simple;
	bh=+5nBwa0gZqRDsmnNrrMYwi2Mlp1oIjmpSNek720I9AY=;
	h=To:Subject:From:Message-Id:Date; b=kHXld/kpQnCQSObQvCE+hk7C5amUFzHsG3xKGcy1nzWm+yt2Z9BysKqQHx6MExOeq2ODaRDr5DscffVHEnoVCyb9Fge3/TmCssAUBVGKOV6NAh5iMLsB753ta9Tb4kXhZIMz7sv+K5xXB/32c0b6hS+0Dj52H3QdArAy2VRDR+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kV+CvBda; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kV+CvBda"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF8A3C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787355033;
	bh=+5nBwa0gZqRDsmnNrrMYwi2Mlp1oIjmpSNek720I9AY=;
	h=To:Subject:From:Date:From;
	b=kV+CvBdaMg9IJfaI1d1gVCLA52M3ELpakJ6kSfs25DWh0xTIJp3nBLfqilGd0EVPA
	 UBngOt/vbft7Q0nzEOF+QWYdxhsFFByB62vAfC64XqX6hO7YlCQf2tp7iqYQWiTI04
	 0hZ4G9T9RudXr+hLy1LFosaDkm1GDuElijsN0A+iS/OLudDZsM2XrucImPp1QVmI+h
	 N8UhONcjoOyhys/IjYM2KX8n6quKK6Q9hiyDXzIEg6mM7ZxLc06rdr5PWvP28Zbrk/
	 ZAcWLSkT6QeK5BKt4Ygmr2LRTfE2fAWQgFpaZfx5PfdlwZbELTSliVelA4sZB4sJMR
	 vladr8Ln5c+/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B45C1C5DF97
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178735503369.17256.14631714434964469380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cd49d79db13e54f0fe4712abf24e550aa51344fb9108ee21572fd96af350a2a
Date: Fri, 21 Aug 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787355033
