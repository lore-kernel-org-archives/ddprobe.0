Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BD327D786
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767368634; cv=none; b=VEyEtetJGtLu4IO39kpyP0DGk0+6flrQGvCFkSiXqFCHMrB8uxOfCGucF2IgTw5eB6JQTrnMpxPDAUFpoNnR9/UNMzUzRtYdjhrFAgwZaOH9qPe4IFOSr7Z1EqJSaAy3plMMD9ZppnSlCHNAKaMnlRlFcNKBVSeJrj5wysPGAuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767368634; c=relaxed/simple;
	bh=b+GgSt7uEyFZUOK5mewqfvRF2c5ckLa+fokIpGtZraI=;
	h=To:Subject:From:Message-Id:Date; b=KawNja460xyQrOg6pyC2MgaC0ZJJEUUeW9qiVK/XGxxbJEDqK/1qMsG2zo2HpZ2XTOPs0ekH8nPASwluhfBsBLVZz1GZCAt1zfw3wWbuuO0rMpgv8FFsIZY9dI4BuwcKVitGPs+J0mmOKeKSEVfAcS9MocAmd3tDmVSDnyKE/Ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o9elUotb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o9elUotb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A555FC116D0
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767368633;
	bh=b+GgSt7uEyFZUOK5mewqfvRF2c5ckLa+fokIpGtZraI=;
	h=To:Subject:From:Date:From;
	b=o9elUotbScLzPn2udfuoMeJP+BB4VEGHwIsP/z4GAzjadyrRqVoHtvPV0wiWscE2W
	 xJ2Wr37h53hw70BbY86ns21RVb4XQCs1qvJ/VrsL3dbh/NgFFT+0nde+oHY9spM2ZO
	 XOOEaWVsfkUBNfuC9iBRLuMO++1sniY3AShpy+hxImgwejHvXlYb3axqtU4rgztitm
	 YMY15Vw1zKuH9RIbaDpPMyH8k+tzeuvBpsiwKaihL5QtyygBd2GhoOcfYeiGNNevFJ
	 oDhkeRJzXC/v1Jo87eKSulBchbLnwY/UWYcbI8JZdk4a6GeqBwWyPsCW8KpUmNyuWt
	 fjUVXoZUEkArw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943EEEED628
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176736863359.22660.11427327453744451988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34ab7426c494700805d80f3e4fa659d98255c75935a2552729f5f0432ed3d532
Date: Fri, 02 Jan 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767368633
