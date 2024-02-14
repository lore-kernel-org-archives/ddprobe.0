Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 032EC5D90F
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707925697; cv=none; b=d9ncx6KAkB8FVnkTqbXWcL1b4DTa5ADRQ0c5FL4i50zp9OujNBj910+mg8zmeJ1imFB90vx4OzoPQ0wtO7oa6SV/nVyi38NKJUpVe7SnEE97Nt+otx2sWlBB9sgapZLmr8g4RVQL0IqihIPobWU9//QCXzMfFkozf2cyMNyx/Bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707925697; c=relaxed/simple;
	bh=VAU7b/nrdUmCiMC3TngWLVmCiof+9t6TFRkA/3ai00Q=;
	h=To:Subject:From:Message-Id:Date; b=UsfNI7KpibkpAkCWLn1tvLUfm+Y16JErACCkEPL3HAuTbCT9EW1OkD8E7LpfLiLOc7AC2rIVIlP6KzZ4XLwOKXwT0Tx7MCqyJSkGLfVTNljgg6w78RmjiuUZijfJf9zZSToJ0ov3fpAYjJmhrrNk1Q2HvHEG7ZBU7uhT1S67rYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rPWAUVFE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rPWAUVFE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86167C433C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707925696;
	bh=VAU7b/nrdUmCiMC3TngWLVmCiof+9t6TFRkA/3ai00Q=;
	h=To:Subject:From:Date:From;
	b=rPWAUVFEMKrEMFEmp89F+3CTGoCKIgk4vA51QNaflZ2/sV6vR6sBsuymajSQj/8l1
	 NarWLC2qzdWlhc5zypYPYuJFTl3WK4qxIZJLXMvJX4eI9yavnhCaSZUCAbW8GXKkIS
	 KaeXCLuQW5D7jRcbe3nefyNZgH/OR2Ja/6S5E3BQdFpN6C9gYGHjJYipuCXunYNpQV
	 7ju/iNTXCL/7d/l0QjDS+lZ0vmgxB13Rh04Qx/BW3wEwYmTR2Xh2dFFTsGJ+Rz6mJN
	 eajaoJGD7rKoEVHa0U92LSpMiK22NPRkXCKaCXcb6ThMLURLtOAzHFp/LRa54rEC7r
	 4dn0pjhIlsdTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6191CC48BC1
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170792569639.32086.14159382514336714320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77ce1a93ec27d4e381147dd6b68d571ef316e58e13cb372ef8bfdce3081ee8d6
Date: Wed, 14 Feb 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707925696
