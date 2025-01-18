Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F523136E
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737187554; cv=none; b=h76E1UT8FB6K+tCZ6rF7XoASVOQhVb09qSwESXhIVFv7HdOBBsAFQJmykoD9o72Pptyz2LlURkli/WPBZZf4MNZnVuUNnI6xYLMm7sitqPVyBr243VbzJcSt1e8NqpSfFr9yzIWLr5DH6hS8fF4k57yj9GbC6Frsjz9J0hR7ZkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737187554; c=relaxed/simple;
	bh=HPzOnXKaxWFpAYJHlqD+8I6vXQv+sjmo3RnersJLm7M=;
	h=To:Subject:From:Message-Id:Date; b=GhqpNYZ5CKe3r3hzKNEFMwYUdUL7lS4+y4F7GtSnA1T26ecPNwQd9+VvvcsUbEUppeEwlTGm3M0JYcY/CY5oMKjGkHg2oqGrz1bxW/kn9Dxgs6DgfEMnhuYet5+Zcf5Ji0gJSwwCWouTfKNl7dM2fIw9nwGR2OAcVKFzC2ZaTA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HCju9ZNj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HCju9ZNj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79A7C4CEE1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737187553;
	bh=HPzOnXKaxWFpAYJHlqD+8I6vXQv+sjmo3RnersJLm7M=;
	h=To:Subject:From:Date:From;
	b=HCju9ZNjCLOII9Vgiyc1faczUvQKbMp2DQvDlVoDgYtox/s4X2yOurcpQ6OohF2y0
	 hJyhQ2jJOZuYNAWEf1VcYFMTuxhMjfX9CvmRXVJ7wNodlI4c8RU017apceUrYFj+M1
	 1LSzqsnxzgenGGcpnCEv3yexf3DIwVmb5zCONEQ9gpMno1KhY4rEiZDuL5YMULrkRw
	 w5bvcx8e0Yjzx9ihdjOVnL1qP/uvJDjejz/uI1FinxUyJ71VsiuSAl+7WLH8Kq2SQG
	 lz0G0RCInSpJeJnL9VgY9uTN1l0GnU2EVJHGQ847U1sQGLQ5tzNjLUyDEaXv6A5bgx
	 T8bmJAv2W5AKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92873C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173718755359.16199.12132069472509138490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b720cf8ab35b34b858b53c12703f26c0f2dae10b1030d5991761c9d53c88319
Date: Sat, 18 Jan 2025 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737187553
