Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E55937E5E9
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789501834; cv=none; b=O00lFvqE4ts23j3bJ2LnO8QpZIN+3r4eqG5X4IegbuluUKQAVgxeOGb5hSFr1mTLFHz+dVrUkSysjQo4MGCLBhBvDKREgcz3Ww5BUGQCg+vpRsSwMLQ/Tzpu87YvTW6eZiAQNX06woRDSeLY848ro7wNVE7Dz9Sw58TTHE0kgPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789501834; c=relaxed/simple;
	bh=+BnPoAHDjhOgreGqjPFaap42kvb5AF2A52LwCtDPf14=;
	h=To:Subject:From:Message-Id:Date; b=fjhyMHQFdk1X7IkA0KvFfhiDg4152+0bz2/ll+X87M7plqp8V/jHvm4l/JmOtyaxrtARICBl2MYr7cC87/s2tMMvV8ZDG6r2JlcFvsEAGJSXJGg6FknLBJ6VwzcJKYxwioSmNSvRveWqfzrS9OCHIacUdovsk/fmihMCUe7MSnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hL4sFXw/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hL4sFXw/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2DEC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789501833;
	bh=+BnPoAHDjhOgreGqjPFaap42kvb5AF2A52LwCtDPf14=;
	h=To:Subject:From:Date:From;
	b=hL4sFXw/XMkrRA9lTr9RaWHM4DWMv/nhJthj/YfkcZBog+4O/dbGvFRTqijrj3wS7
	 gawbCJXjna1UM0hvJnjnhJSZYE/F8cgnSzFfVMBUyLDRYxZtmLi0bUSWjttUjfmXxI
	 6etQooMHPEkx1nNLvKAvdspg8LGE7g+IuWRYvRyN53EjWi2CmTNdj0/OGQ4rxw9OwD
	 RKCu+Yf3/8qSWUALyGnmqSwYE0LeL1SHD38dsk0ZJUmdoF33Gb9VYKDRIctZW0exnf
	 55vxhAMi05mxIjP9xA8q0xUkHw/tSIwBAPca0v+LsGpQofZJFUoTlCCzHvGXKU8y+z
	 JXOvvfe6c4I/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB36C88E77
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178950183368.27902.10038433952554628385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90727454136ece351afd89fa5db44f71581a4f9aa1bd3d8491f3fdc1fc0a41f3
Date: Tue, 15 Sep 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789501833
