Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66B4618C3D
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 21:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717969643; cv=none; b=gNG8Ri9cO3O7/L6W0xXGLNw9nejaGl2ZUDpJ9V3oOpThBzat8CbpHFpQNHY2XGAn0wPhe242SLBqGhHP3VH27iQF//tF3ahAAPAyFm5akKBChwAgRnbEeb+cQT5CzQ9Ei/9F+moa9PHsa/n9wUdsioyB9R17sa3JQUnOnilX2lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717969643; c=relaxed/simple;
	bh=6LbqzxcycrmYt2QrFt95I54UchcK2ZmGFxZcV4t1DGg=;
	h=To:Subject:From:Message-Id:Date; b=LBdqjnYB4O6nAsSbMTktirGGHJxgS2pBWMEAGd4+JK9FdmqVvYZEmow1hSNkQ0qHYFo/8AI/9IzW02yVRpX981m4MUuYLlh5RKzN0iugPdS9h0DTAsKExiirrtkrYbFEGhuyVpa7miXUkQUYBuuxg9uOTMsx1FxSDeYkP22NDsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CEhm6/AM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CEhm6/AM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEE60C32786
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 21:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717969642;
	bh=6LbqzxcycrmYt2QrFt95I54UchcK2ZmGFxZcV4t1DGg=;
	h=To:Subject:From:Date:From;
	b=CEhm6/AMyna9XoAvjLbC2D3OFAcffJekh/v3oGh7lA+BdiH6R6s+5RV2MreOCvJvT
	 u20Jxv50xxMBSB2c0rYfiI5cPtCbPYphNFozGgVS0sUTTTqkOMA4mDssDyjxFv5cZ2
	 4NBQYpSdrsMKuY0QUtRS+z4WHcmiHV/hctG9VrgLXKEl0lXt9CZrhmRyUVGurmzs4K
	 lu4TRSH68wUgbvzsIhCyWqKk0NULvc+oN5A2bPVaNGLNqDNg7DSZRyrnqzHgGgO8Ee
	 5dW7+q1xKFIUO4f0G7CWzC8BAyFR8TRqvSRfm3Nt0LDOKep5TO5jbBlqd9K/0saF0x
	 ZieEUZrSpT3ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C926EC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 21:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171796964278.10435.14888085310378260913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1c5d820976520382679ff7c195f37d99e246920e12ed6adf198cf9c010bb527
Date: Sun, 09 Jun 2024 21:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717969642
