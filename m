Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBDD37B3F9
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 02:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777946854; cv=none; b=ZkA6Gk/Tauw/8UGtna35FoNJFtY6D1HhB3ATDGRYpTRSTkWIITJWUiwNNXf5KGWLbFrOHZHS9CaCwEyP7+zhzNtVaQADOngMIiEkEMhHQ/Hc+5Rx4GKu7qe7imWkWa+ptZyX09FJ6MO8T4p/AWZzz1AQ/yh/j/n4H4+8EkdVP4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777946854; c=relaxed/simple;
	bh=xjAja6VW+S2+u0GoRZc7AzzyoUC0pv3MwE4FnFdrJaw=;
	h=To:Subject:From:Message-Id:Date; b=AAgbwfCw5nW9qXVC6ZKgh5W9oOeYgtRgXv8FUHynMgK5LPyTMZqEy60ZhiHdFazIZr/1Luws1OH0tX/acL38xNzGX4lAqAKUdol0++48mFOHCFD3RKci0REHvio9jTTjz6cIT4g03dS5ws8yKML1CoKe4u5tT9GPNZpfLGL/ivQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iLBe5vc8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iLBe5vc8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B63ABC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 02:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777946853;
	bh=xjAja6VW+S2+u0GoRZc7AzzyoUC0pv3MwE4FnFdrJaw=;
	h=To:Subject:From:Date:From;
	b=iLBe5vc8OLtAg1p/0ThbZKXqjVlAjQeaTFaSq9yKYKKnHUC+tmY1SxhAHZ+Uc2+re
	 f27coAdF3z/GZIsOo7/WErp88A7Fx0jl6r0T5nIN7jXyyvii/JYhX5xueccas/WrgG
	 VeW0SkETRM/6zKaKeVuNBd3s5sM34Qj3YFKZZjqReh0klaa/C9AucmreYspYk+mizc
	 60drsRE8DvLlmnDLuEQrcl5YI2mXXSPhgsI2kShtCyactIZUNweaUgbYDuV31qw/4n
	 /OOcl+k8fkoL8ZySW/Vw6sRTuU8jjeZrMeCohmEXf1P+x/8MbbSLbCuYjNZsv0WRp2
	 YGysjRgdY3qbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BDEFF885A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 02:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177794685368.10641.5353459373698783373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a0aefac3ea954843daa68453311096ee0149e5d5e68e0e63f1a857be7f07988
Date: Tue, 05 May 2026 02:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777946853
