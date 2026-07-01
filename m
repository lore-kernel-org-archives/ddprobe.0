Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD8333AD8B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 03:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782875314; cv=none; b=J0zvPZvSv/2uOhMQ0djjeY1R8wAcLPrp1IR0lGAGs20+Awxsz42LefPaucu5WD2AQbUmV+iVAUCkUcTLIPr6zVKfohgaoJGuRd08sgduEEc5mS9ya+PjNcCeVG6UFURgYm7zlX0z99ELPCRiqoBrkfJbp7EGOxG0OcM69u3S8P4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782875314; c=relaxed/simple;
	bh=GdWWPGxpNzDNxIas1kwDSTUjJaSG92I/cedbW03hsH4=;
	h=To:Subject:From:Message-Id:Date; b=GSalV96xxMSJUj40b4K48DIvh+ovFa+e9TFKXhZyeNIRcRIG0Vng0NJR6REiGFhehTYWTsUPbGCGJQjjANdJshmRaEFJIfFKCiWmxMao1CFP9T3Z+jsEEdycCd/QSQ5zWPShFthpLDjH/N2T9O5LujbVM626Y15XjimDCP8Ie4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPY2xZNs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPY2xZNs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C05B5C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 03:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782875313;
	bh=GdWWPGxpNzDNxIas1kwDSTUjJaSG92I/cedbW03hsH4=;
	h=To:Subject:From:Date:From;
	b=FPY2xZNsurYSkdve6nh7wlz9T/xb9IEuZxdRa3rNiTUAbNWuxBmPPJS0SLA6RCFbh
	 VIgeH5o0MjqxnBAZt1yDI77uBH+wq0AGxA+rFYel5U56vUnN7oScD1ZTrUpjNsfBA3
	 RJWMZ2ojRs7xWDanU5nlFALRqhLvO9m3hAPjEixqKdgwn1+t0G6F8oVJrdnUTK/8Ji
	 JN8+lwWSODrFJufqy+raMWaMTAYvAiRkZR//P0UqYbgYqLmV1aToP96vYqlN2DCApr
	 5vY2eQe5vbfRBoUh6u1tXxqIGBaT+QSl6UrbzlXYyhYi0zzOW83a+d8B9CG6DruEpd
	 yS75a13V8AB4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9034C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 03:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178287531368.27571.8831172553405306920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6ecf4b9a70d07923f336efab6540d42424e53416258e89c1efb814a3145c5a5
Date: Wed, 01 Jul 2026 03:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782875313
