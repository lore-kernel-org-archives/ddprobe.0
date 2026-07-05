Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80BD41EBFE0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 00:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783210714; cv=none; b=tCmJi3gXF3QzZVczKo/ytyrCXzHfP6KEXwWmYEIUsDOW2pvFy2jtPccqelaWXy9W/BAVNkQfA9yH4MxuKCus6SLoZVrmpfVXwldtMQvHmWaWE7yz24VWLIIcqha5eb4OfK/7aye6Sm4U/xpgWz12KVmc00E3e36n+7ERMqj6Kk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783210714; c=relaxed/simple;
	bh=QeX3OqdFSUmcP4KdUxPgHaOg5df0JqeQdUbCRKqYodU=;
	h=To:Subject:From:Message-Id:Date; b=Ek5zLSuTrdrI+gkwPqUcQMpB1H/bUgoUGDPzd7NVcgussqwq91gT5rkKK695gsvbZx5JRTdesiA6QJOnyQMqxIeF0U9Z4BOp0RxG13VothMVECELJvVNaHtz4AjTRkdG80E5nddd/gat9BFDhaocwZ1J8dSSl8mEyo09IRE7W2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DlgN4tNl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DlgN4tNl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD3B4C19425
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 00:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783210713;
	bh=QeX3OqdFSUmcP4KdUxPgHaOg5df0JqeQdUbCRKqYodU=;
	h=To:Subject:From:Date:From;
	b=DlgN4tNlo/lh+Z7zXAxl75V1GXtohlagb5DJTJoTXiOXP78NmgHHjcA2T+0vKlIeg
	 M45ZRQtcWevX1z3xylBlL0VQsRhmi6Wq3CiMTsYplonTCzLo5oExJXLliXHgsF6FR1
	 ptouDTuExNa3CQdWBHcc8r8fAcy8xKcYr5QwErl7rSEtBIq3NYMYw16X+JqGAsFJgb
	 HG9IAUg5TylpSgMaMNuva1rKbI422xUtJghdtyfRfuVGhsH4Zp1CuhSOtY8L/G/4vG
	 YzeTAimBWwxvcurHrvdPF5Ypcp8xWMFN41/cgTfe8P3xQKhhA8U0BwtPet0CPg2CAa
	 bpcCdmgul1TJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A984CC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 00:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178321071368.11076.182772606549614749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8371a1d15089dc96951f58379d6d0138b86fd9ab8803235ab2419b3ab8cf27cd
Date: Sun, 05 Jul 2026 00:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783210713
