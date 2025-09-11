Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2254936298F
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757614194; cv=none; b=c0gak5Ak6D2ETB8Vrl2FyTLd7YAhNxLPC+/1hoIvIIJlqjTx3VphXjPwQhPYA/+JAgojgtVKxpU+Ee9CuU0/VeGuqQ6R4x0eSgg4z6ZgHs39kAhbT9H4sfK+iaKXIlQ2tnDZc4VkF4gIhYS/BCbLyDOfgDiA3BAPcaRHdpIUMFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757614194; c=relaxed/simple;
	bh=L2iHEBzLfyXcYdQq/L/YzrRDiOXdvTeoFC4gYYEmbts=;
	h=To:Subject:From:Message-Id:Date; b=MQq27b5pCP/IGpRX7Lm7dWRHpwQXBl/E2u8/W7J0UcvSTYqLvT2mM1+ydL2Ex0vvvl+56REHuOVinqea3c8D+6Vw9OjTdi+Hu0cBo5V3STkv6AU5GGvSKOcGvaVD2qyqdfiwqMmyvT5sb12wU8Rely01zOR1QbaOyk5kx4bun2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TM3gsycD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TM3gsycD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8814C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757614193;
	bh=L2iHEBzLfyXcYdQq/L/YzrRDiOXdvTeoFC4gYYEmbts=;
	h=To:Subject:From:Date:From;
	b=TM3gsycDcu2uh9WWwj1qiFRcjfWX5LNTWqJo/qtJ93P4SYxfWIYVJd/L8ZJryHgFN
	 vPjR1uN4SJlpJ3v35xKBDnHgykYO7tY4HN+I/RrKEyaULn6Tk+SA4zx+24KJmwQuew
	 DcqM+0i2Qk1VaD5nUqiYW5F4lLygF696NjfHDhrJTGKWysPBMJutVEPKRFDUbDB9M2
	 CYTIvJCLIQOtUTd0iyTIEalr4XoU5cUgeybYaGFaKaECq+5AyFL45slj6JrhEm5q4R
	 rta1N6hOqfkvsxwTWKOne7KvszFk7y5+kI18A3QxQSfQlfmYSBPi7XKxEie0qtLfsv
	 Q2lN1twv+7XHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9665CCAC58E
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175761419360.27838.1228462429354105025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac5040210ca101bc2d389a0b37beceb174e8dc13696705914a9c770f3bceda39
Date: Thu, 11 Sep 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757614193
