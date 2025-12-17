Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42EC422D781
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765952634; cv=none; b=AqWi/H7aPHE57CDwH0ZH2CXUBlM7jU3THXm1YdcELjqJeCZacfqT1vTaI7BXvN6phR1Z1aQXYpZTBg8JmnYtiP11PisfziOeY1bZ1Y8xOod5K/RxIM9eHbhjVoOOxCk4+mSr/uM5W9vt9Wz0flL1GrRa0/ED+xdtTWrhuZk2nfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765952634; c=relaxed/simple;
	bh=9m98dA9/x5x/NZkTQ5oNvWSv35FvSh8eOkScQsBGv3M=;
	h=To:Subject:From:Message-Id:Date; b=Yx0aKH4YnCNljwh6MHtOT2L2ac5Id65qMG/AxVCJ5DwJV+fHTj2znQlKo8QIh2sS/bVYNAhDYEsP3h7ASNQXFPfaAv4bQK7rWAQp+ydSS6RdAH441O1hc4S0jIIbmrOSIfaqvNdgXVqqWoZIF4iDbaGyQ9IbD5bvTDT4h3S/Pvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZNAPbsJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZNAPbsJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A535DC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765952633;
	bh=9m98dA9/x5x/NZkTQ5oNvWSv35FvSh8eOkScQsBGv3M=;
	h=To:Subject:From:Date:From;
	b=IZNAPbsJOR6tKeFacJfigIocpWmnldFcrW+JEn/3lfKhRDJNtYZIwgvs6PL3jtBTR
	 afLDTcEw+YREhfc0I1xnE+thJdo9/qibQ0OwECsFEr7kAM8p/VDmhQXASUQZ4WfjxT
	 R9NYYXOodmfKESIFgUCSgAvONAP3VtXMVJyuIEOZI697wOyPUNZJ8wGwvrDAK7QzCA
	 ZyYyhBX+PVtMroTliemiW7cJM+/qd7MLJdNdZYtY0aCBOkJAoIMoLb8aGAmTm8SApl
	 lm86th4451CIe/i20D486wmUOmtNfysQg+19a5MHWHNxt8Ke9dx2aiHoFbPfLBn2M1
	 iq8H9QkfAVm2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C6ED64077
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176595263358.5822.835476254618272796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e4579a8301a312653f13d679749f05e3c90a634b77516cc1bba2a7f86a88f38
Date: Wed, 17 Dec 2025 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765952633
