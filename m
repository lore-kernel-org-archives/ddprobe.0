Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54EE12E62A2
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743721195; cv=none; b=lH+1OyjyBrw0I/xuHalHIVc/aSpEjfgnx/TyAUh41LMUXVIqZL1tk2mCFS82EPHJ2qoAIC5cdwZeOMC4xFX/kbec1+dzZKsmwTL6i7Mj+ifDdGBngRyqvJx0dMX/E0kLu4wn/GFE+e0J7KOKdRE3pLRXcqtRSxBjvNQVcHftxyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743721195; c=relaxed/simple;
	bh=ZFo+ju2j4R29NBWrCCRui2KgrwjBT5FTjys0nxQgy3s=;
	h=To:Subject:From:Message-Id:Date; b=DF9G+bnc3/VqqESyJr/iqq92S7C3jt1GrduliG8cXw4YqMm7OkhHzW/TTKFUC4Ux1fsrH2RsDJaDKpR3xoAVtt2LzVjhl+K0Dj+mESSOZriC4GxGKk4eqvZXvwR1ZAGTvCETUOcH+EaJA3oezt8Fkj1zdpBS/I8SNRlRKZ+BxRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TuNCUlJ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TuNCUlJ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE95DC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743721193;
	bh=ZFo+ju2j4R29NBWrCCRui2KgrwjBT5FTjys0nxQgy3s=;
	h=To:Subject:From:Date:From;
	b=TuNCUlJ0xEfTend3q+MrfvT1d3/zeog1YRP6cs3YNOCUhNenjm71UaNzMvBGaUNZm
	 IPjp2jdDw9U62hdEVE64vx4za6r9DN8WgC52431i/uMb32PbIMQGK+ccOmOIta6x4i
	 LqQAKvf5YDFGtk0aiwuiAuuKZQKI++FAYUQRWzLxJoKENqKq8RcP2VY0oi2jDpx67h
	 20w421zqdtQD2D+x6+6O6eqwRwGrRKZjJ7KZfiQHcpwS0jRHHZjGs78TSYgNu8gWgm
	 ouDLOQD/4AeH2E/YOqeJ2QReQyXPDbFuJu20w2CZVXZ0ege4kUCi9hK3b0/BFaZCH1
	 zNRJxMH+zNtdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F47C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174372119366.7118.1372187167021955771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d89a6ee41968d069472542ea84ee72b8135626c73f5499843ac84267f981d94a
Date: Thu, 03 Apr 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743721193
