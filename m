Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 079294696
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 01:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718157503; cv=none; b=bKQOh7Phcte9B5wpkY/LxbSJti/JChapaAOL35JbqeG7Ri5PyZScsEikx3s+HGG+xx2tPCJQlra1l5fUUuk8HQoiGmmzBMIHhSE5ccLAsaMhk1xIzKMPbFawCyffEYFlKeUygDQbBwXeWUf8gwKenuWRnAi0qQKcDkaqQcCIvjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718157503; c=relaxed/simple;
	bh=vDrbPssbwzk2hAydDZrPUWKH4wc8WChu18viQ/1U4yg=;
	h=To:Subject:From:Message-Id:Date; b=DJCd/RQg5a4WXjy2wmaKGEW0XyUj44nLaS0831fTFOn4hljopXDKu5MjGaoIkUaixtFrN2AWQrt9ytLJ5HIG6Ji0mwY5/qtNO2uubS4zVCEyMz0GbSi6pjrSBBg4HzvEbTgmSZKndGgmWbBl5kFUZEnrTkYB1gyRNSxTPRpowZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EvqD4jBY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EvqD4jBY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E38C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 01:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718157502;
	bh=vDrbPssbwzk2hAydDZrPUWKH4wc8WChu18viQ/1U4yg=;
	h=To:Subject:From:Date:From;
	b=EvqD4jBYlaNOOBiZv5Mqq0Aa0ZcAKaGkPgg3xhWUGuFvOjzV59aLJZ90XBoioR/FZ
	 SwIShzptv1fsBFX+qzTTSEoa13LTXW/kwyYpISKvB4NZFwHk+XZ62vXt4+evRcNAeh
	 6pXWy5XQPk/42EGLI1vVloZTvhgfrEx1mwcSJAKcU45JEvsJR9N5KIHJ/NxeMD1tk2
	 wFzaCHvzbzZNddlQbQuOVXh/FIHJXbGlrhEtxDRrQyCxxOZtq/n27uFUQH46usRcvJ
	 FniXj66iOn+bAiEw954viSoRbnvGeyOXGnXjoUG1Jpjsq4GkgfGB9Myqp5G1gqRWpv
	 esGdQ5w4Vh7gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5758C27C78
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 01:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171815750279.32186.8649763856276281188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9fc0bd848d277e1d102f48c397e0b3957e133ad64c51c439b6e2391d18eeeb8
Date: Wed, 12 Jun 2024 01:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718157502
