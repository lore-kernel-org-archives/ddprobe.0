Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED021FBB
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 07:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719387203; cv=none; b=iy31Y9hkOf6aSK0USHbD2ERmRMjcOjAXtu19s6bzARH0H3/FsHCXuyKK6HtkwjX3H+7aTjQHR/W6Hdl8xGj7/iWxI5SvlLPzp3J5IslOvSkt3HZ7krvy/oWmERpJGEAFeKnBslmKfbETZkB85COU1La8YAbkSMNNxJHN92WO8gA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719387203; c=relaxed/simple;
	bh=4kuOwnIM+IUAcjTlGf+4O2xuqdahbRGT9pt+oEqrDPQ=;
	h=To:Subject:From:Message-Id:Date; b=ZLUewlhkJtHJMNU5luejqFssp3P+iiAJ/dERph1Yh4zK/auc/3M71cj63nOsOmDv8Ztl79tzGPdp5F1q/BBdj1H47lopd2TQqTIJLhUM15T89NohvloQsRDFli70oKyWkWN/HvF32TF5Agk+/ZvIqJJrtvO8gteAaf7y9omKqBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bhk9MoXx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bhk9MoXx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D973DC32789
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 07:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719387202;
	bh=4kuOwnIM+IUAcjTlGf+4O2xuqdahbRGT9pt+oEqrDPQ=;
	h=To:Subject:From:Date:From;
	b=bhk9MoXxxrR0/v+UoNS/uwVxEeLK8ZmrwWcRpftZYVWPmXDmiVHUD9bipTBiT87Ae
	 Fgt0Ab6fh/k7tSmykJ/HLGjuESbOHka3mjWXGIall06f6cFyhcnb/lwbAdxUvCwF6f
	 /c3ErIqjXGQYy+TD/m0Ou7xnWwp8xq7YZc/YhOLCUYm3tKhJg8zYFPFHL1hBgCX4nC
	 z38kA61LW5NPTrWR4gJvS6AV5XkwuGRh5LYrWBGLK+9pMI3l+XhWzSvm40czr40E9F
	 wtrTUBdQbdumaNSzA0wX8haeFPsK0UI6RrcArKk33tUWqGeSd/XLNJjctfmEMnqAIM
	 48+JIulRz5UHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8793C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 07:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171938720280.16411.5159029160563632407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a84322ddec9314ebb443cc4a6531e57324d94a497cc7dca00e06f7acb0b671ba
Date: Wed, 26 Jun 2024 07:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719387202
