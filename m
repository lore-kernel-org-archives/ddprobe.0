Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346852FF66B
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 17:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779469354; cv=none; b=GDG3TSSw7wzBc9moagGp5d5m5eOijffE7JQ57y3A9hRB13UK49VNOCT0BDBRURs8mBw7I45Ze56gvhQA+L8PP97Hkv9UJui84SD/BZXuSstb5QZQezVt83nX/eY1bC+Zk0SNULKEa7cAjpulE4Ss4akQRz+4BGM6NMId0tevm+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779469354; c=relaxed/simple;
	bh=pbnbcgcc3DdEYEHVPuwqTxoL/FQMPrU0YzbUVIwLhkM=;
	h=To:Subject:From:Message-Id:Date; b=LbNOr1oFLozQ6etQbFTw/eJpZzUIRfHSLMlpDmJNMV48FIImBv3ocvshzWDyEZ7VOA0ocQfYrjdAIfxhIsJW3o2HkbQax68AnZm/jmDf6vDunIgUBnNHHaI6sO/aoHfqQEWHpCDiYRUb7Um9wfTZU/1tbUDgTv88hG+LnhYHneQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tM0qRxON; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tM0qRxON"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C27F1C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 17:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779469353;
	bh=pbnbcgcc3DdEYEHVPuwqTxoL/FQMPrU0YzbUVIwLhkM=;
	h=To:Subject:From:Date:From;
	b=tM0qRxONFZPOn/BW59xOpCpXMbNwCd7tHUyL/iwtYk0gP2Xc23Ueq7E3KIJ7V9U/N
	 0cqHdyDLiQPibgO2tNMpJGSJ1CheWRIR8bX8CyDrOkMrZ3XXMBwY9jf5XfM4P6W7Ac
	 P673nmlkMDkub5Hun770B+b2jMSkeUd8zQOI0RqRY3lKtcXG78/L7x8pTECOCrqfRK
	 rwv9AYLPmNsqzkAv7zlbYmxWL1JCwsHhqq/nw0PS8dS6ru6MEKza3X9hkzYnmfeapD
	 AJh/msPpxNFDMin0IayMBrnL6RbzDhxnuUbqLyXu//3HHYyGUIvmw591y50MLZGFeT
	 e85YdAR6nHH3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEDACD5BB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 17:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177946935369.911.6459891631110174291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 734048954637ec83f5c39e41ced2d90d22d3175bb2ff34b844407822bd6ef6cc
Date: Fri, 22 May 2026 17:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779469353
