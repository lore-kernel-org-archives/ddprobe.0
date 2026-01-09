Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22BD038DD3
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767918834; cv=none; b=RHb5YpmodG+sgDrEGGtRakogs/MZzu3Zx5iCL+cSDTLJvpiuJUm6tPUL5ct2LndTsCHjgw37LaM9yLGkRW2sO0tffoemhsQWf9Bz6xHD+la9b185mfvy3XMTphloUfvPqWcRJEAjIjJ377W5WyJaQsEnkbsqwOTQDRsZLq1NJcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767918834; c=relaxed/simple;
	bh=yjlwt5rKvh6LN1Dq6jcgrOa4T6yJ8lEp0qj/3RAr8x4=;
	h=To:Subject:From:Message-Id:Date; b=gjhQ1E1/GPOQpy82enL9/N2gmmhNZi73HxMqapOb/G3Z8BF409b/xogVof+GJ+rBa5emlPCFscnbM4WM9Em+nKzygUQBU+UcJGCxWarnrTUbWQiWiY/JhSWmp0sACUcjtvwWrpPMUCC8TupW4anJBce/djiQAbVvnS7sFEvx13M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pLsoibt5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pLsoibt5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4045C19421
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767918833;
	bh=yjlwt5rKvh6LN1Dq6jcgrOa4T6yJ8lEp0qj/3RAr8x4=;
	h=To:Subject:From:Date:From;
	b=pLsoibt54D769LJhDeT57Gi9Wm0hZYmwFSEVLx0UBa/59xQzsbVw2DE4xKxPKajtg
	 gMPNaZVescXHWgu9nHoIdnJMaVufcoO/smPUlFH7axQpiligQmtglHr1J1/Lnkb21S
	 IBTLWRZqtDY4ToN/BkVppSNMhB0SN6cbEfpr8lEzzen+6oY8A5+AgZbW3d4sjmhcR4
	 vBhUpA9E4qPrNQ0EDnzheInxjrGqX7Eui9vNK/TEhhxh+PHXlIrVIwK2UkSmDVVJTE
	 /0/vADwIJOluckzreUXX++0PvwjEatSR7IBRRBJhIgNAMwfaiwYyZzwW8tmeoQL0cI
	 gSMTS98uAOUbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955EFD232C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176791883358.4983.17244821709525039279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1878abfa5ddc6d407fc3cc7872eefd371cf331c9cd39e27cdc0b10e7623c587b
Date: Fri, 09 Jan 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767918833
