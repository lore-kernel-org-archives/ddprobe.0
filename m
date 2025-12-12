Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199EF27056D
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 21:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765574574; cv=none; b=VI7X4ZNaOvzYFYq55kEQhv83WvAPGRKdSQWPJ42duXKTGtw2RGNg7sVCE/qVbO1xP34EICyEKlB9ing/DdrXr5aZ1PYo4PoMiA4odZGPNduQF9zp1D3Q1EGAVETAsSK0aXVKh+Ys1vVFz04WjpgW89R4mHOQXLarjoc5J+4r9cA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765574574; c=relaxed/simple;
	bh=YdSGv5mB4smYvVX/eIrB+x50R0SNWaDV4NDEmlyyOh0=;
	h=To:Subject:From:Message-Id:Date; b=oduL30wFP9K1tjmBPZ0lplapCAbX6VIWQ7idLGwR6NLNIBLMyVZufnNtdnn6fQN+v/mS/8gCbEzSgz6Y1LPY/8zRGpgTYundt/EneHEE7R386e57Ly8ILouGhezaRizrUeUtRQaCAbY+hPhM0D0a2XMsNsLmFygwmkMisJbDgac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJFydSgl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJFydSgl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6180C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 21:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765574573;
	bh=YdSGv5mB4smYvVX/eIrB+x50R0SNWaDV4NDEmlyyOh0=;
	h=To:Subject:From:Date:From;
	b=TJFydSglRTkA0kynu7338BdDnrMAoxCQd3t5OORWErf+JrzouORjwF78QmxExrtxH
	 4kK5pecVerv0PS+wKgAWAppbPsqRPYJ8YByC4C+M9m2ZLhP/j/YQq771O592ODv2Zk
	 +wbf0gdgCAfZ89N8SrDLJq2bV6/H5vYJRaoiAcEbp2YoIOyExVy0cXAuWEezDXhuPS
	 Uh2HBVtS9q7Hvd37dwAXxlnqxLs6KXIaEGNmk1fgpXhxgV7RjuijL984hrCHoT3uBC
	 MPItzQIBAGUWFSHEnbAJOGd64+bQNe/ElOXRk5649ztHqivbg5cNXBWSU8mdbpsoue
	 nI18y2kol8V2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DFAD59D8E
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 21:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176557457359.1665.2318963069895561004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aacb6a91fef2c3084424f8b97eee19b48ce6c6f59e58c82209ae506b52a336a7
Date: Fri, 12 Dec 2025 21:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765574573
