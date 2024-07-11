Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6C112C489
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 11:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720697843; cv=none; b=H9jX2J75Q65CqOHE64nQveu/4P+nxAaMb7xjhHuaIG14IeS4GBPtCo7utWrv78V7aeloR1tK36ca7EBZNGyQ00rJh08MF5DIa8wqiyhRQLe4YoKq9mWJ3/G8a0Z8ldKAQi4DRWR2rrjsgI7YJis9CMaOHiw08J8ic01m5wsufro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720697843; c=relaxed/simple;
	bh=mmGZDr5EKh9w0oiCZr3BKNv4fAP4DnJ/cv23WHX9vgo=;
	h=To:Subject:From:Message-Id:Date; b=jlAH6keg9bZIazcCz9/QWe/BZxkQNRXLVRc5NgAOUStqEAmEVn8V3LDIJpd7KuYt1EEe9knEkk5+x+3N/7xwgR+CwhNnnyj081fU/kHBkYNj2hF+4rA27nwCvaJSgWmcfM/hncStMS2D/UgtF+AkdDV4Die46Y808IJp4iHKV/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jsXR9VQ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jsXR9VQ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3FBFC116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 11:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720697842;
	bh=mmGZDr5EKh9w0oiCZr3BKNv4fAP4DnJ/cv23WHX9vgo=;
	h=To:Subject:From:Date:From;
	b=jsXR9VQ9ZOOP9DF2Gc2mb4NnmVNu3SDQ/IzpR/yaQ0yIjCFQKwj7DpFL+55k4DtvN
	 1opg6yxzJV7IPlYs60Hng1J0f1Fp2dve6qI6jE36t70Pq+pqxvFfgMspZ3gRQNwn0p
	 7RbiS5N2iqgA/Ryhh5WbwdmnaXzpq6ia80KCfD/zgEILUng2NPU51jEFBnXBz9E9GX
	 OwucKnbKrHAC06eug0mopvqD+AGPBibg5MM5hzfiOUi9cDlBjWuQ76aakjBtfgL82J
	 /Ezv72sQawTqoOq9nqkh2/lawipBWhP+d/baSXDAAiihtFYBoNXjEXU/hCHuaCLy7C
	 bfFW0K2aKIxXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D12C3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 11:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172069784279.21708.16023394421660591902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 571decefe51aa865cd92dbb38ad95b39bb28b97a49bc745ddbb4f749de0e7190
Date: Thu, 11 Jul 2024 11:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720697842
