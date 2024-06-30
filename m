Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D592282ED
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 09:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719740663; cv=none; b=uVXAFWNmyp0wZmSagdEFeUN+Vk1A5qd3yslc9hC/P8aXbAB306HYhQwqTeeYrATTnTjYKQ5svK4YvHn1B3wGMzrE18Zm7RLqzaHS02B7DTsic8DQm0oCnnokg+/mh4YqGC0nmMHfHKobLoOLk83CHFanaKwI8Y3W+R4FaiSSZ54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719740663; c=relaxed/simple;
	bh=mjK+nUzi2Atet+8r9c0O8KLs2KiRrTy31rgAuQ/xU/o=;
	h=To:Subject:From:Message-Id:Date; b=J3cwaxJ2n/WgkZl2NM24DIlt9//nRqlgDEhacuVktiq7tiZ+FF5x2reqBH9IMiGE0A4bUTCAzW+8koknNNF2CS8SLQoKsOOR7pSQEgChA6yv2U/7h8/3eCk3X1ExnJ8aEPSQPunuqdEgD+0wIZ8MXMkbiJtkOilZThaSZiWHVDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8KKe0Oz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8KKe0Oz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5EE0C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 09:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719740662;
	bh=mjK+nUzi2Atet+8r9c0O8KLs2KiRrTy31rgAuQ/xU/o=;
	h=To:Subject:From:Date:From;
	b=P8KKe0OzuO/0DJcKupdOEfOOnymFDSmAbEseZ2ovAtwjhlXNH/akDuQG0JCjbilkC
	 J+K6DTWMiI0O0Su20zZB9wfNlDZ9RsJixsPgDwOUPSf3wTy29Co+oSgn5Nx03MdkeT
	 jNrI0ZR9p7lNh4cM6bzy5xs3K57Vc1CPUVu/xEJUsY1dbJz3NZegK6BIZBvskdH2k1
	 ZcMH4PP+gmDwPtJPE4NwYzQfmb7aNXyY2eJj5ZXDnPCj1ybRCoTcz/5PfBigqmGnW5
	 YbMVnjlOJ7Oz9iAHBCs4Z7hZDtpV+HSLfrZw4OMcMaYrqRTjsIEnNxlqEEFBTr9A00
	 PrQY3UKJdFz+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD9AC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 09:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171974066276.20701.13333504556370582783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 583627058726506ee9afdc124b5b3c7674a6025bff119a1c8cf1bd7abf6b0cf9
Date: Sun, 30 Jun 2024 09:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719740662
