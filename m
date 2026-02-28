Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CB4B39B958
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 22:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772316294; cv=none; b=DV4BzVD0zHn5DNVLABnxMOh/XVMJFsCJ2EON61IwTpp/1pi7KkugT9EkE+fZv2QVFTVTUVsDOxMW9nwCkYCnRhz80vLFTWDWZ1u7VTYAMD8rG+ZTnngfKVBXqwPzl6u9wlQaA8J5TCFupBNhM9ZQJX8bj28OUHIstpWsROvvaJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772316294; c=relaxed/simple;
	bh=rqHToGL4YVfXrwIExHutiAGQVJKbG89iET05S/TS9Po=;
	h=To:Subject:From:Message-Id:Date; b=tPxOMpYsfvGQqnk4MpVSwzgv6xJNgvsIX62QvIdG2EzgiXfUUT1xl8GrGvR0/x3dqyzG+9xtqWcHGrwQLhRhacW/kQbU6B7SuScK40P7hbN0sYkbO6B33aSKHvHenD02MFL1LrRBqAXIfimB90PLIy5X4Xa1AqNAlIIbWW9Et8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ICmfQW5m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ICmfQW5m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2EE9C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772316293;
	bh=rqHToGL4YVfXrwIExHutiAGQVJKbG89iET05S/TS9Po=;
	h=To:Subject:From:Date:From;
	b=ICmfQW5m+4cyNFiNbcFLWn0tqGJ4ar6nEZV5SEG1k9tQC9L4Rhz/k6UXtpLvxdDas
	 mhr9qhQ93QdTNdp53Os1BuiUcULFDAYI3YnHd8Gd91/hAsq1zB1CDk6f6+O0abfie7
	 PxI5nAab60ZBfhOj0aIhrgx2OM6eU0tMTrmWO4ZcC5xRkI3FBOg+lSuWF2XHyexGJQ
	 Zk4u+g0aA2agpu6+nYIQWsTjx+R90fg+qJEhkw7v6XBMt1WJAtqFJO8ippTOGqwJYW
	 AkjvH8iYMNeCoRkZ7fdQRq57qkegVgKhJ76BnaUBFGUpZVkOXz0MY19xnvEvrwmWBz
	 1ucmcZSECrVzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A410CFD0040
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177231629362.7800.4213266226332014055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6542ddb7c10da2743cce597828d249e711114da3bd1675b44bc3f2f344ccc590
Date: Sat, 28 Feb 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772316293
