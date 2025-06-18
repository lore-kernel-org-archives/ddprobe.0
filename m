Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A372F363D
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750267795; cv=none; b=VWAdJ6wT1AXaJ9G/v+SbGqvPh2fupOb2Ec5dGqML7EBT1gGvMSGvKO8N0Wm1MTcbg76ADD765p84Je9I3sDZuEvI5ACa+DXyfG1znU2UMWwtEgRnXxS3IffakJbSBwq4GZUmeHrlsZtPMLs1G2QCfnqI72KD4ON8iutz/xZhSbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750267795; c=relaxed/simple;
	bh=mo5mxWEfcrVZbF2tk9QZGmg69zHTwtdAI9pC9+uHjS4=;
	h=To:Subject:From:Message-Id:Date; b=WJe+xa7/ZxsQxwKSCKeqhPX9ZVUXjYSv3c6m2BnH93WNZaMVGEiZlkzKvKNM29ybiBzhK4sTRFeN6oBHyWPuj7JHF44/JCzZ7P6pSGRp5cC+k0nuM6ihKQvGA83WLgHyA48AtKQ0XP8d2uHPLnw5Ms9kseg30xYmPBE8h5t1gzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QhXK1H85; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QhXK1H85"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA025C4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750267793;
	bh=mo5mxWEfcrVZbF2tk9QZGmg69zHTwtdAI9pC9+uHjS4=;
	h=To:Subject:From:Date:From;
	b=QhXK1H85k14qnRETi/ko8r+Wqvi0+S2gmrBdJRBnZ75X3w6RptmLIYGTMTDfCuWwh
	 0NUYGJrhv4lFCR7jsrtBHqQUGPs4C1Ky+hJSQGQECJycQN3Y+cxwgFVr8YNakmdJmt
	 AN0E1Q6O7aM6gJlgQxncYBz137/BqV4kQBvbgPiElEsgd5C2RbiZ1+MVkFg5wDuyh7
	 Sfxwn4quMi8UpHR5F7QFvEPer9iJv5XPxQUV28+bq4yWpdqqUQ2k1G3WADG+Mec5he
	 6Z7glWJ/gsr2n+k448M2EELlhqtaoqlr0/CaxACEOSUp6To4ZSdaCTKEgf0t3OLtWo
	 mezXnV2fCC6eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B611C7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175026779362.17364.15839565360475560987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5349ddafa1289636a10f4d2fac9cb2d5c8dc965b764f87e278ff4812b515384f
Date: Wed, 18 Jun 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750267793
