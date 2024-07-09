Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585161586C0
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 10:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720521983; cv=none; b=og5KbhAqR7U1NWAbMyZt52K7lYuP2hyg32NJTnjoDvO9zp9s/gqWkFz4ZRevzbkhmWXl6rdaEJ8ACNt87JKIJzNG4NPVVlHScbwhjDytzpKF1PFgb5cZUI8uC4NzWP5WQIs8zy/33Pk54kA7w64PmuoeDml61zZiT9CIfNJ+OdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720521983; c=relaxed/simple;
	bh=8VPhFX1RhClQ9FR93h4FRbIM8bJlDX4Cko3S5HFSKVg=;
	h=To:Subject:From:Message-Id:Date; b=nN536OcpsisresSP7YbgyDrnGhCk/bfSnfVG4png4zy4F0OLCbjZd03xn/Os0+YrwEbNcQcSNpXRbPThG+D0ztXt+3dmXwQeiuL774S+HL69qDx6CckG7rTFrPvbnEccdvGeVq3jLxiuGpCagqMUGyzDGkcFqxQnJha+XVj6yDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KoCM76WX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KoCM76WX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6908C4AF0A
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 10:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720521982;
	bh=8VPhFX1RhClQ9FR93h4FRbIM8bJlDX4Cko3S5HFSKVg=;
	h=To:Subject:From:Date:From;
	b=KoCM76WXJkElgYsMgI0TXxC2N4VmlJ5BMdV6gN+1ELgQjYXxmTZT/N95e10TQiiCL
	 PXaloTUSWouAS/y1ixX+NfK5iOSEAOXbyHgfbTzQyhxkx0gic7wnp2r3Hwie7B2Z1o
	 FYIUigtyXbW0zXleWqGCUD2rl3sk8jvynsQ0C2yHOzNObsjVRs1MZUw9Erw16w6OFL
	 Q1K2bMbzaNTBFfAJlQ3r1huFQpSCVkXDfaknKHs3DvVnocxoEQJ7GtIbxltVDvmGY7
	 Jlda+KJQhM9Q89qzGoWW5sZgw7uWXhhA1Gt+EeV5oQEioADcqJEsmV18VdByzPC/fg
	 fktcN2tZUqskA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6686C3DA41
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 10:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172052198280.30130.8658862650099875134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f92c948a22e6761d08a0694e94cc32329d52880d20f5aedd15be8beebcec7849
Date: Tue, 09 Jul 2024 10:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720521982
