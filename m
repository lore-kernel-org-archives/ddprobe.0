Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8855C171AA
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711504696; cv=none; b=GB6sVNn//FP9HKyMbd3yqIQ9OQIqdOsmFOFdRbnqyFfdkNxVDm7bYw9PGHIoTsBusZTLatjhA5faSlphZ1N4/YMxbzH/afioMtBi7DD8Leg49KxPusL4Y0cq3Looe/FSlODgUEA6Ju5eeQCihZhbY2ptAaCuMqIrIuZI5zwZmko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711504696; c=relaxed/simple;
	bh=WjTbdBE2kT0ejKIUax3RbTacCli2FTDMSFiJEyI+i0I=;
	h=To:Subject:From:Message-Id:Date; b=cMv7kn77EAsUCGHFn5MxIBedhprnDmsVQjPWJJ3blfDQmy9eYMa4ePFBOtUW8KTftJWkVnLhvj88B4BXIUlrTgkVE/OdAWH7a8/hdjOMTfCwJZzbOiT9Liz1NbbrGlOtm3ET4wDKYzFU6VRHNVA9Mgigu2nHfIv3CJ9OkjxniY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mvgtDfTL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mvgtDfTL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 698BEC433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711504696;
	bh=WjTbdBE2kT0ejKIUax3RbTacCli2FTDMSFiJEyI+i0I=;
	h=To:Subject:From:Date:From;
	b=mvgtDfTLmTAYabiKNJatFBd/1Du3ISOx3/kP2liP/DhOv7rQYHEO6iJDCsRhlxXUG
	 d3wuImfqxL+a1QVPgoke9ln3i9u8WVDyQ25BKSA5eItvl4dzZLxPTEIWUGBAON3cQA
	 57ksjFjyYILbVLtQy6dqT38rcWDbYVipjCsLqn5G40ZTJDGcYoU5HlQh1zTY3/aGjm
	 1e6vxw1Z1LxFvHw0kpK4G1bHtRbxx790ZUklp+N7nK2/jjq8hEbnR7mCIRZVReAQY6
	 Id1QOX2UOJCdLDTWlLslVJ+K3QsRkUe4aGl4OYuagSkIClxhUyM93jDLlaync6e76i
	 fQMniMYjXnMWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C13DC54E67
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171150469637.17339.2812299807108668377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87667cfd2284d29bb4a99e56b63df6cf0377baa9e4527a9b3bf5b3ba86ee04c1
Date: Wed, 27 Mar 2024 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711504696
