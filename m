Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216E8202C5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758320394; cv=none; b=NZ8r0Pw8kHfGQAGYNU8hc/1VSsj8CqyUlT7O5+1+MYpLFocWmrFo7PG+6XENKC0odTeLCm3ZWOWWfzEU9chqg4k3iYBr8+Kkvan1pxy/rb++AWGYJV6b6NnXwy1oiffZhV9EKuU4itlL0Dy1ZuDRcmrpzedRf43dOLYsXbsgkCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758320394; c=relaxed/simple;
	bh=xVCHKGdJ/BXnx6h5EOn3BVipgbeUoMA30jJLU1IVdRA=;
	h=To:Subject:From:Message-Id:Date; b=oL1OAWSjrst7KSiuhjnl4T0DOrzgwcSJ8TF1ZLYHPBI3HbV8zUf7/fq5JbI2/XAA2XpqanlaXGBCp5z6sLXFdIKuEFBdFczSL1EHeTaUEn52oS8t3Gmzz+YZt4DDqEF1H2FbDrDZtkMWwT11M5Qe9SGsrzz3zcqq/klCqpollzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BvTfjVcJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BvTfjVcJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DCCC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758320393;
	bh=xVCHKGdJ/BXnx6h5EOn3BVipgbeUoMA30jJLU1IVdRA=;
	h=To:Subject:From:Date:From;
	b=BvTfjVcJ/1VYchMvdI40y6bmAJU1pY1cONZxdICE/brKOQzZ9MgN3nxF7yyYswm6h
	 iyvIgweRgQY5VybN38ITBwy2LXbWQB8lXE5H78I7GOSW9OlMgiNNTjelXVFpDo+eFH
	 o19/+NYompTrkQYeTkOdJ+QcXnjmFXEjg40WhdsjtZ8ot+U9TMCl36ePsLBNkdkop/
	 lXZ0dYaxLoVOBwsAxsPCmgmpgoc23pSgT8w4SO7VFMTQJxsGlQRZypQ0Z+K/5dwiCH
	 6VLvBvGeuqWc7irvxEMQ6s9E2SVWU4S1SQin2VFmOT9NH7Ws01JeMoFAV5vfdDhRex
	 TYZrcL+hLo8xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908C4CAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175832039358.1106.3914012168119984648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c820721b003d1ea017b5cfcbc44de0033a5541f0cd18c2655924e25addec1fbb
Date: Fri, 19 Sep 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758320393
