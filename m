Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A6402AD20
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768115034; cv=none; b=IS1E0ab7Rfh93vk8+nZVbyxWupNjSxLgVfP0BHq5evrmCiYoUZGTEf2fDyMLsp9fZWhvbmpsbBgcJmqgT6Zk0mYZWMssatep3WuAd1amiSaitDoetyFsGs+m0d1ZDxR/9Ib0JlZJp3Sf38/ObhTQDqwDcvAZKciBFkSeUTRUNno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768115034; c=relaxed/simple;
	bh=MRyJWKc6YObiHCHs7xBzw77+oTnizvYMRWEObftzjls=;
	h=To:Subject:From:Message-Id:Date; b=gJ4NdnZ0/tG66WlJLx3ce67VArKE7tAVxA4bVGOiPdwCoiQcItM7rqbng2BFyy4X5vm7tebl4Gdhb8JAgtuH3LNdAmCtW2j/aBv5bswOGOtMVed9sYRh0ijzdXw94c3BM4/oXjfYxOB4Rc3CbCM1Y6H1opAgy100WPP3nXjpY9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YOPFHPPT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YOPFHPPT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E4AC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768115033;
	bh=MRyJWKc6YObiHCHs7xBzw77+oTnizvYMRWEObftzjls=;
	h=To:Subject:From:Date:From;
	b=YOPFHPPTb4wgYKWqijaAd+y7MrGaHCtxHiiJm2WZunra11RvLZFBO6+FpC3g4HdGn
	 svQYcz09QfQLlzEjKKU51N1r3ZEC/mF+wKznGyZk7w8we8pLiQIVbwp2kFCF/tBxfP
	 WtkX6R7fDGi6/XFKP7eU1Xe8OTQFjijLbvTcn1bKZi950CyJ9ICXC0katOn93JoE+d
	 qEEiMpsO42TZ7B8d9WusMLmpXWuRQBwoRDiRBuA9uK1BX2g8hc8XuXOLyPgeTKIwtf
	 EDPCVIz0GOn2XCjp3e34gNBao5zqIdC4xzLIDwv//pIvAzQMKNaaaYfIW8hPS6eRU4
	 qAHmzTGKBhDEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A34D2502E
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176811503357.5772.7777032580225306073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4676075abba2aad7c73777fe2f18005e12813ad8481d6d2940e5838cf6bfc64
Date: Sun, 11 Jan 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768115033
