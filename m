Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C33613AA27
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743572394; cv=none; b=mWBUhAfOpGUD52iPcTjWcA0H/AIY5fystpxQBiTpIeSNVfVHHfDYRLkniHx/Ez3+nR5xdwHBq+wY5oMqkd0kfpgFeRmi9hr1DLO8Oae/LiY5ea18b8+NGmc8gzJaMFpOMFVKPmKzIQRLRrCJE3sPMWLEGszABVQcFapN7n3uiAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743572394; c=relaxed/simple;
	bh=QSIYExWJXAEaIBrXr873f9AhN4KuB6JFysVZckW3nvs=;
	h=To:Subject:From:Message-Id:Date; b=bLBJXxffmmD1NwtJw6qyOvlos+GypeWMay00naqJdTIoGD452zuTMTx0cyO8tzTerXkf+CfiFxvYPY7kOdGHI7OE0xgwZ/3xV5/Y1/9sp0tBdBdeZqNG09Pr/Qcxwhrijy7lD16+t/GXcEnnoIE2V9+m7e6an7ItD9y+j6XeZ0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MRJ4BS9E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MRJ4BS9E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9CFDC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743572393;
	bh=QSIYExWJXAEaIBrXr873f9AhN4KuB6JFysVZckW3nvs=;
	h=To:Subject:From:Date:From;
	b=MRJ4BS9ExYXwfzNbOBDazOeJA3jShSTccaRLnxp0oMovmRAaCQJHtUpzUyVjyjPEX
	 19/2nDBH9Gzel3RgvV2scbQ6f8s+kkpSCfWv8EZUxj+PUL1hedTOWTPHPXO6Pp0pMG
	 qZcd181sOXIUIf7O8wEKYYq1vU7GLl/C1n46xuccEpORGIRyZiCEW6MhYWVyF3kIqi
	 pI6cw0jW6byDhQ22QAN0hQGj6vE5OAnF45GJxoWtF3n1m39TRm6KlbKmx2Tt8p6Q6I
	 qvX2JTMXIAFGxG0qDnKfcYa7HdKBorNUDQxyGydsJzoIHvaTTR0AYD3aQ7fd0ATyoB
	 2d8vy1HUCmCFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB16C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174357239363.11354.5134455784447209937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aca7dadeed1698e518f9a8d55197957b3b5b8912618c95166a7357bab5d18883
Date: Wed, 02 Apr 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743572393
