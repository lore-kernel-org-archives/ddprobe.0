Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C177175A74
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786147234; cv=none; b=KEkQxGY9uhNOd6hmuc5++urC00UkJzinVElTtFEBPZLBNM9e8u1+Ws8dltJt5SvPzGa7ANAXW/3cr+YcCMU7EUz09/sBb61jnWFV7ZAKJt/7A7X3ca5l3Tb0NdKCerL4+aUIuz2dpc7aLQYF9m2755Nz/05Adgq4celnr6DENp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786147234; c=relaxed/simple;
	bh=T0i8Dv9Vdyg0Y1/i2B8dQSbV10EKA2j/bi8Y1ey0R0U=;
	h=To:Subject:From:Message-Id:Date; b=DqBlh+TtTV57S8cXKLQ1ieQvdUCUC9s3cRntU37z0naDaHjzmDMtuSBsE2q8APVuHtGgqxB94X7QN4RrLRHWuj41tqngt0W7huh8ue3dsxo7ZlovWeIZ40sdlxWze6ValtG+nkYV/5iYgJEgBgXJ5i9W8rX9vu7d8liUAlgJerc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GHbA+6xi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GHbA+6xi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E4AC19425
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786147233;
	bh=T0i8Dv9Vdyg0Y1/i2B8dQSbV10EKA2j/bi8Y1ey0R0U=;
	h=To:Subject:From:Date:From;
	b=GHbA+6xiHwrR+MLY/IjfGtFpd0UV5OHB44hEVqN9Y1C6/62DE30xUpCJOKFoNSVek
	 BNFXjQup5+yIsAtW6p27RLXWIm7vR2dMtG0+r2nNC+vmBGwAiP6yhyi+kb5xX1nej9
	 i+czHYCfzCqk0Fefk7HpMyLZNYSqJWriL4xv10Q/DyTUGPP2bTz8wDi2v2ccnp1ROs
	 H55x+uK10j0cnanT/hw7X9wzg+vd46R8gtYlldqWpVrrGlGaiQ8YzoNxzppj9M+6T4
	 fZwUMHT2iFs1x3hPdqE886gL8UPNW3gfZqSZgX9I9fr+C8jDqVvvxtlrdvtopRC+WL
	 bhyI15o6TDzbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1CCBC5AD05
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178614723371.7741.1182830452139441949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aea80bb88d29ee7f02c46d694d180ac9b2fa1a212e5f4cbfdd3416dd5f1101e4
Date: Sat, 08 Aug 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786147233
