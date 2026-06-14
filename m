Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8131FC7FB
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 17:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781457394; cv=none; b=I0dThdfkWIHL97YPStUjRs1sEpm5bZhXerKbNwobhbEd2SRTiyLXVgcJnVcqkG2j63iDDwJNkz7X16BKQozrj03RVl0JAQ1EkTa/ppPCHg4Ik7U/Huf4RM9rFcCuB0AVF14Q/HJ/lOAXfLz5W+O6M4LnIsYx5jwE6iOdCtTu3XI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781457394; c=relaxed/simple;
	bh=6Dza2OoctGDbFDCRTNDszbmq0KWVjzyEu6i3KVLSLCo=;
	h=To:Subject:From:Message-Id:Date; b=huKknAcP1fIW2Q60k6H1BM8WtsWn7cb/j+g3+zXj6NOSeLtw2/igu9Yg9+eDC90iT5p7TBqeGIR4lG2moygaaC6kyVzV5/5DrpH45LceVlWw8xkQpKgYTrp8NTblAWmRaesHGpP3lEGQC/TmBVr4YydW+9sSmd6Eaa9LhVe2bQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FSytyWsS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FSytyWsS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC9ACC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 17:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781457393;
	bh=6Dza2OoctGDbFDCRTNDszbmq0KWVjzyEu6i3KVLSLCo=;
	h=To:Subject:From:Date:From;
	b=FSytyWsSmFD1PRkp8t7kk0hQT4l2B/tvTg9TttJPfQLCDWGI9SYgZg3uj4AEikc2W
	 Z7827elVtOtwh829RBPppKcxnMtzuzZSHtHuRZQUgFaBbxswhDqGlUz9a1u5g6dMCc
	 OM3uXURmzCFgwfxE5YJaqCWDzG+KEXyaZQ2snn73oHP6ip8l63mtOYgh1MeAqYifIw
	 6Lmfbn1soyDLpZx+oIKuWghV2BSHAOttyMcVXq81Cv4oLHr0L1rkESxAURz+QxmiwU
	 t/5aZos9a2qEpdpQaAXS3s0rwxLaxWZI3VKYfxi8qSIpW3PR/Q0N+xq5P9JRtJunoP
	 8GmEcNmrVF5Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AE9CD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 17:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178145739368.23945.5781458637583208814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87a19fbe24aefcb6006d71b8e98aa9c534657e546527a691ea8fa2de8217e735
Date: Sun, 14 Jun 2026 17:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781457393
