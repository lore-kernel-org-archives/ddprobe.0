Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1728E2E36E6
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753646394; cv=none; b=EwcRPJ09LqwtXNEvpGAuv1JC6hIEZ4EGkSJ6vFT5bPuYb/TutZ2rnv4+SR2n/I/becC57u4bL9QuwRMTj45Xozs6M0Mxbck95SVgrQCfBK0FSiyMX1dnZohJdE2YPqhyOOV0791udVi9tvni++NOqP0whoEKNpntm+CGyFsx2yU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753646394; c=relaxed/simple;
	bh=ugeQLOWSM29YlhuoxWmCyYgducF9V3mZ2Ynm6KbV7gU=;
	h=To:Subject:From:Message-Id:Date; b=jL1NTv7NdDgLYMHdTOLpU42Rg+EQKyF/dIm5VUPmWxAPaG9stpiO2lqINi+nmDJ95qDmyNgXpIELPlzM08Z8wbVegXczQPwfNF+42v3XkfQeTcKp7Cit+J+rGm5A6WRGE6hGFtyhxVBDsqtCJIw7fyDNhFYa9Yuo+l9+i0bj07Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bWP99qhY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bWP99qhY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9D7C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753646393;
	bh=ugeQLOWSM29YlhuoxWmCyYgducF9V3mZ2Ynm6KbV7gU=;
	h=To:Subject:From:Date:From;
	b=bWP99qhYxpSlKPBDJTpkBxt9rn5xzNiDL9RTeLiGFzjSFEaHvuK82g+GfW6shLUC6
	 3Kws/Wv6o6e74RYCgD5XaoE1hKcjkOIii0+eagLzr0ozjCSUCghATDyAvKSavNCWJi
	 0yD9hg84Y60L58aeMp6Hk+Q9Nbl90AcuD4p6wTA+aHPgFNJs8L7PCP3WQulZRsiSuj
	 rdkF3Rzn+uYXbJ9NpjklN4S+JPMY8ijDHkOgK9hniyOfArF6rp0Gy+M7C/70f7lQWU
	 2KqS2Yu4wUYN07CRj0BZu8RavdJfkoN859e8lUfdQrtm/yzOrU5kj47/lYAJdhN9sR
	 OpPDq5c5i3XBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F347C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175364639357.2282.5329753171785850474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfae670f0a4e55cd8feda489bc271759209ee01dc4067489ba6d45e355dc1aff
Date: Sun, 27 Jul 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753646393
