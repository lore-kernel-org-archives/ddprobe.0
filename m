Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6351ABEC9
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722628554; cv=none; b=T5b/mCFXwfRjDI9rqbC36GbmgKw6zcdR5SpaXBWWSjQ2sg4n8aVyGlhiwJys+cnr2Evz7RpzR8Lj2d7JW3d+Mw+TWDnZ34AGDrgQL/in94yAWFcqAoRChlEIGi0ViDL1RsIjIfjfmgWY501hkjsukpEDPKzD3M4Rj4C1sPVZ05c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722628554; c=relaxed/simple;
	bh=K8Knazm21bofC+95vJAVxL3ym6ImrWOkwUFua+ZnY+s=;
	h=To:Subject:From:Message-Id:Date; b=CYZXNz1fFCUHzog0pMQs1aIw/NgfdWqOO+8EQ+lu7nBkvqCdIQiQlkSQsEHuD8Y7XiyggZqBWMWWSXtOgyJdjmqPs7EUzpuwhcoXFm+sNUlACQjS9EXcn//E1tqXq9RuBlDIwtW4c+C4X3R24iZjepyTBCQiDsBersbEepcF2Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TA4PGx/5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TA4PGx/5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4BADC32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722628553;
	bh=K8Knazm21bofC+95vJAVxL3ym6ImrWOkwUFua+ZnY+s=;
	h=To:Subject:From:Date:From;
	b=TA4PGx/5S8uooQVtB0unG+ddpxJI3ejQb95AfdMeLhMop8hNnSXyScfFLGpAbs6WQ
	 6aBmwq38LuVmFBXmvOCxRMxPSQx97XqOC1Y7ATvmKV/mwZV1tcLEgQdIoY8qQvB6L1
	 C5X+DacrDVivNnIczDI3SUfm3UA28hOErXWYfbwsDrZwe5t/Tg2za3+i36B5s7EcCs
	 NFUUKTNGm1lpksCafKADLQ8BE8bD27yif6SnbAQUrInqzHudC2r6q7lhDR+Sp7LW0T
	 Z+bweAoyC2et7dCxw1SPCsHrO22MlPaSi7lKwTLYL3Q72n/PUtF1o+gTNERV6KEJNe
	 2KropbrhDSVDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A321CC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172262855365.27004.16105812440261536258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e51322afe2e44f607beebe165da9ce627d50fcf6f62f9d9170e1d18223a8065c
Date: Fri, 02 Aug 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722628553
