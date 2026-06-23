Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAF7342173
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 08:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782204394; cv=none; b=SGgrI2iuUYtQtrlAV63xd2AUuom5nfsJQ+CeN6SBuK1k7Wvcxq88WEBAMQLeKW2a4duWVv11fYa1V8iORasN73GrJIf5wtSDUmw48s+7n5jvhJTF7D05vxf6EWugx/YrscZnRR9yWXnrfXLBu0hamplVkVnIPGLqNLYU5bw4aqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782204394; c=relaxed/simple;
	bh=BVWAaH+Kx45mol8JTSag9JnBfmWjzcDojj69LtcGzXM=;
	h=To:Subject:From:Message-Id:Date; b=dbRVtZtLt3gFiQVC8D7AnIRv3xgVIc5Jt9MprJMKNydGDSx4M/Yp1/JVbBpQXUdAhc0bGFTC96EZmGvjG3tBL5hCPg76b8qKymXHWbbX7kP9tEGorcFS3tKe+eTZDPpeflq0CEaeL7NLFBtJOwAZ0tI7M5owhzRdC77KOdprUy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uA0D2oy+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uA0D2oy+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9D97C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 08:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782204393;
	bh=BVWAaH+Kx45mol8JTSag9JnBfmWjzcDojj69LtcGzXM=;
	h=To:Subject:From:Date:From;
	b=uA0D2oy+H75acztYv2oHmyivESXgkzGVfNLBZRcLjZ6XX/LNb2Ge9E/ZNG2nzf/ft
	 3lZGyNEJGmlUhxn/hfUku1RipKsrj4DmgUHUuGZhfKuJ7zSHCi+wnQOhhCGKJe1wh4
	 x/ZHtUMyhrIckyikxUs23tnwDJTAuAkQPjOeFvhBDl22pU3MjAxNnKrUsGocIZKRNL
	 8RtRKuR6dJ5kaBc95Pd/sqmOGueuz9VFlorAd1FFHQl1kXFd8B6T4fkLZczRgEGmuD
	 bKyF6a3DKfz8ncLWUJtMDcVphgHai8S749ejhk/mkRete0G6MqClmdUz1Sv/L8OZog
	 vMeDsBTLpRrvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FBDCD4F26
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 08:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178220439368.17909.14787052880247000481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd1fc98327f8d0b79baeea3eeba87018bbd1e41a875a9e9e20feb6935e594198
Date: Tue, 23 Jun 2026 08:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782204393
