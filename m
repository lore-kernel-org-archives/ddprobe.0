Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F8D13635C
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747694994; cv=none; b=Nx+5oUwO3vXZ4vjgTkApTSBiqutLHw8HNMXDHByovyDLvyZL5b5EN8/lherq+beMq8a+r3tVQoDhafx19wrcM/BFIsK6YmcYbWek7XLS7aEGEtWPvUCg4mimzFdtut/uOgnVga3h0FwZCGGkmmF/0ZkAH56A4g7giW6KA2JawtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747694994; c=relaxed/simple;
	bh=5g02fJjyKdO49eedi2p6kah54TNmmA/582d/Bd0eT0w=;
	h=To:Subject:From:Message-Id:Date; b=taDaIB2CuxYUCT5mgaB0gduK5ihDp+LXc0JBkLpGghN/ec5WgQcopkR6nVrEhfS1OjK4qOH5BRbqE5C6prgaQ7RptG8ClHdVfb14BMZxMxIeeYq4eZmUMQozZ9AROlEfe/CQZfb4EcwAK21hXos/ex/Gq1QbGBh624zjM0zIa7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rfO/Eizn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rfO/Eizn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E86C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747694993;
	bh=5g02fJjyKdO49eedi2p6kah54TNmmA/582d/Bd0eT0w=;
	h=To:Subject:From:Date:From;
	b=rfO/EiznhhQqnd6VeZMT+nGWOGo7eaS7HhSHOm8Hn20Hqw4J8PS/DSSBf+hPx8QeI
	 oehkPthUo+VIfTTmxWddM3VTojHTQR8nubdz6cSJcSTyExB0j/RF8rcYDwrNI20YIB
	 gwH1U3o2WnwsseOUcIQkbGWXSEVTt1eBedsCzcW6xP3M1HcGXssWyXaO03qkEcUONs
	 Qiv9fznDY2ea5mToqEkt9LGbzqc0NIV9rlonl3mOqjCkU9fAw0PhwOcTfkwWuEgYRP
	 T6FLMPFpksQzNFZhprt8sK+bI592EqHPeovxvt0Tbb02978i5noKLAVkA9jtGsH0AW
	 i1vJ3i781AwJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94733C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174769499357.5523.165477127681926975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 020bec9d248cadac801b5c07d930704b042bdb4ffaaba188b76997b9f9abe705
Date: Mon, 19 May 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747694993
