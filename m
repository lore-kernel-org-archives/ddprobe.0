Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D523C465
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755650994; cv=none; b=Rb+muQiv0XnN5YV9W9O9G6yuy4JfFRyfkPmJQL6j42g7eYba83OMJYF3w9ieBBgI02tRtxgpkGW6TpjRPWgmUKyVurqe1P8crQNwKcTKBy2ABgi1j6fCW+V6LXhH1XQy7xJJh2urg4u/IP/XH7z9UjegRqEGtQ/QYAb6jyAyKgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755650994; c=relaxed/simple;
	bh=vYpUvHSmpFefMnOmBilR7tpdLMJggfg5H7ZhtFl/p+A=;
	h=To:Subject:From:Message-Id:Date; b=Ag/B3nHsb+eawhV87TQXfJH1ioiBi1KP28EXg0scflZ6FbEIJT28o2PSJOcTr84d/4kB9sPKUJN6r+Wz1dqYTS3I6L01xH+GqN6bwI8T6ifTOKCW5VjUVsiTm3OVoERtEXEJs1TSjBiXodz63wGrCDfkcLehL7xktV0K27YKUK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D2j4ykMR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D2j4ykMR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB65C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755650993;
	bh=vYpUvHSmpFefMnOmBilR7tpdLMJggfg5H7ZhtFl/p+A=;
	h=To:Subject:From:Date:From;
	b=D2j4ykMROUAfAnl8mcJDQK36uhWua7dS/FoRU8kpXoLiJjJ+60M6oKwYgAbHayyAt
	 5Cidgt5YKSBZRCqSeCc0d0zUwAKxjqRLXUhadWd+VuccfuLuaPC04LWAyL2J9K+RtD
	 bOeK7ekUdcA1hILHWn2Gbu6V+ToEIKZ5DNZ+59YNa4HudlT9aWDBDLfkd75KmMH5R7
	 3cddKMdz0pSbmymMX0P4HxQ1X7gbArJfVCvd30FYbNjuE0kfFwozJG/z2jDZWJq+uc
	 tCID/KsTmuQcQrNiR7rXxRQQGNS/xarRFlNemDfDGYJigLNV7pOz2Rj16flVbI7Tvh
	 El0RJLJjvSgRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FC3CA0EE6
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175565099357.3021.1327711602267377320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dc73a4bf67f0df6de1f706963f0410013a1030a8f1fa4266ee4a47830e2a831
Date: Wed, 20 Aug 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755650993
