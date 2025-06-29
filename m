Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8F6132103
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751185194; cv=none; b=HPnKUwnNB06DNyQtb7fQ5SAKc/7tJakVOW6q7hqRxn6ovKhQNWJN3AYOzG1Gi8Aiv1+6Xye5oXSIZqGW/QZenYxhRotgyixWu/V5C3NkQecjs5/UzWNrUeeaTlG8r4M9JQlwZXD/dxG/bbMkKOFSUGYVwvwtEeKKM+TLs3atzlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751185194; c=relaxed/simple;
	bh=wfRtubF9OZdwcMQ6u71vSJkhYjYvkUQb09MyCMhlhOI=;
	h=To:Subject:From:Message-Id:Date; b=TXTSfSJrlWWoIIlfZgdEK98bUghhlM6LQUlt8tV2tfpxoODSe+BBWNMEr3J0kalgPFA/Gr4pz4dl1rhP+BF2wDCIVggmJY1ZrHZJ7ZsRagQe5QhxQf6Mah4ySRhXaWlrxaXAUrM6DRTMNMPfXKFiA+zsO1pvsH6wjzZf2m41CKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+3n9qw+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+3n9qw+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1190C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751185193;
	bh=wfRtubF9OZdwcMQ6u71vSJkhYjYvkUQb09MyCMhlhOI=;
	h=To:Subject:From:Date:From;
	b=O+3n9qw+BATStdYD3zw8Emr3cHn3K3Qar6fuEvcOq5ZXgMjRZADgLotPlJzWuQeuQ
	 YtCgQCMLCJNrcUnBYuphUWZBsE6vNtqxFbCyu9ZPjk60qUl/dKKyD9n65een96TPR1
	 RHKscUV2ZG/N1yGAEP3ECHC1SdjntA5xppbz5gEmj0p6QSvwP0q9HgOIBosZcJ3wfR
	 idaOUehQxGZRCvmFGHV01w3A8hqHIttnuIgbP+6fMV1FqL8AArL+qBeVfL1aS665XA
	 gNKhbNqncXv/+rRa2FJ6ZtZX7Nej8IuFRbVkFUyUxN08hbqEeCn+b8XxPugiaRaM3y
	 9tHUH6DxVk/MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5A4C7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175118519357.10181.16919216905290324179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88a600d1602d5715eea87edd8b315a96311faadf5b5c9e081c7ee24a33befb42
Date: Sun, 29 Jun 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751185193
