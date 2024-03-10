Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E49FF381B9
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 15:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710084497; cv=none; b=bhiIKvDZC/bSpT1yl+MoKLwSCtFY1thVqQBa4OynGIkltzeP2ZkQIT6YM6Fmz+txC9V7ARoJG/F+UGfGcG9oudDgBNQe5wNSe+R7y+5AI0w7L61j8c8sbYgVmxBjw8uIU0XGwvVOd2gElqAZBFntPnDiFi1DkkdHqda6l9/wWYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710084497; c=relaxed/simple;
	bh=w6uZe2kCxyD3kWhSCpZC5cPQIClHPEzeSYxiALh/8Kk=;
	h=To:Subject:From:Message-Id:Date; b=asHUtQE+n/OonIu9DoND9FYfQDoc0LRqQw+Tqt6Fb2wDAXUd7UEHcLbW6rLpCqUQj4XN6jqGb/gGCXE8Kwy+UvvP5d0CIh012T70pMumGpy0liGE5vkrfQ6SPECahQIqL7fXaoP08muhAMnhkriO8mHcyfNmxHGeb/GYNv9eBkc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2pkic2c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2pkic2c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F4E2C433F1
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 15:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710084496;
	bh=w6uZe2kCxyD3kWhSCpZC5cPQIClHPEzeSYxiALh/8Kk=;
	h=To:Subject:From:Date:From;
	b=T2pkic2cA6MbQOWfMBXvugy8C+2uVgOM7DAHdXx2xjcJsDYuYzrr3FH4+QuKT4Z2V
	 n8CzFKSB4JMPnaMaQ8Zb1HatpbgmbAcRmobBzAasgtytuFhKAc+ELzMJ+64ArEZ9I8
	 cR8goWsPD77vLjO2aipC8SyV/ltjAuXakNt1qKzcxYkX0U/2bBNJ+mYTP0nlL2uOzr
	 dGWRh6GVnxJyHJF0SBYFWgUVB3sgfmQFQ5y3rjh9YA9Qfy4knUQRGwp2FPz7FAEQ/B
	 Q/briF20axdoekBTQKqOkycZcyutOI6KsIYTVFoImV2UseBup9nbE9mfZWjXNJI15s
	 NXYAt6+3Hv+ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63ECEC54791
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 15:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171008449637.28943.2310081087463272722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 345e5a23fc9fe9a181afaae0ba4b74471c44838f3567d18b13ddbe317c3413d0
Date: Sun, 10 Mar 2024 15:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710084496
