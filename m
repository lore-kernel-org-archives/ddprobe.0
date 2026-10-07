Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E7337BE6F
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791347434; cv=none; b=E9H077d9EE5pmBB7PIOPhkEy5u7PvtzyaxOc0LJmqoyi+geFoQFJ4aWcOCKsv3BJ4A20nl2T4urLP2fM/lIyYX56ESfZXozNpXogSQlqqko/OEDix0lA94/LhNLQOZlSulgTmTA/zijY/NDvO8dP3py45wtgbNJdXjU0f0oHO8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791347434; c=relaxed/simple;
	bh=t42hjEa4elsjVoHAFJmCpjuvfQzBS5gY/SyIoUdZDVA=;
	h=To:Subject:From:Message-Id:Date; b=B4L93go2iOrzFPLv8qt0NHKDwXri2oVbyA5k8jTF7ATNl/zZ5xtySKH4LkMjyhj7aAd+WZACg7bd8kONvT5WE2bBtC30jsz716fs2CrXm7VgXtD1tfqoxvOROn97/ZZBwOAQSablTE0XwmmGZ9IX3JH8vglgVT8l77GkKbUpW/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cb7xl/Rh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cb7xl/Rh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF8A0C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791347433;
	bh=t42hjEa4elsjVoHAFJmCpjuvfQzBS5gY/SyIoUdZDVA=;
	h=To:Subject:From:Date:From;
	b=cb7xl/RhO+RLH+4sbK0gLzPDXW8fqu8g+9G/yqrg83Hp+rlUGHn+M1uueYaqfnrtw
	 stjf8xac4a3xSCApPqRXpnQDyVq8v5RsAnUmDolTMBJJLREZUykHxj/GXJket8Rfp/
	 zyhX/tDHxZXhqZsDBdYQCBXA4avTmABGWjYuduy48PuSBC5E1yQ3wZ3kXq6nHsAXBG
	 wCQVaZ2mFl4Fg24H3frKI6WCrOtq/JjCVLO8c4IONZs9Xck0H4+6q7fYQC+rucpP/4
	 lDCK5twnjTkDByp27nrNHQxWO/1tIdaFwVkuCmtH83b0h3magxhezetDSTdBTBFxLS
	 2kwqQSgsdEj/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB39CCA5FF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179134743369.16953.15557776419228214249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 679d1834d8368d91f172514090da686bd2c25f8362cba6d55d492c8dba0e8c3e
Date: Wed, 07 Oct 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791347433
