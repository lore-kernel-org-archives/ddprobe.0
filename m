Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8039379CC
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 04:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719118343; cv=none; b=CHWvMw8sQcv69Z2D3rct34BYqGtYqueNIjqKJ78CYSaLOpPRuWGfNvg2svXsbPTZv+m6qQVGCn0DkQaVNxW37Fm2E8GOZUgoSzLbDuHHT5tkZP3YR2nt4t7ZVxsC//Ds07MBrkeILEyKPWCYzR65p/e8dgcGgSbZIj3h9DKB9oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719118343; c=relaxed/simple;
	bh=5aaK5sKK5Q8gojDUpYbyB0hCXj59b9UuxjFhhjfayiQ=;
	h=To:Subject:From:Message-Id:Date; b=Sw6h7ZMiW6AHum29iKIOZYPJXPRCEHqp2lshsc3voMwuNWfB7y2htzHeaixxmgP3l9ki9zPIRudpELrJk3aPr28Dkdo42BPMDFDnoyqnFo3ycBCLfJAvASCo9pKns7shLgHgRol/+7OnBqR+YQI3SnsKuitJw1kwS67sbYQR29E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nh534dk5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nh534dk5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB1F5C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 04:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719118343;
	bh=5aaK5sKK5Q8gojDUpYbyB0hCXj59b9UuxjFhhjfayiQ=;
	h=To:Subject:From:Date:From;
	b=nh534dk5iOwqV1Q/bLxIRnS6+Syx2XECuDV2EsonNlP8A8N26olszqw11NRV53ZQ+
	 BQeCLGTs3C9xVwWTGqhkRVIvSUANJm7CsjSsPFdejbX0oUz2EwIUUqbkEHxabDjozH
	 qC3EC2IxZ9GJa1Ckd8yH+IOAcPqJW3Xh6+K87p8zoIoXCHNsGdeZYymaqUeH6RnQUJ
	 Ro57uSHxq7X1h4zEmYSjpQjswCP9QtAsOfLkNxwKHyp++F1JEyasftSOKrIZWTAAwe
	 Kn422f8X9Ab8HHHchHe8I8nwulOSL+B8odKqy9+2xabjKnUwxuz1O07gKOE8JB/DWN
	 H1GSJ6TVederg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA344C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 04:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171911834280.20341.11027446378141769510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6cd892ce1cc03fdc33e3538ae470653395fdd3ca9cbafcc15009220da76cd44
Date: Sun, 23 Jun 2024 04:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719118342
