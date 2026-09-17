Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304CF4DE70B
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 12:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789648835; cv=none; b=QAlP1qqzn7xPMxt4DGDkWwM2m0ICeSrmKKEdjSSErDTV1llsejrkcvqLXViYnM3cLW+f/W+SPTNx2Mi3mnyQUrXWQ5IJq74SyeBHf4pd1AOigofQ2CDtiygHciHj/WxE9ZBW07ee/80DFR/NNqV7bzwuE8vara0e0gmbkKw07I0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789648835; c=relaxed/simple;
	bh=4b5nxJxNOjdrpp2ZLxIdrAhJVpy0qLiZMMbTSPwFQJs=;
	h=To:Subject:From:Message-Id:Date; b=Cckst9k+ABmZhc1elvtf8Bdq03pobxBrpVOanpIFRljPclxUGcfLmHtG4SyOCOSdV6fwWPIcVI+uOYzLBrQmWXNdVr+6seJ5kaNSr/g1DbgaH9y7QUH6G4LYv4w4i0nD2MejXrBUjWNQsIwD4HsSkR+WljfqPhXV26w/Jsad+SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5Wi+H4Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5Wi+H4Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFEE1C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789648833;
	bh=4b5nxJxNOjdrpp2ZLxIdrAhJVpy0qLiZMMbTSPwFQJs=;
	h=To:Subject:From:Date:From;
	b=b5Wi+H4QAACQVvNZqpgpUsOMpQnY97RSKm8vAhh/HA/3vHOO/ySsHg+H1gPmPOW1d
	 kXwY301KXDwcYqyE84higy87jqG7jEEChIOFmt+97Bp1pH5wIFEb4QgYMvGDjFS5zN
	 Ln+60arHVrFyqwURoO45/WzzCHFuMkwhwSBFw6S4GRcrdumIVKdFenLudZrV3kpxVT
	 Lz3Dnnnw+a7rtU/x/VrMqYCht/sHGw4y4PQwOjQ/rlUx8uiCdbG2tLS9Ed9GmaMvx1
	 zKvWEmYUm9qqq2sl4WrDvF/H4iJzWg/FkiRa7YIPpUbM4R1RbzXKPp1ACsLV03E6LD
	 sJFS/yTBb+c6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD25C982CF
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178964883369.28856.4774485898171264182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50e2e53e27c6762339b2dfaff8d549315952d1a381449cfc30541f1c7e074b72
Date: Thu, 17 Sep 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789648833
