Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EFA129AB
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 08:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716540803; cv=none; b=RYD8Pxds6ZIFLY+jsRXZWqr8uxB6y1axkEB1q3ZdUgm/3DwmTO32U8r6fqjLxIwBDWtCO5IdFRRdYPt9WcI5RDc60vzmK7rPqjOC3bC0cFYeYBsUN1vsNWx1DM1+hZpoP+kicIBgyo79FR3Xm/QskElBBQt22umAkf1incBHR1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716540803; c=relaxed/simple;
	bh=XGihzK8PugXOvfhPb22/BzJAB5ytsAAbB0ywOnQ6kZE=;
	h=To:Subject:From:Message-Id:Date; b=KNo3DlrH9aLm+nlw1fsSPd/bgxHclxlmDtT0CjPX8Ao6azN4R94FsswffB5apOzLX/71g2qNHFOtgN+S3zfgqyGWmmmUIxFmNyd0pA6fWfw84nhe/XTASdIHQjFQL0ooDigIHFJuAlaCl1ymJrxQWIqd5zEwVkhErlskYqZP+rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bhqd+IZn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bhqd+IZn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC81FC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 08:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716540803;
	bh=XGihzK8PugXOvfhPb22/BzJAB5ytsAAbB0ywOnQ6kZE=;
	h=To:Subject:From:Date:From;
	b=Bhqd+IZnn8yKS1FweFrsEun8pDDw5U0cY+JdwobeB57JQCY+nzpARJEY5oG8y4JVz
	 Inz5m6uuM9+4suaCtRUgQHxGzaT3Fe2ZG33LttQL7T2vf4Vr0E+JypFZ5iALuqG/++
	 hgR+EXk+0+gL7ugMxEEMjWeIGPPgpFTU8qJ2WllX/isQ0Av6afrA0kdGmgQOCEL3zW
	 B8FxFq0EICFNLwJefxQVsGAihLatA663rL8k9Ck95E6Kke5z4OdV6GW2yhTVOdNFyZ
	 0XxCrdbjKyN5YFAZcn5hHvw/YfoPzU37TEbj4rHehys2fo47JpGLyNMbxmyhzRVt0I
	 jUnw4j4ubFdkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D47B3C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 08:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171654080280.17755.3492625966403707289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91bb4f881454d009a9f2f2ad0968f597572327db09e3f280c66062505c40e125
Date: Fri, 24 May 2024 08:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716540802
