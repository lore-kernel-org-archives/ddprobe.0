Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51BF8433C7
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 11:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720782503; cv=none; b=ND58YNtfsl1lb81Bve9y/yvKl95N0HLJcQDTmG8hVvX6XZtx+uNgzrtYAWwR2VS2JtPIVhRJ2SZ1KPeVj1OpTzfpUJ1UEJ4CXZ18O7R80VGkL8TpwAA+Eeam8d/+/CvV2OBkXzc/QndtP7RqW2HLLjZ0+z1jJYOgp+0ZAc/JSEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720782503; c=relaxed/simple;
	bh=p38LuQdSnSKk3n5xtHN+999HFD5nVRyNga2uBY+iifc=;
	h=To:Subject:From:Message-Id:Date; b=CTvriQXQ1VUKmJBmEhuQLjetAFYOTQQICmMWNdDNdn5co0n2e04Ru3bMyJ7C8Rriov/rCDWq/2DTu+RyhKwdqkcUccNF04xt1FZG+x5DEqeOR3PFJt4qIrtUca0XIVBPtIWkOIfZYtF+2LdCHNWxQW/hvUI02FKULX4KXNGukUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uscgrXVW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uscgrXVW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D477BC32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 11:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720782502;
	bh=p38LuQdSnSKk3n5xtHN+999HFD5nVRyNga2uBY+iifc=;
	h=To:Subject:From:Date:From;
	b=uscgrXVWFKrdFDtLytRqkBzxnWfapIAvd2uzeNRCOoGxXLx75N3qqOA6yD7l+jwLR
	 dgXpFjZe1FVjUPD/Y0hY3s6/W4zOkf5W1ziRQ8MekiM3wd4YB8NpAxP5XkCOEU+79+
	 DS94nrHcWcVwCMZelfMBl2zKP5Qo7pUx3sK/GVa3o320FkmyXhMG41zfY8+CJfjHNm
	 Buoj6zGrnlAu4QaEx7Brp7dyk8uQUUSBgxFdNoEqRuYvJRZGO35NKhPU7MAwxhS/Ck
	 nCrk3CVbEBWtoQzZo+y4uer/aHgN6Tlu3oCUcyvfrO3FKS0PJbbXL4Og4e8U9CReX5
	 rO5uOGxbm4NxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC316C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 11:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172078250276.26368.18425365679486818590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ff59764917338b83a24195505728f01f22983226a5eae3249e1a6afd905a115
Date: Fri, 12 Jul 2024 11:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720782502
