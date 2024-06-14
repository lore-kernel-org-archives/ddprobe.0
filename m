Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5465926ACC
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 18:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718390303; cv=none; b=OvyZL0Y0oV6Z9uAOfo+unFMZLSrdg+PpESny8wqEHAqRoY+jHnR/oRW0ZsqD5pCel7AXyKuOuVU0ujXNSEzF/I+ZRcXSz686q/vBVDU/tnDfz+uOcWwzs1OJijbZNH+LnvEc5uF62uxMMul07YEigC8b8DzGaXWTPz3TgScPGDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718390303; c=relaxed/simple;
	bh=B5/IqlGMJXbl4oDThUB5XmqWCUKyNePVdO67+ljuLWQ=;
	h=To:Subject:From:Message-Id:Date; b=CiUVb+8u5OqV0m3SteZZkMGM0X74GRAtVlBolzJJba2wh6wQB7JZiEDn03+ZrYem3W5BFX0GeUIs41HcAowcDDKvbKSDeW5vYPqZ1vIkOyadNQCFNq6CKoNcNezcyDa/2nWM44aVdiJgdZ6oi7RbabQ30NFmnYxE48HoT7jlbbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XlU2MC+O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XlU2MC+O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA2F4C4AF1A
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 18:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718390302;
	bh=B5/IqlGMJXbl4oDThUB5XmqWCUKyNePVdO67+ljuLWQ=;
	h=To:Subject:From:Date:From;
	b=XlU2MC+OpttDx9Ep9QjGjPQj1TWHGCTQZ/4gLQ2UrG0HE2qx4HcDzkK6VXoVuCkgQ
	 uug4lEDJAbcjc2tEnPASQnvZUwyBC0XolBmz7oiKBaiVQzvrPFzNSPnjev/LIWL1Ed
	 IdRxySusiTohfUJI+jBkmXXZemltcoX6+dCiMt86g+5swpqth4LV7O7LgPP8n8F3u1
	 dX1/kv8z7ANc7RAVqmdoT99pq+brbJ7pPbDzMaLYS1rGKz0WWjxL/+ozfYextsws2M
	 0rrY+N5WN3j+1DDmfixkdgLHKtZGnzR455w9dUqxEK1ClW7BSj3Ia+vERs4RCLZ7Hv
	 GzD+hd4WKTP0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4CA1C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 18:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171839030278.22682.2136691026853686617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87183913590ff887e2c683b07ebf61c6843f81c0b8c50a6ec3b8e1ff8def320c
Date: Fri, 14 Jun 2024 18:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718390302
