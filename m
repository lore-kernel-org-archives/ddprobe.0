Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F0716C856
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 07:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718956343; cv=none; b=TnQCKrxnlHHx8FzYmaBf6qTIYtDnd3a8vrKXTGHPg2252nRJvkbChT3nElKmTjiFMsQ7WHm+ED39w/LzxRj4dZLxZ1v82o6c95DfF9SgsJdBuqaEiqaoKfuq8zVyuQQcKJB/2RBrp0NH3Sv/EBNbzso8abgDUyXSqjlZaV7fYv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718956343; c=relaxed/simple;
	bh=OWPX5Ma2jjtloBZEO0U1aPjoeOfjj0pYFU3Cdora1q8=;
	h=To:Subject:From:Message-Id:Date; b=bquRnnomSG4Raqk1UW1sMXGYzOYCNUuf7hH9uQwEjrTCghHRAlYJafXWqftFdugM9SnFhW1ZEui3wKy5EZMYP8irb9fTqrw5hSafyUUlHtqItUJRqEmGo+ImmJkILG4yMx+vM77vku5EbMxJGxKIuuVp4gKkzj47Ka/z6M+do6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aqi4TxIg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aqi4TxIg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FDDC4AF07
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 07:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718956342;
	bh=OWPX5Ma2jjtloBZEO0U1aPjoeOfjj0pYFU3Cdora1q8=;
	h=To:Subject:From:Date:From;
	b=aqi4TxIggUzCUMxjsxLddSWsvQY5JuTEZHOFcyLnu36z/t0fE/8Va6+hDDEqLLtSN
	 M4EzjQ3KIpyjuYx80eLOBLB1i45Q8kX54L50weclUTFkK0Jdt4tg1ICdH4sSSAppQx
	 KERVZKgzQi4XAseXcZauW8DTf9G9W5HPoKd0Jy+g5DO0PDnPbFgIkxNEUvUeAgrRKe
	 6TrMXMcNAXEwUM0+KdDyiIU9OJqbdAGLa+b84Djf2sZvqwe9wHcUJhbMt+LunQywX1
	 JVREdTZHx9VJbWCuKi4/dO+VHHhVoI3rdfTYpQ/a0x/Pfz/ISG+X/vsT7oKoPKULh8
	 NMIZlPSyLwyyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA0BC2BA1A
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 07:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171895634276.5382.9599982039350460579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 651887b8fef6e2f4cc12ab6537b2c13720c5cdb4f2c480e10a219f08d97b37da
Date: Fri, 21 Jun 2024 07:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718956342
