Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58EE647A6F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 18:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713034763; cv=none; b=o4UzYIGxu8xpKDV75g4glaQ8PQwVmnmLXfCQM3UcTCmWu02gVJ2GzZFrix9J780QHp3Qrupy62tU/o1ckDFf4fpRSda97N8lu/xU376Gwo1VqxR9kiqqNDLOrRQdwl2dCDRc8m7PVUgOF55FPlaAov2LujWAFt4SSyGFUIJinKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713034763; c=relaxed/simple;
	bh=/2lk1k8i71ExrpnrrATmU/YdHE5ZIDEmaK95FXRabcc=;
	h=To:Subject:From:Message-Id:Date; b=jhbrNfcGakJxITUO+z+S0r3XnFuLUue+gKQf7QaRYbFVM5i3o2ooLzMKu96d5eMN8RtAt+VrGYo2GDMW2keF9f3MDOnyuHu/OvnV/PCiuhu+7KWIscSKwzZYs3qw7TfQy3OUC7++9cT64CkUoYD0OwmkcvMcPBiSJ49H0wjhUwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TgBowGSr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TgBowGSr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7638C113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 18:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713034762;
	bh=/2lk1k8i71ExrpnrrATmU/YdHE5ZIDEmaK95FXRabcc=;
	h=To:Subject:From:Date:From;
	b=TgBowGSr6p91vYamO8E6wm93/BenHXi1WLGR/jscno71lzriblC9wMTFLoKqeWnwt
	 LVFno7yqN8nKaklFteBPAKyatFS+ceoNlzFpuSHYfHJloNaVJzWzT2VdlLFbd4XFvb
	 JbmpdxjHQTpUHCi24gMsiIJBIf5m+otyCnkEMP4iBQpt9KpkxTwAeESNnE+oFQmgK6
	 wCwHISEhvgSvwDnOAImkNF9a3HY0ovHWdKYb6IQAggep7mDJYgFChnkVpeodeLlduR
	 7inp6RRDaHaQtyLaV26jB7qKRpIDEgz5HLrK9iZwqd2eA1bTlzIKUQzeL/Y3wnROgq
	 p1AibcmkVqZyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4783C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 18:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171303476277.415.318458377956864751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0a816ee5fb581c389aa03f71de0119780029001fbf8a3509c53edfb29df4d6b
Date: Sat, 13 Apr 2024 18:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713034762
