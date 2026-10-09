Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532F236605D
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791517234; cv=none; b=diTaQxER5E9GtXz4ufWALxGQ0Hy2DWxsl42hG538hq3vwzWN67168BbKPfnI+8JNZ4DxRDcrnuE2xh4aqlYXUfFTAA4DHNB3fgr1TryTOoHTUH4T1gJYxEhgR+zjXGwFdKzvdGNuuoz/BAvBYNVUi0TVEmmESn3JRrlVvN+enJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791517234; c=relaxed/simple;
	bh=TIU8yDfrafBJCooRlh24nSXqA6ERDioGVKsGaE5Lkc8=;
	h=To:Subject:From:Message-Id:Date; b=Qd8XfQFzdaM+0BrFmnOeAX5P+4/aF08as9cvoVBsIVKFg1fj/My6NuoRSirexzIUHG/NSfr18BN/86TiFsD8Awj01596vA672NslHIAH1wp2IMTJ7NwNQfXxYOiwv1jkgsh/08+rJQY7tbmouf+Lyakb+pxTGP9xYolrO1TgGWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DlIBfnzP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DlIBfnzP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA72C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791517233;
	bh=TIU8yDfrafBJCooRlh24nSXqA6ERDioGVKsGaE5Lkc8=;
	h=To:Subject:From:Date:From;
	b=DlIBfnzP+CSaMSaRrSl+GQ44bpmIjCoMgZ80iMPoUdW/Zx42HGmQP8eZQmWJBpFtC
	 c6ZS5r3i4UvUarePl080y/Luyxw0MLJu7zPL/YPjx6lKXl6isay4p6j1r+qNLWTvsg
	 dYHnOgwHjBvnSjeHOJ3pzff2sJxE0OMMd6bXD4iy2UUiQO2UcBosubTTufnLsYISL7
	 6clT+IVRubAjl2PFumorvdn7v0gc3KICjdks6qqR/1GdT1WWlJf0vmiiE1xPSNw2sX
	 19epR64Sem3FHaeUd2aEKroluIXD2hFJRbxG5qgb8w8cKZFi0XDXAULscDmHj1Y+rs
	 TzSjQSYv8qfvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA274CA5FED
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179151723368.30663.3129880701737447139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb7964011c165b20591c945cb2d21d9605324c142dd24b2c9c52dc64e632d56e
Date: Fri, 09 Oct 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791517233
