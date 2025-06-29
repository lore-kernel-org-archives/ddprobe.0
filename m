Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3562F320B
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751186394; cv=none; b=TGc/5h1ADPTV0FaUlkxTVyg49/EEavwtGN8oaH1VWUoQr2URmGxxsEJ0b5pwD8swmHlc3olobXod263+D2BiFOxBHgpNYAQe1KSMbgx6y+ce9Sivgx9PmmX4DAXK5zZyewv26I+1no9c37vHtoX81HOirsMpO+teY6eMe6eDpP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751186394; c=relaxed/simple;
	bh=Qr1yEk2kTdNDmPHM1bKKBI1lQNcnWLL5ftK9whQAaTA=;
	h=To:Subject:From:Message-Id:Date; b=ggNs/bWo3SXa3CIbKzgIrfvVwCIHgJfVx0ts98UJuD+vUvLQuxfHq7FAR2Gm7xdlJMci5GQIXsHstHpeH4S4rV7N4SZXaNS5I4Kph4QcjQ9KvS9OFDdy/yzxoeYvVEEbRj3e2sw/QgJT8G/rJwLEhHOQwCVvwS/KZIRlz7BupLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WZ3KOo4i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WZ3KOo4i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5082C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751186393;
	bh=Qr1yEk2kTdNDmPHM1bKKBI1lQNcnWLL5ftK9whQAaTA=;
	h=To:Subject:From:Date:From;
	b=WZ3KOo4iCDYUXkf5eLwbe4U2p1ywcuMpFYC9RMeUMGST78v+iCsAgx1Vv5RZBtJ3Y
	 u5rZ/yzmr7RdQmOoPmLCL1ZttCvWZvv5VU1VZrObsTXvwe9eKmtex/WYNxRzGHy59I
	 jkI6W+ykokk81P0wZmT6rJQVIK16B/vma8VV3NhxMxn/dbO342oJTQ7VVunejaYN/s
	 6UrJdlhcNMMJO0DqDM9chAj036m8mVpPjy92ngZ/jvbBBQQX/GDFk12NmnCxodtKSC
	 qzM5tyCE6MQ91h2HYcm5MC/yxzdi5lK1eC6aYIB2m49H7WREWoVSbiXv+6Z3IM4SIX
	 +Tkx9oQd5xKxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CCBC7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175118639357.3889.15894856908479171064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53494e786702927f7d89140f46b5d2c5e75ceca1e79ee8a3667ce619d70933ba
Date: Sun, 29 Jun 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751186393
