Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60F4140870
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 12:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718456303; cv=none; b=njRS38BCFEQfgWNSfKfwAWGxB17bBJAWj3Dmjaut9xkNfpQJx9e1tlQ2L6ntt1YK8Q8o6lu4xkytbjNBSFXh84IWd+km01lJIsjs/eKjcF5MeUy2MUPlw8zk3fFvAWaQg6x4iYZ4krtMZQwbsYA+rKUCpElRVFAXFbPELW2VKS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718456303; c=relaxed/simple;
	bh=MB2BYIzRmLYStmSVY36el5UG7bEo/yxaZ2Dafz+x7zY=;
	h=To:Subject:From:Message-Id:Date; b=hwS71Z+YkVmPKoa8jc5QDlhGy5ZOSOakDJzUUCAO+q7/g/KFODSNWSFzCfQMlWnxHcE14H/oDBVhZDYlUYUybQ7mo6iAQ8uF8dhV3z/w+1x/yDUY79diAycFA0l423UID4fvIn2YyCzZThkUbuByBmilmZoar8MWn9EQyWbzxe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q+KrVKNA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+KrVKNA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0036C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 12:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718456302;
	bh=MB2BYIzRmLYStmSVY36el5UG7bEo/yxaZ2Dafz+x7zY=;
	h=To:Subject:From:Date:From;
	b=q+KrVKNAszRcONkTUN3qzFsopK4nXj5BLPgYdZuEuglAdvEf1k32WcbtEXMXj0pAJ
	 i92vnLv/H9X69HD2Tioit+p0jNeAQJbux6rebwdCmsH7EWoXu4Rk4daACQJoHJaBSN
	 LKp3QH25zwR+GCWLPYdb33OhDqbU7CwLqnRGt0VZYmapASgaf/fFiPXzkJLvUMu/IG
	 NUCk9oKamEi5w6iAp+1PBbKFeD5yohp/9aZ+HVhl3JCz3nG/mgbRP4JrE4XU1w31fk
	 X76pZ5aTnw+Oz3jbQ+Z5ylo3RYvZhVeRCL755Cso+SjGV2xAbkyZfOeME6IpUHTGgm
	 faLGILZGtaUgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBEBEC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 12:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171845630280.29493.17249737867559202225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19f5a2465d3988e52cbbfc27234550252c647ec621ae2486ee77b50f8895592e
Date: Sat, 15 Jun 2024 12:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718456302
