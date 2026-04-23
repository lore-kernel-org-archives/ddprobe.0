Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A5A2D0C7E
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 20:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776977254; cv=none; b=tIWcmrp3OfD0olsU1SMiVZb6RmmjJC+2YxBvmIpXSD5BFrKYob1sJQkORVShqo/vkpJxYcIv0ElJE3P3/XL2Yd5zIXtFBWt6GJzQAY3u6guyWv5DRuu92feGZaN2n7YcFtJ9e8HNqxsZ/k63DbyWlqGEV/bkNbY7tu/+QlV3+Zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776977254; c=relaxed/simple;
	bh=ozMLMQI1pRQTCYJJMc0u7CAfocm4VznnuOv9hOGHUrk=;
	h=To:Subject:From:Message-Id:Date; b=CVKHnQsrpe/3QtgvOcWNdmQlK82TOMeyAaVOj9YfU48fiTP5hZj7NZfBOvwtzWmJaDJEvCML4rYDZmQL9AvCq0ii0p7yNNkC2uuKI3gGBkxAmiKEEHNtWAsD2OlWBPO8Hhpqxm0zsAUOJ9zixElC+O0TO6XyFp3SY+cyhvocTkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O/SIMu8u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O/SIMu8u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B10CBC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 20:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776977253;
	bh=ozMLMQI1pRQTCYJJMc0u7CAfocm4VznnuOv9hOGHUrk=;
	h=To:Subject:From:Date:From;
	b=O/SIMu8ukGMJY3BO9QzTXMmX5Ypa5LpQK6Z1B2RmxP2S6SxA907yZoNgPVNrsQW5u
	 60OxlddbqqZQDgyPs7yA/TxzEMWSlztC5OuQ5gUOLTzSCImlNFGXyfhc+WDSSHdS20
	 a93f8x/HIxdJJPBf6mDdhro2HgYlDa9X1aduJ5Rs9b19nzH2GHrKGDqSPov+BQIzwl
	 7NKGtPUzF/pddwikv3tzBjU7aAVnjaIvzZ8TScG5NZIFoZOyMYl8PG6eChrGYImWUk
	 pc+a0vOhbYEY90dQmHCUlnjh2UWZuYtAPVYTF3ZSlRYTIgzxB7AH1/Xf11pLJ+V3b+
	 2L+FmSVcNNuDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0EBFDEE45
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 20:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177697725369.9632.17458661188035750890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc8223a1988bb2fb2ea931e8f84a70f238ac01ad65a60a1de43251a9041e61d7
Date: Thu, 23 Apr 2026 20:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776977253
