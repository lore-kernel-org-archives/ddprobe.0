Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DED033C8
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 23:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716852263; cv=none; b=RwkmPvmx6dVrMPsDHLBTDwmbjYjbS6xv/jV8USh2O3Ev7FGcI9sPhaUjgJhBMmHuXwkpwr8TaXrGh1B7wKaw4T+dOlriBbLo/rCFQ0MieWaWNgoFbGTW8dDDAFxIl+joC4nGDk9xAqQOvxsePENjbnjmMc1vDcK07ItavfmrK9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716852263; c=relaxed/simple;
	bh=wv6sqSrYQIk39CdLwYD5DTOBwXfxP2TTU92MFSJGT4w=;
	h=To:Subject:From:Message-Id:Date; b=M4akGj4F9U3kpoEzFiW/yAmXR7w1Rew1LfwjPXl4g6hGsxTkl6cqfD9xI7ngifUrLayx3UW9l45jCLbJGYmdhqJkRUzGMapzjD6I3lNccboGI5DZII8yiLb+WSUHkzgtOWbcwnaXPyqZR8BvbGw8FycE3yzZc9sZzCvhIMmggNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggzijTgm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggzijTgm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3F9FC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 23:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716852262;
	bh=wv6sqSrYQIk39CdLwYD5DTOBwXfxP2TTU92MFSJGT4w=;
	h=To:Subject:From:Date:From;
	b=ggzijTgm/3QzDbwOZxczqWxAh3HQlAlgOlGL/v0Vjb++Agml2WAfVcHAb/DUo2BER
	 aFwMnrRIjLm2MV6QWz0I9y/yg1RENgrQZ5vFOgS+4yk3IkISmhb8eeJQJFyyCxSWf/
	 /W2mGQiyuHYGURY67rCoh+uN5KuUEz0+yIELnXCvPw69U4grOVpu13a9atm4RkxLJv
	 6HhOkglBt/idTjPTP7943w9Y26VM2FvylpoqohCftkRN4/N1RwbsCH2s1FGtpnofPy
	 nXIOfrEK7MdGvtp5CvudaeSSBgFNeApFnt3RDTKJJ+zPm0l3ayO70MH86j0IbBVKWk
	 HiHUjwZRBFgOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8915C25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 23:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171685226279.10626.6943435272315301223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9927d80dc03f75107b5fca7b34700caf031ccbd94310de07344f69546b71a2b8
Date: Mon, 27 May 2024 23:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716852262
