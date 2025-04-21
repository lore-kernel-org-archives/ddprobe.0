Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43117BA36
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745207395; cv=none; b=IM80HhIbaXytQ7WoXHxcrdJCVEJ8msepeqSDPPztZqIySestOfVNejdIEwkLwqyZxosAB63FCMAZTM/OnorvAfzE94luHqQ5By7sr380CeQufJWu4htCwz7PSgzAyDkgSz7XTgDCYpgsj637Cm5jWss75FPlWiFLSflhRDzDLis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745207395; c=relaxed/simple;
	bh=OfdApamam1wH1sCWz2xwqMbdYjts1gRcwDkkHsDvsc4=;
	h=To:Subject:From:Message-Id:Date; b=eeZvFs0nutXXBTNZJ9cVNJ5R8SaIBONiIonN6MdfFjXisjb15MTTcDYqAL98faKkNtSC0wukR4Rq5ld+Wqgg9z+6g8FpitssIxxF4f7PozV/qKd5mReHP82vWYV+noI2YG9XqYz7nopMlVf338JDjmuoHlQEyUpDDlWMSRPO724=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jc2awfj5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jc2awfj5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC10EC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745207393;
	bh=OfdApamam1wH1sCWz2xwqMbdYjts1gRcwDkkHsDvsc4=;
	h=To:Subject:From:Date:From;
	b=jc2awfj5Am6odcYAAuOQkXgXj99zaDI8qGhwtadOWjRxKekf/Rwtx5Hnc4JaL2+x5
	 5hSwXdxbJp0JFJ8andWha2Jsa+uW4NXubS3Wdhn3kCM7aou33fCq9WI16kESJBVpfk
	 g6RcDmnQsDWWWvAcDuGrEvlTyJ1bQICaHqpGCKZ9qey0oC1ook8u1LVHVPL73IO6V9
	 yuQNWyLocC9dsN9piOqYiHMsX8d1UsIjshoAnZDSn9Oawo5J3iHPrYI9OXJ05gbNV0
	 0St8p6JKK+PMKi7yUfge4gfXW0glesCH+HqhSM9CnnOhsEj3HTj7jvM/OMzrGyB/nE
	 +G03E/moXK+gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97524C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174520739358.8227.5748338227117484807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc9a67086d032e3b7b38464bdd89797c0098353dc87b19c49898ea4f2a7c6008
Date: Mon, 21 Apr 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745207393
