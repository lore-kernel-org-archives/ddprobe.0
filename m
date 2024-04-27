Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D5EB28F4
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 19:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714246343; cv=none; b=JTdtPDlT+NzfkL6TQhy/j8gfe7p7LjTFtgtLlhOgUirZN5Osc1uPGj7O/R8p255m9ncHLwkCDb+CvajLR0zCTR2efZJxhOvOIYUGL2+jaRWTTW3Lq3tiAVRnnPKzYfhz0gfF1f60M8hfT/ieYcglApD2/SwcYwB7l2fSjSIF+h0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714246343; c=relaxed/simple;
	bh=8f5VuLltkRE5v1d38KiEF1Cv0A1gqQvyDsfxQVgEbQc=;
	h=To:Subject:From:Message-Id:Date; b=HFW2LvWGnEh0Ceo82aigsiiVxEmAMOmkgUuaJgsQnDnIe3gekEC350wCZ7vqOUOXJmuyWAIlQOM8jceW0WOVzosQ0j77IAg5u+GmyOt9zUDSbR5CDbTGxvmd8DvzTtLBN/KrPkj6u/FWv1a/lKJCiwUIaVQEB9iROpqtmT8WbmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYhENENa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYhENENa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D348AC113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 19:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714246342;
	bh=8f5VuLltkRE5v1d38KiEF1Cv0A1gqQvyDsfxQVgEbQc=;
	h=To:Subject:From:Date:From;
	b=NYhENENa+4MGkh1rMtSjrVyIIUeB3wSeKKEOxvt6VxgXomFHQrT4UNMM7+uVcjAJp
	 NOMTBVZTwrSkL3374g9F9pAaQtjROwvRQSCkEl53PyplpiQVLfbIY80Hb9OqO9LAhq
	 YKprrPauW2/NMxBfGJBRuwLTI8pKMpkAZBxALXvU4Ui7w2kVMWLLgXnGTJcSMrsCHp
	 +R96suS2TLJQD1n1LlM+Etcx8g237OkD9KjuLfiH9W3CCMKL0wDuRR7VPnOWu3f2Yo
	 wp8Do46F2WGUQS982rWr+7XmUeZz9pFSJY6GGWsRXqDSgJsjyGj35E0HBGEEFuWBsu
	 Lf6u3CubueIKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD6C2C10F16
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 19:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171424634275.10586.3497149434203985742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b53e51af0eee051ac66fcb1e232e55311b67e14e290b531135cb10308e61306
Date: Sat, 27 Apr 2024 19:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714246342
