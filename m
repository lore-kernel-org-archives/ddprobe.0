Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AAA91FF7C8
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 02:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775356534; cv=none; b=XR8wm4EIDotp1yr4Sxc/xfcmPhRE8G+ABTjeLwSrvPaXSc9KOolPWIOSFZVoggyJe+wTLUNPLjPXuxVESYArt7Um17d/Vx9O9OucmwTMf1+Cklx5WSm47cprE2tK+vUAiw1b+SRrnFenzzRXRoTSvuf9dpXajClkdiEosepJn9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775356534; c=relaxed/simple;
	bh=kmw2+YSRTSwJzLu2Mzht6lreekFPg5qIF1sWeeqh0UI=;
	h=To:Subject:From:Message-Id:Date; b=fS1UM9R1pXiSn25bmxjH3RYThtExgTmvgF1PI6Ke+ck5iw/p/IOqVI4rpt/C0i9duIsx1vWiXMIZKiInNQWUHsiMLAGhAq/Fj+5lHpMh6aoASmUq96Zs2nYg4/xvvbAwEqU5MtWthTLfdEofrz+f2BEGm/E5gP6c3RNfRuoCHZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qgZbffp0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qgZbffp0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEA4DC19421
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 02:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775356533;
	bh=kmw2+YSRTSwJzLu2Mzht6lreekFPg5qIF1sWeeqh0UI=;
	h=To:Subject:From:Date:From;
	b=qgZbffp0SL+Hhi4rGaSgQYJryq3G9JzA2aGr0u8pMw6+PsgVoh/qz3H5qoPrkuc6e
	 aiHgrgzLf5L4TrQI3IZI2sgf1n0J7XaXDQtUp0244Y5m3gvkguizJC+lp9nXYVCH+H
	 oxBU2Zh+4ZxE2h9+LC9fTLQoxQIgEq3Ytg0kF3gp7qPUDtBobDldQYvw73jiVOdqHs
	 2s0/y3hODVoCRHCHjaQUH/nbixMq27nGZcPUPeEA9y3ftf/+ltsJa9yD4Bjws4+Q29
	 tBeaSqzGh4naZ6shydi5ISlRLB4fsFN/vVkDi5fnIXYejf+bPJOZvuhYbj+SJ4RZmf
	 T+o+MqTKtVc4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2CBE64001
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 02:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177535653369.6601.17856219326852631253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0c4e255b16d893c9e122bd51fe5621b48b6bcf6f8a849b81c5bb77eb335bc2f
Date: Sun, 05 Apr 2026 02:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775356533
