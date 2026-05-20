Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC78F2F6931
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 02:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779244833; cv=none; b=ABx93uZ8rCuzBMehB7DhQJ5LfBUwsAMaXVFq4RtaEjTcRj8W/OzF5Mu32RW8rThflF2oEbb6YYHe/1gNACHaG/IJ9ZByK/Bl7EWOvGz2eq+p5VIA/D24lSklHnerXA3jA+GZe9JtVgF8RUzgVH3v2gV6h/blZ6PlhXgUxYGOvtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779244833; c=relaxed/simple;
	bh=eRBHWPbGg79gUCO88A63Cj17BuNNytgnSSzexBIdZVE=;
	h=To:Subject:From:Message-Id:Date; b=OWDef1cZXKKaZ5POswomYJmdFCS/QSLNAYoKgCcBoVubofPxdPu/7RLrjQ1wMXa86m2Yb0TzK4l2CUGARSrKIHZeXhJ0sDdKQ8iaONC/alHlKP1c2tM7Rc/LKN40MMlv9V5Cp/oLuj1/iAzp54SBq/1YQrCo0AxE3IreKC1SKKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZTPC/PA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZTPC/PA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E77C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779244833;
	bh=eRBHWPbGg79gUCO88A63Cj17BuNNytgnSSzexBIdZVE=;
	h=To:Subject:From:Date:From;
	b=jZTPC/PAwlVZaV3d/4wN6odnjELwnzkbAuJN0t0okIEiWcFpQj//oSySg52kUoVK3
	 ZK0N0ZYiesrPF/KyKEuhzEgDRJCwbJj4VHnNlfsw2pQIKaA87Ri62kFE81QCTPw9y0
	 FLCqhD9KBmj3qQEWORZO7nb47uoaWGTqvys2bHEdgXzE+cnld8TNMOMk30QRPB8EKS
	 bOxz9wgCx+sOCXinMdBEOzdk2wdYxIn2ldT4tue2nrEh3p4yCd6J25vhzgBEBwwHHo
	 aTUD01SeILPrH1GDw01iJZRZkgjK4Y93CGy6oTS4DoKjEFg7Tj9EVR6SaVtk7Qcn8k
	 P0CJRC/B9evRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBF3CD4F5B
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177924483369.11715.16708412532500469556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9e36580ed48131195e89a6429c3aa7def049dbd0a458aef1e37ed017640ef4b
Date: Wed, 20 May 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779244833
