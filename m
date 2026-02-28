Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 094B6430B8D
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772307894; cv=none; b=OVwPs15nEezHhK3lf7OHbvl75MWanFTmOBl9Ig0Gy39Gp0dHseJe8KHD+V2k7txx2bmp4g4aI+RikzO3e/rmx+DaEY43rMBK9WSKHMylmEcoiXWYZyOzNT7KJ7BTaVOUp/5q4MpI712HcF1UD0ufULgqzTCd4VkHxtCJMwE9y8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772307894; c=relaxed/simple;
	bh=1rrBF38GtM+lOAS+IkbNPMVPgXqjgqNaHgBuBzXXQGU=;
	h=To:Subject:From:Message-Id:Date; b=sUdIgGgOtL74tuA6HJRXLpMil7scUEz6bUG1FMkn9g1dYu/kk+Fj1oc8tLzQk2ISvU5pEE0V1gMVUiml+MrUMNvW9gq4D76U0gIOp1a3jpkgpPjp+pA3Wyguxq1A0rHQ/VQi7cylWKlyLFRionqg9NH+yOx8I6h/LWnd8D4tzZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cC/SaSLj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cC/SaSLj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B97FC19424
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772307893;
	bh=1rrBF38GtM+lOAS+IkbNPMVPgXqjgqNaHgBuBzXXQGU=;
	h=To:Subject:From:Date:From;
	b=cC/SaSLjXuN+PTqFRM14tr6J28hAxyPe01z8LbfbpO9KK4oTUd8vqMlF25z2lZoKh
	 KVDHrtjdzI4ZV0DECUbeknMXiVZI4Bq4nEE9EjNLTeHqntdJbQV62GSQim+RMwt/Yv
	 mXccWgLaJ9GTL2TQgINoJIiJ3y01jyw9uls9Is4j1hyVx++1rFQ6HchRLFlngGOxuU
	 0m9Ho38MHILhrlbhsB1rfMPJ10eo6zKdsKccT2uPEcif5lXvRB+Sid1MSGJ+YwPgrW
	 w+U57A7W2gkVmqmuFob5c/xd2qOoQYCf7J21B86wQwzns3Ml3PGK8Y8yOEUmZDB1n0
	 X6Z6igC3CbbIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFBDFEE4F7
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177230789357.3654.2353836508662118940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36d6d5e7478da9e02f25bcc86b5f2ff4cb8dac7842d2fb9d5795a6c430c139b0
Date: Sat, 28 Feb 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772307893
