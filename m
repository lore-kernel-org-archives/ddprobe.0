Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EE641A79C
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789377034; cv=none; b=SlOZwfJ5nRXt22t+s4YjVNuqp9CzxOvY4cZLR7/YdziKmnfGdP/qM7pjtUZiGAykC6Y85fW7H/7t18oKm+0EnrIllSEtWQdYE5PZXsgKkLhNfdwA4WUrhtk7RTI//gWg2VmO8rRq+Ne8CD/Cj9XeMaDtwZpxMQuhSWEoDYAxEMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789377034; c=relaxed/simple;
	bh=ZuUooMFhr7R1wbGOfd4eZnYu/VlR+BE2JAJhUwC/wCU=;
	h=To:Subject:From:Message-Id:Date; b=YTSFinUhFm/M/3CCgpUnZSwmq+J+LKr1nGJ23koCUTNFuexfSB5h/2Qy+/v1bKKxaPkLG4RDN6NvUBmMs9ptKpEvgj1aZeP8N/h0ouURHyIG8gtC2UVVTNDsaaZKIiW+YfRYKcR8NcWz8tErGgTgBMeNxeDNpShj8LLWnH3UZrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0z0tP2U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0z0tP2U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE04BC2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789377033;
	bh=ZuUooMFhr7R1wbGOfd4eZnYu/VlR+BE2JAJhUwC/wCU=;
	h=To:Subject:From:Date:From;
	b=L0z0tP2UoE2VOD8jdBnSFR4TIozwNK1xQzgjWGggtP3uyUJQxTsuf+N/wSGOuhhq9
	 ABAkY3lYkhSBY7d+BmlAMQ3/zaUxEFs/ZlcAoHxFLyEHeZbXFwzLSsJFKuiY5P0aF+
	 mgYSI3kxDb1Ho9m/PXCG5hfZdV/68d+uWznMFgThrFrEmyL2SAVVFSPnnqn7pJq2HC
	 egsSuX7bEDiI93Pmrjhqb2ArcHQdKMr0fFlBMu40tmJvM0URYEXjGPrznfr27J9jk3
	 2EAU+vj7c8DQAorX0BCX2GuFA/agyKMy6luHKPF8fyOnPKQfj9B4RbQg8Gj1aqAovi
	 trusMOkxr+LbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9779C88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178937703368.13486.11404299136205887911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d181cc376a84d71a7ff8caddb10ee510545fb91f853627879e3b17a9b65b5067
Date: Mon, 14 Sep 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789377033
