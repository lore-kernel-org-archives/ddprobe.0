Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347B520B20
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736309154; cv=none; b=c+TokAPeq/ob49RQPlRpmzkb0NboIlCIvfolx4Kw0qyMJGx2iWnmSYw2l99sht+t0/XvRIZTWvkKmGbMlAPTvHCC5aKuZmzDaxUGAaeVhsZIXjKk1lKj4XXHrGtXsL5Oi5UUUV+vKpNTSDC4kJIZsiAQrAICvTImiiSW7ujrhIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736309154; c=relaxed/simple;
	bh=UgB8fFxEKzYWFXciMa4E2b+zRO71hJEDNfuInpX+TZQ=;
	h=To:Subject:From:Message-Id:Date; b=UO/6UxLHym6F9rGBvcmM6o4232HKp1mCgIJQZ6D52M+s4MnZ9ejnvI5IgcpGbHClrNWoLpNtdT9b4U9o+0qWZNq1h23cozAOGQ/fRHe69Bc5Ck6Dp0u0Jvs7tk2koWNg7lowS77QyHhygg3LvErNiVCBlk1EtPnU1wyj2ch2aUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rD2C1NOk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rD2C1NOk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC2CFC4CED0
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736309153;
	bh=UgB8fFxEKzYWFXciMa4E2b+zRO71hJEDNfuInpX+TZQ=;
	h=To:Subject:From:Date:From;
	b=rD2C1NOkq2Fh4TmY/vqQQN/yQ8tCTf6QyFMznwy3dz8HbIY7RN9FaVb7NQTnY3vo7
	 ktAi4yEodllaECYKaPVxNy+iRkXIe+8FxiJmQ/FCkw5/64Ok2UXIF49rdW4AExjMgf
	 GPBTeMJzz+v03Et5j8EEyKMhvHQThahFLaJMZ2A67K8BEj/rZkigBoJtzAUEr2IgDA
	 JM2yJjXu17enoQjhoUdgJGViHI+AJmPxfG4ut4fq9TZPDVyQqBk7dNk+R6lHUyADp2
	 OQ6yIc+XhR/zeISmIfGGEwiqZmf6cCs3uVBEaaBEZOoR1ElauEgsga5BpCynMw96Nr
	 5Aiwj1v1QdCrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97115E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173630915361.16496.7782976826980413726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ec9111d811f0c20c93953ff55af82c327655351f6c97572e9811d82f8b99578
Date: Wed, 08 Jan 2025 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736309153
