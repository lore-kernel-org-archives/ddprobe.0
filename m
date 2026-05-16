Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 386AC37A4AB
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 21:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778965834; cv=none; b=sz2os959UcHNoXoikmNyhq+3TjC4NOXOgnfUklwvo+MP7cd2MQ2/pgMVDGREXvzvbm528kE15xuUMHJxqd9K26USG0A7D3MiNSHd2nxjXnPLt4RoLDfT2YYEm3s6vheCvZQtjCbQ+Zj7nB1Uq8J3p/2duqElhd4pK6Hs/aHlb24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778965834; c=relaxed/simple;
	bh=74w9a56M14xivNBKEC5PTnU06k/CI5VkS+EM9rYhQtU=;
	h=To:Subject:From:Message-Id:Date; b=CjkCJACBo7xk1CNi2KngPjNwi+qIy0ie0UzRZIxrL70OEWfXaE7LH7XE7KxE5ecUj18QsbnmKgyeeNHt0D+I87/FYSKeU4sn+/z+kIpTXmVR0xmB4DyS5csTIUL+5jx3P5qybnX7b7Q8Of4I///fMtv6ggJIWNPoOzHQ0lF9sKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EYNq7gnF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EYNq7gnF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C58E2C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778965833;
	bh=74w9a56M14xivNBKEC5PTnU06k/CI5VkS+EM9rYhQtU=;
	h=To:Subject:From:Date:From;
	b=EYNq7gnFuZAH7AZZubIafPz/m9h3/LoFL61xDssNm1At47lC5bztqv+kGH9B/JOKw
	 Vp6se66Se53VmjvEA3ce5Ed3XOlTxEe0BXFvfMeWZltPRJWfR3KR6RLPcC+Mck9WA9
	 eszq50Q/33T+ZeRNmnZ0pVW54ljfDlUpoHMt7TYU4rY0qKNfVVrEGTnabGgHLMlGCA
	 oGlI1R6JXR3vZt4NfvSVxF3psiXp7vc/jDiuHcdz+L91EfMmvj7B1neWVexp2w9L9q
	 oFyDsapvpXATwy3dnR1tmzOrUslvJ+s5tP4p2fRO7/ix5MEvii4bfJm4CVYePPLOgm
	 SeX6m/Po6C4Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1DBCD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177896583369.27864.1410273094821145934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1731ba206ff84bf12ae908e322fa1cae937491286c9bab6a043d06403bd27c6
Date: Sat, 16 May 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778965833
