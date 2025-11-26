Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BC3246BD5
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 02:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764124374; cv=none; b=liBIONjoxavuU70t4+seYrD/+ctzOckyCXuIMZ7dSSPnb8whK5eQCwOXYUuJMbcldnscRCB9osXQtajUCPYt85lIMbafmEEoP+9V8U+LR1J7GbfzNQt4Qmgt8JkUI3anKB907rOYfS5bFoQmmyQfShXuZh0VTGhvgQK+jwB98No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764124374; c=relaxed/simple;
	bh=JiqnbxkRbK4WX4jiCCqM3l58yYfzEDAEJme+HvDtgg4=;
	h=To:Subject:From:Message-Id:Date; b=pJ+0mNHbQr8TCd67DJkLE8lAMRmo/5byxaunpmxzGkjbVEQDOL3ZhKpsV7Z1MuOKRjfE6wt8IZiEVzNYX/VjLOGkFIdESLO5KF/KDZChq7ZTz4pU79EwBl/TTHFR0F9qyLeJWLk16lX1yBAqlZ/dtInPrbNCq7O7P1SA3HPUPMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rG+opnJ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rG+opnJ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA855C16AAE
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 02:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764124373;
	bh=JiqnbxkRbK4WX4jiCCqM3l58yYfzEDAEJme+HvDtgg4=;
	h=To:Subject:From:Date:From;
	b=rG+opnJ7+rRUOS+QDwiFoYQzPxr6S0E0SG1W3+pEb7ep4akCOHvFDyoGh6a0wkAY9
	 uPqkCNu/7k4k+apOsDar5kF2V0WVfhyJ+6SAuc4W94OzFpwykm308lBYJG6zz/Sr8S
	 QQ+ybTbhVEcSwNaA552Z8hTA0eFh9CD+3JmXprX8f7f4o59Gai/hx4cfe3Swgj3u+H
	 qOVBDCiQKxypuNIK0NBJ3sd82+Lqp3kPOSuEnyAHNddoZRpSbRQ4XIqXWA1Jh+uvxD
	 0QLaDjXuS3GDI+BpVMWJXOxmBhkpDKhI1h0inO9B/XS5CwhIv0JAch0Z1DfHhI6A3f
	 raNHS6xFtYGzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A6CD10373
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 02:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176412437359.6829.1694719589315955190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 354327ea6fa0cb3014711bb6b25f9a4956358f98198e92f9c80beea1f4e642f9
Date: Wed, 26 Nov 2025 02:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764124373
