Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C632F1922EA
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728498353; cv=none; b=f0lNOc1cfr7q5dCubLKP8mS6UdEu6/nMzUBijFDqPFfsfVNytnJK5b6oAzqeuvYn6FtpFsp5TxGZ2ZLHOYdYk94K3SCeaYwq+b/WftLQyDu4o8u62a9S3npn9EpnRwF21uDqSzz+PezAZer9lMlUj7Al1koxOyEmiu4MkHOwVxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728498353; c=relaxed/simple;
	bh=GhkIuartdHAXwGnLynt1kbyvepdU0ezLd2f4IvTViSI=;
	h=To:Subject:From:Message-Id:Date; b=nX7/JGCEQimmhybjtKnjHXaVg47lIFPCsPYtr9Nyd9LKUeorEbVjGTFaSyiB2BJa+8kSCAr4lbUDB9VlaZDFth+XSJrhu2MmOoa+BVFn4VwmfB/EmatEVo902wkzwatd6BJjZmkxFmBuLIdt7BZbr3I//OdiIBYcRKF711sHmQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X5Cvru6m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X5Cvru6m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A44C4CECC
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728498353;
	bh=GhkIuartdHAXwGnLynt1kbyvepdU0ezLd2f4IvTViSI=;
	h=To:Subject:From:Date:From;
	b=X5Cvru6mjoK5fL6M43L66GQKZyZPcv21jU2AdbuvHFTuvmWCkvQTbX++zM7MD/8cI
	 jz+fNZhB7ayQCHQ5QxxpreKygE3bn+Y0OINuo9bNkSYuBP1Hyr9SlZ6dr8xFWE4RiU
	 wfU/W9NA+o8f7xlFeDisLkLuRX4Z6LwqirWXarkoANM1h9PEIRuN0S/BkOJSQByIBi
	 dgme7ePSkg+dzCafre6E3ffBLtawmREu8DpZkyycVbTrJFdVEis2tMkCw4HiHSJu0X
	 Cqh2FrGfnYD3PFh7PXOMWgA3+Ol1mr9D9TR38Cb9mK2wrrFtpTxCcasK0KjgbHubrm
	 3r8O7tgGlcRSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CF2CEE33F
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172849835359.19839.12099346719991151190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00867b5a40e5782f028360545d97f6da2358848d2130786b510c560e5ccf6b27
Date: Wed, 09 Oct 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728498353
