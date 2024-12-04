Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169B52066FD
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733354754; cv=none; b=F817/LdSyLXzYN9DvnRwpoYIPOYT/+tf9U4aqfpmgxZQCFrIl7C5+ePEa4B9uKTXu5H5YUYSrVDhdi1+MDkGbgAFsqPGMt7xfL+gecct0F0ur5Poon/7BQSHq1IuRP+M/KjmNJiext2iPtyD4lgnY47Hrr3JbKZgtF7KDrs8pHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733354754; c=relaxed/simple;
	bh=BbC3HhWS9Pgwxl/hNYBL9l2fRbFW+oZgAbKxUVyPl3c=;
	h=To:Subject:From:Message-Id:Date; b=YZuGk18BN/hEmmvSt2EcDdxi467DYO7P0o18geISGcHNv1g2L1EJmvB6nq+ZVczfvsbJ/OIc3zcFSHfheKwDZTh5uPZctVO4Bce1MXh+EpGqvcbNgTlx3YQ/7WZceUDP+c1uAYWqB/Or13aksqFB3YMCcx0Kzw/ijWVLF4TXDhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Td2eLTuu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Td2eLTuu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A736EC4CED2
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733354753;
	bh=BbC3HhWS9Pgwxl/hNYBL9l2fRbFW+oZgAbKxUVyPl3c=;
	h=To:Subject:From:Date:From;
	b=Td2eLTuuggeDckvZZU0Rf6s7BFpDHC/x0Ppd8KmEeJb6AgU9X6PtXnXjzPLY3DckB
	 mYbL2cRJ8Hy35AiJomoDAoDSI+QlFNqZIImYLd9V060hm4hQ88i/EEj+ShOFYwWf4v
	 5UEPukFCvJ3huC7c2KaaZSrFLsMOxnHZ1i5oD8VP1SbndUWEnKhf7YTleo3yFVNvR5
	 qNrRjbeDTTOUPQ45QqUfjFKb8BhUn7+Y0SJL81iboFY0+ME7o6uw/l7XJh+Q3C+8IG
	 gcjCmaX87zVD9iRfKopssKQ0r7CUsbnLiULHqPCvVWRHu+2KAm1+BpNkGYdEXM763g
	 kS0/fkZhjhXtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B09E7716D
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173335475361.6699.6215911777208854723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d867f318b2affc753ee803de659af105a8af8a1e31fdd3ef7095eefda08dae04
Date: Wed, 04 Dec 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733354753
