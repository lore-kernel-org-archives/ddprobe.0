Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382FA20C026
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749125394; cv=none; b=sMjz+0ldUFWSYiUntdQwyPjW5GpK3zqnh9xes2p9Q5LB4KP9AsHAoGYazxuZzFg6F83ZOzhaQlvYT+o/jccNIok/hFPG5CYoRKLJYxPVEs/OochNmY1h+VDxo5FkZ1ggMi17L8QnbAB8xXmyiEPq82TOEyhdGRy4/2wC6yy4Hpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749125394; c=relaxed/simple;
	bh=d41I7FHXPuOili/tlHuSg+82+X3Xq9uDPIrHAIkxqCo=;
	h=To:Subject:From:Message-Id:Date; b=Vjm1r0S9Ik4N4+VEAs1qE5s9aZXAgnabIlcpIi/Fw01jcFtYow/TnYJoYVLp4St2xjCIBIiz5bUGUNqgIif0xpLmx4RdAy1K7uMmRID99LPCfZItmh85ehDjvcTyiE6oe246E/Do99kWr414gKL3Qks/IPVgpMoya327aio3xTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uAMOmx4h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uAMOmx4h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B1DC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749125393;
	bh=d41I7FHXPuOili/tlHuSg+82+X3Xq9uDPIrHAIkxqCo=;
	h=To:Subject:From:Date:From;
	b=uAMOmx4hxCbECoPWD6uy/8jszbEHyoeOg7v4FNxvW3G5yfH1nP7bNLsquDCW//gWt
	 w0pKdmTi3HvSMQ5T6G1HlXqff1gOAQ/az19IFve3e0JpkUkKzINet2HEGyHfqWarz5
	 LAP4Jng5wSc53KKzbBBJwvNHezGi4rQ+c+b4x0mrOVRwKzjbTDMrIkkMPJ3OBSiRI8
	 A9DDW/Pyk8oSgAkSZIt9BB7DOd3IzdoqCJGECyovymI/K905Al1h9VqngY0ux2b0g1
	 LyYazKTQNprGZGPpOTOqgcFPhi4+j5iUhJxWRj7723fbyGD7ndMufyQt9XVea+4G8I
	 MNlumJL+2DnfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9026DC5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174912539358.12341.2810071407246003783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ee5ac2073a78228009d7a07631e126d2eafdeb030a9ac59d38c10551f9b4ccb
Date: Thu, 05 Jun 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749125393
