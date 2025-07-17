Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4396221772D
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752736794; cv=none; b=BF01O11OFjFv0OkUU0QPcmlovlmDHrd3z8AYeVqH6HHpsxvMW25YZgad+sy13XaoUQj0U82Cf/QgvpHjd4151D7OhnlgXRCpko/sU2J7BX84ID8tEpGDIAxiM7qcHPa9gGVtqjJa4HwZoY7WaIWDfFRTt1zPMEKSaNHxpQpTr/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752736794; c=relaxed/simple;
	bh=2amZHy+Nk8ax4WV5PBp8TFqQcmLXQbSLWgYvUPDfQec=;
	h=To:Subject:From:Message-Id:Date; b=AxCqlzd4FvEowdonecO5U355fJmMuu+1FaVkoSznYNx0YQeLHVz/jAjxWb0qT00yjy4CD4fwNwBbDsfEYlWddFqq82EQePQJBoR4M2ozyQPVCv7MAJuRD1NR50RHXo5l0F7qgcjGjzscDnTDaZzDcV2Q9XNfh5ysn1KDgUwnjYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTs9Jhov; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTs9Jhov"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D26C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752736793;
	bh=2amZHy+Nk8ax4WV5PBp8TFqQcmLXQbSLWgYvUPDfQec=;
	h=To:Subject:From:Date:From;
	b=eTs9JhovPMsSX9tX+P0HTJJpZ+jaETc2RWSpdz3iJ3hPWEXwR9Uws6s7MGjMQQ2ob
	 6Jup+IpPkybY1bHpj7Dpww/Rp6JU8HzV2V6yx9mPpGAcKR4hMUDxN9dBL0gzFzaNZN
	 NGVcLBI2nRJijO4e0pqz6pEZJo2SYFoLz74wMdkWaPhqSaq1H/AsUmZOiN81Sbr5B1
	 T0kKoBGGNpjMCiei+eDWzqHZbQHvKk+W3Z9oOGkB/uRdgf5yKzJyYuJeohD6Q5a2aC
	 3WaXR5PUm9PR68vvJXC1bPLTixRjAgkmlzi8J8r3QlIwOfKANfi+RSnVGEvyYyvWIj
	 +k5qSX/KVPjvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927A7C83F1B
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175273679359.12385.7615279089025563090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 408494cedbcdea75b7122c240384ba71f7c5a9441595f84cda6c2345ec30e38d
Date: Thu, 17 Jul 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752736793
