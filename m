Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 625F4351C06
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791384034; cv=none; b=MJdm2PNlTv4BPjCe0+foqDMi3D1MeU9ioESWlSNrZHMQdnHR0ZuzbSMEtkhftFOEDg0E+OIs8ZZXJ5xBOTXSyi0ihq9duyf9EohnXUcEF4W11PQGd31qWNv0lBItVNnRKDA/wSeyRdigCnAQMavXjkGNmwiNGtauCVa/Imu899w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791384034; c=relaxed/simple;
	bh=KhJ/ZLSqAxFBIE9+7n9DETbBo8tlC2p/nnJvqSelHOI=;
	h=To:Subject:From:Message-Id:Date; b=WYWzgucrcBq4Df/4vg7cdNBZdkfTpmIHs8NsWkOJe+0+3c8SKiqHRgtVeAbLx+9VUhgIiW9iWXnvcDboz4Cu3eErM6w1jp73DRq6nmmpd79BwvenPhHuMnzdTSxqtWT+ZJZEK+EjB/t+4uxlJlcyT93UY8OU0ZbK067e+Yis7Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oc9ueLfO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oc9ueLfO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A2CC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791384033;
	bh=KhJ/ZLSqAxFBIE9+7n9DETbBo8tlC2p/nnJvqSelHOI=;
	h=To:Subject:From:Date:From;
	b=oc9ueLfO1HuNUJHEodKj0Jk0fSNWwDs9ZF6T6uJXD48MeCHCdm9y88Prgn8Kgg8sT
	 bvZXVd9ecousA7YSy1vDWtmR65PoqLBp+3LRjIM029YidP+jUOpz3sJGK1dvBix9ne
	 AgSzemd9U1USegSNQKqw9qnDM8hNbXFtBJWugnjB0oMFEBni6L2IM0l2KcR61++LIE
	 OBozo3Z8U1NPWxBX4nY8vaZIRbTNjJqMDrbVUQiF34GYPuwI9n+sZiR9a077Qqvv88
	 njnw4iFbX+o3rRzecmAq0XH7lMlVd9H94oWRK3otFnwUVm+nroC+uuIP9Q1ZCajjah
	 d4AxsnWKccUWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB11ECA5FFC
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179138403369.10315.91114951455203035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e68e1148297a600af637704d6d4d01037b98d65e361661df0fd01fdd577a4075
Date: Wed, 07 Oct 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791384033
