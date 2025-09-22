Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4132D94B3
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758557994; cv=none; b=l2oxE/vA6pOgeLdPP2sW3anjoKdgtNyxJ8IwBlwHqwLxKikID09nEkLA/42Ii1jHL4EJz8CWEqUflPcWFuv2UsZis36gQdqM3xjud6M93jydBXuxyATRm/R1Uhppy9BCp1CIuli4GeEvLcPOlhsk6H7G5uhU6ESGbrN9rSyduoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758557994; c=relaxed/simple;
	bh=PGme4UM7qz13v1PS6YF1noIftccrIKd0eot8Z4vnvNQ=;
	h=To:Subject:From:Message-Id:Date; b=GiBqFejmxENzkmOS5LOSMokPcB64P0zvNNbkGMeNh7+EaawPLOEgJpzYzKFS9bK7T0Iu6R6JDJymMUldpjHLdtMnRV0kS+S7j3Us8t2MMFfYeJbnN0HKPpFpwyWpywqqdIBu6ktsHv4bj5mVSB4GKSQLv1/UUCgFQFJJPUWMbQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdwCiTI1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdwCiTI1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F12CC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758557993;
	bh=PGme4UM7qz13v1PS6YF1noIftccrIKd0eot8Z4vnvNQ=;
	h=To:Subject:From:Date:From;
	b=kdwCiTI1w9e6qjdkZvBjsKdYV9J1WZCUu/CK05kSwkxH5RvzbDk3Fo25p/B7EEdOh
	 BNOM2SXWvuVoCmyoLb8jrtiTbdMGkTy3OcZqdEbH08hVIU5IpnW6vuo8pLAVoBtOT9
	 NR6tfMt2vUS4asfwStvK715U3S/C45VI9UTcEMrnIHaypW79RIhUodKmwnV15xpwdU
	 je6zZr4xTHAGPrwG8VSwO2lDMsgLrzx//K3pAqhDaSk4VjstIQT6PG+GeB8vm5ftDy
	 cnLMSGwsC26DyR+lZoqARxslssjai/rxitF1wkVo4xBoT3AMMoasDFn8ef/w/oz1uI
	 z8k8AqFDqzK1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3B7CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175855799357.21144.4714449175788821513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4603bbd830497e32717fb06d479bded2bf870224329593a4e78084379b0c4ba8
Date: Mon, 22 Sep 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758557993
