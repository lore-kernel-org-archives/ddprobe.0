Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA8128506A
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766960034; cv=none; b=LH5grmbmqRNgb4pg8Ec/dCA/Ct8L9Dp3rhX6wEL6elw1I41bT2ptRS9NinigB7pbnQUz2OlR0xQUC7tO2J0mie2qWEu6x8v4iUUrBlg0KHKkdaru23eL/DE73UP3Bx6enDAMnzNk8WIe7ZtvNMpYjFGIDwp85VhdE8k2a9IDpB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766960034; c=relaxed/simple;
	bh=fm8Vc8Y+i1fSS/e7OVX9CanJvdYa1l2fGf4vr6clwow=;
	h=To:Subject:From:Message-Id:Date; b=HvvVcREHbxZxLKvvYVgvzGZiVdDShVGoUAzhSG8MMILDQgRQE0SxgNEsJ1kfEfRVwtOsWNW3FctXeoVfwNiqMXJQTKk7YEgjONfLITK64RFl7o55bclA8DC+dpBUoyhfcTprKC3qnfTzktVkUOmBLr759LvnDF1drSVJTg33ID4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UgZ/9mn2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UgZ/9mn2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5FD6C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766960033;
	bh=fm8Vc8Y+i1fSS/e7OVX9CanJvdYa1l2fGf4vr6clwow=;
	h=To:Subject:From:Date:From;
	b=UgZ/9mn28JWu781RPIBEHB5Sf32fc0LVY6NA3dqv5MPkfwBy1c72lSVv/b8g/fcp2
	 qwyqLv4XOG8i9qYlxaHGnGT7YGRfKSVg+HMQFQe/GzPhUcVht1tHp4rv10R/8SVxWp
	 xVfoX4TCPGqKoVSlkWmmYLN07E6NVfqVzURy2EyKp2eh/0aDQj9sMcqLN4WIRJjRGN
	 3bXo6/c0ZDBTqdi+prHhEoIOdwBeN63CZirYPZq/alBQRDrBazN6KM51BKgwPHsTbF
	 3udWbhzym9+KCOahMDRAifaYchrdKJqeMQqpGqu2qicm2axi2Lxm92ZcmJXh16zROC
	 gKc/cLHoWZlWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBD5E784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176696003361.27282.15171897524794901684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c8edd3874b167d9f9fcd182dad9cef2c4f332b304dda0678a59684c0ef2338e
Date: Sun, 28 Dec 2025 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766960033
