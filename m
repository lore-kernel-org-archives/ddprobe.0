Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261B930F55B
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 09:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775639734; cv=none; b=JDinmY8zZj/Ye5DQALMnE/rOR+e1AfawNdFxhEJD3P5ZX9SIeCwK+TofiiXLHmBIDS5wgb/zbldrgdtZN9FFrCX+5J18mkRWbSrtGVUywbqUBchZoZWYv3A/POiY+KggcweDQfV7bgwnUR1Dr1e28wC6uAUHy7SW0nFOXpjpfxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775639734; c=relaxed/simple;
	bh=J2t6UjwJczzo7Mxwbo8OpgXFVgn8PHUue+m65oq2M1M=;
	h=To:Subject:From:Message-Id:Date; b=h91fU4JdkUNrqwIs8J2uGx8rPTyFPd8VtmX5LtSFZVMge5xxqzHSqzG9B8klMIXTPxU/otVwHKAhLU/WBLbi57b394MnBrA2TxESw3+LVBYwYvtvfzXjQObhgkKEpWuT7N2MDwtsnL1A54vtQ+x1uPTqq4E8MHKuXw8Tokgr6js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzwHGps7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzwHGps7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE485C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 09:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775639733;
	bh=J2t6UjwJczzo7Mxwbo8OpgXFVgn8PHUue+m65oq2M1M=;
	h=To:Subject:From:Date:From;
	b=qzwHGps7UWfTvdIU+HQUDofShhOLYu5rsiqAO4A0mr6NocZsZYZUkRJ8XgnbbP9JR
	 bcPWpKP4F90NP2JLn501WGedY3XdyYwnuC7zLZPvfHU4avEM9I9/P91dWEBvoyavSx
	 a+nXCkko8DUPuJ7zG/K9rC/5haw/4OPMPmhWZqKCMfHXeh92Xdx53YMiZPTlSeR9lV
	 XNS+slwoCCVs9CWY1xvjpsJnQQ/sBBmRPnT729kTMJnpEiHHk4xhNa0A+rxpsTuU+w
	 0VRPqMM/+28XM8DCTCAD6efdwtzsv+eIFQn86EAnaLbP29M7ntUTnRhdhlK4xePYgd
	 yubIP79yG5DGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA29FD5F6A
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 09:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177563973368.15939.8538822407329034252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f9bfe465d37a7869e2e2f494fc9d6b24a473074951fe360a3a49d1e3d81da73
Date: Wed, 08 Apr 2026 09:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775639733
