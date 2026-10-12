Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50DB438C438
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791820834; cv=none; b=PYKRit2n5lIbO9y7hRDVmtUV72AxBTgzZj7ktYk/GbGTiFe6ZRyIPNpiq3PmWMhuC8x7tH5fYQm186LGuFnogpMhevy4LlZR1mq0IZBKnZ0n/6v7FIfBTZ4h6V50OGrvXO/PsP4KDvDh7TTXYMuBlf93RF9C41Aj5uZ1f1fD09A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791820834; c=relaxed/simple;
	bh=sFheKNUIRF/4BeNZ2zxmOMvwZQCU9jpJd4/LrEzNmBA=;
	h=To:Subject:From:Message-Id:Date; b=EGLxW7fNmViAB7fw+SJpR3ht7lXZkr4bkxOsZ74pkhlbhxAzc2MtU9aeIeSxAawcy32iQYjdl9/onsg5tRe09/3SRH+7AyeQL4zDCj6D8cGB5StOV2d/vjyeZPGLQ73+vkrqLkCfsvG1TPxDG1x7QNQXhXnby4UVpSeP96zAS68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LslZOIxc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LslZOIxc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF050C2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791820833;
	bh=sFheKNUIRF/4BeNZ2zxmOMvwZQCU9jpJd4/LrEzNmBA=;
	h=To:Subject:From:Date:From;
	b=LslZOIxcBAQm4SzDty6LnNCUk/aiQYuCkT0o5y36R5QNV1ALE4QmjMjEHADt1xr1b
	 wcIyRrCfNcYdpN++HMeS4oHbJoDX1mY97y2NHKFgrbSbYYh1LvGvs3Ur+GY4LXNw1z
	 bCEhsWqailDwpbq8+DEFBHWkzveoYnUdt6sm0m2KBidCTh92P8mlwElLiwzyOpwraa
	 qZGrgsttjKhmGvSxeK5wHaGbQ1OMd/quK7HGyagBBmltDEABz6L/tDVtL+5SCJsUR4
	 wn0XAseVt3P8yKCmDX4jxnKhxAzDMkqakV4/5ZwtAPbfYc09MUEB0Nvr4aZj0ZUp0J
	 lG1WaTShW+MNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB3E6CA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179182083369.23265.6863899026821322826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e01fa3aff566f8e2d1f4db2973f13d9a9c926addb884e20d0be575f5b2df608c
Date: Mon, 12 Oct 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791820833
