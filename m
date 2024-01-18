Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C0328E3A
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705595297; cv=none; b=C5mGopBWG9Y2rL9RtrKWjiw98zERGy/vJzgw3qQLjvfQUB3UL8qvOKEIJwHZ4OIfRva9I912mJ3bfJxabQ7boscrtzbQllmPKCBb2bfUKv+G187c75nsS35fWr2eehlfo/4q+XjnUtMol0VrTTBpFqKOb7uHbzhHmex0fsmxEWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705595297; c=relaxed/simple;
	bh=VDFSy3aARyQI+yMiXVyocSjWaTZx6zomJcVMPnVJDZc=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=EpFQY/IOpcNMBZeFMJZy3vWnyvJoTdFNxEehrHZ8b/mVEuszpYmNaxfzxk9PSlw0M4YJCodMqxsGpjZYtncoO1vDyY+SmWNHVhz9L0dPG+GowFU/V0rYo6g0+mhcbprW+Tm/wq73KUMNoWAvvDroST/TtQZoWbV/kBPWjBWEn9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMiyBkKb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMiyBkKb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 809B3C433C7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705595296;
	bh=VDFSy3aARyQI+yMiXVyocSjWaTZx6zomJcVMPnVJDZc=;
	h=To:Subject:From:Date:From;
	b=XMiyBkKbKZY3UIL35wSXltj3eVptYrXnfuOrneJ0VDR+JU2y7t9ldcwIwCDgYpKZJ
	 +BY/MwlyN9iE48edr6ttfKqaNCgoWqm6SNwFWm2zEWuBspcxyClsdQwburW3UZp/w9
	 lJR64MPLMZAndsJvKuuJfqVKTcz9BbORAhRn4bekHr4waOV3TI1HxmXCqdx5ejAOFD
	 PkIy2UtznhOO1pj3sUIxAfHMAuO8bmgMilAbIrkxiTFd1uP7Q2U/s1qbLv4WdknF/8
	 9C/jMczbwPIvMDMIGXeL/HIsi4/+bp4EcOGKp/BkYgzBgRY+O5ceZP3OP7afEojhze
	 fGGan+TfrrmoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6273FC47DAF
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170559529637.7289.13318915926340802594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6db41d30d3dc7d8c732e4f01c27f017598c052d65072f506d36485f599456e8
Date: Thu, 18 Jan 2024 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705595296
