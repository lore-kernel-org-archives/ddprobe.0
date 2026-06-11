Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355DF1519B4
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 00:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781138194; cv=none; b=UjzMliJU9wbQPlmUmo03GUPxygQD1WkdTORUxxDq8qytx5uF5bD/6p6ERvs/u0xsOJLWqGYzakwqoK8g6tIlnrzkxZ3i+n6h/cgJUPVn3TBfowfOtyh+1kiyuVyE/qUy4CRMjrzWn0vS6tpiPEzKTcCOvwgMNxjiuT1VnaCjFJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781138194; c=relaxed/simple;
	bh=eGR9H/cG5zAg+4+m481qiKEOYEppagqMw9ig2YA7fyg=;
	h=To:Subject:From:Message-Id:Date; b=s5mhsbGQEyZguqz4cOBbKElj/raNNaYYklwoNgSCN+itWgsLG4djFP35DqcscjHHQS5UcRsz4qkEsMXJCUGPC0YAfMzzYB6u1JxF9vgULtprG26gIDGS/yRDZUguNObr5oz992QTa8w5rKW/srUKJ3F9K8U2K1fvHSzW4SUIrDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YbYsTevH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YbYsTevH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDFF9C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 00:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781138193;
	bh=eGR9H/cG5zAg+4+m481qiKEOYEppagqMw9ig2YA7fyg=;
	h=To:Subject:From:Date:From;
	b=YbYsTevHFFSjBOYSJf+/qchlgwUiZq4taa/Lqv65/HnF0R1kYbLzGTibcs7s0xlF4
	 dPZkq53XCxnhzDGoup8S30gmfftRi6L0yRSfG9pBz/n3nrZEraESe4hZ+pokEuI8NP
	 UZEk6r4BJiwe2R6Dpze62OhIwhgC90ZDTJAlUSxBXN3D7tRTHbRU7lDWjTwJo7W9Vq
	 lBSZ1yHbq9foclnBgqDmSeIx91BNRle44+uFf28HcW0guIUvDVeRr4CGxCs8V8T46F
	 S8ZKVpD8LwrG5gKfU7Bjc/0y3r4E4BdL9AqSuFXjwt23wnbxh0O7n+GgbmSsACOx6c
	 a7ULVQiUuPApQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A777DCD98C6
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 00:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178113819367.25551.2153949462910772831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f74dfd16071c81e094900e9d9346b042f0979fb49bc73f30733000eeebd52dc7
Date: Thu, 11 Jun 2026 00:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781138193
