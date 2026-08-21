Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EEAC440654
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787277634; cv=none; b=dqY7rMHlCS9HWHeD1x3mL9yxVz30Y046Su13TRAXxzHfYrfyTQ+Y8c6BEezGoYsgiGtCazz2ckdbXz5TGt6dVnxOBzMOisssdczmNR8+aJ+jW5XiV/ZF6eT221hpYOue7KoWWOmjzSOAR7Ex5cyYQFNiDBuSUbJEkJ/d6XWeyfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787277634; c=relaxed/simple;
	bh=vK3q2vQCOBVirvFIVH+OE4+itNPXDrsOHfpsrSUMvsU=;
	h=To:Subject:From:Message-Id:Date; b=E3Bs169ovHXswiFzPVZapL9oGLN7d1b1jTnQgns0uQYFhsy+j1B0D9pkhBHSnNLaEhLuKxgq/bD0zgnVaZbt1oleKCmk/JI68a7wVDqRzmoQUC37K5mqw0uuKE691/PWtDluuiJOA0XxK4baco55VzORdjl5iq6/66W7AhzVuKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJUubQ70; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJUubQ70"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2DB7C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787277633;
	bh=vK3q2vQCOBVirvFIVH+OE4+itNPXDrsOHfpsrSUMvsU=;
	h=To:Subject:From:Date:From;
	b=AJUubQ705Si1O0RvBeudtylEbFjz1MPayrEzjuiahb8j43Cl82xN24nafTKv2hsEv
	 avAVVC6xtOvwpH0AMO+8oyU6l8r3Z17YuW6fjdAymrwhDsj+TrmwQNmcrXmJnIfwkV
	 f1wWdbCWREjl+cQwr/vht803P2eO6EPINQVtwbGcwvX7mhtyFMpwBpONtw57HUju3p
	 W3ePwuBEpRED55cjwkTaJhce7YaCxV/nE8jee3gCN1ggylW65k8Hdvd50D8eTlsPNf
	 I2aGwFYoJ/cfnO8Q1cew+/aOZW+khBFzWraoDl1kV7zayWf5st9z1cqJk1a4gq14aE
	 XJSB+sLkSYzyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4A87C5DF87
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178727763371.14394.13584785048258123296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24e8c5139feb83ff526fcbb6ccda501e9da8ece339588493ea57859d75300097
Date: Fri, 21 Aug 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787277633
