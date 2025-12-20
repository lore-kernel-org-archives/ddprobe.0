Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D84B425B663
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766202833; cv=none; b=IDpvbcum1JjQeQCKuiMV9+iBvSjqyz29c3j2vnczMw2UUIp/pUkKPEdahFzD1iYvLuZ6qwOaYM5pw0bOsUzRK8rHWXqwVgASKZ8US22vuWUYVB0RwXi10J41Zdct0xKTKe4O7OfU3OXk1d7eutQrx7Enilt1UNp4rTJSWVmA41k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766202833; c=relaxed/simple;
	bh=3OVnSw8n+Fp67folbSqMr79ye29y5GnqDeTN59POJEM=;
	h=To:Subject:From:Message-Id:Date; b=V53/Au+GSW1ADy5VZBephYE+vJuwdrN3k0RnTgKyrIdkhgl7xoAYwo1PZM4LNxcIoIEWt0In5Y5DU6ykdfh+m3+9ITLCDxHc5R2GYGszh99M0XdwumwRwwctWyoydUlIfL0azbBLmxSmkcsBOdJb0DfBGgD57X2IbO1yXVrMNAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JchTCdl2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JchTCdl2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA043C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766202833;
	bh=3OVnSw8n+Fp67folbSqMr79ye29y5GnqDeTN59POJEM=;
	h=To:Subject:From:Date:From;
	b=JchTCdl2ROIv2XO2U0Amye+G3EZWqbLhFoPTiPs1zpppYIMNadncn8sNMkC/QgoSu
	 wj6PFK6di2YQj06UwcgK4HtimIcJNe1DFLMq3wF19coWILPs3int1iVyYDDzFSZJmJ
	 5ZMaqNMGuCDTEGmFrLwKm/l9MY7vGCOgvjWxWnD0VgLE0FayYiSAtZHY2kTi2iTPr/
	 s795G+lKPmPATQKchXoYIB6UO+TmgBCB6uTqwEC+GoO2MksnGyGHONyvocI/PyxBQ3
	 QNuNfWrneluub1tHZOD3sEMGNpKlZPSgVEvTGbF8UesxOzFIfI8G09RzO1MJFCS1kv
	 Qdvk1+q0PutxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985ACD637B2
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176620283358.2630.11266778663466685794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4134520d6068ad29cde16f871e702a6d470a5a201d09353824193bd558602242
Date: Sat, 20 Dec 2025 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766202833
