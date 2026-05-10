Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C92013777E
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 20:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778445034; cv=none; b=ZWBhChyqh2upexDq61/y4VXxcgb6cn3oB+srhrWzfnEMasFiUlIZXvG6+iglSL7WmnIt7eM/qIbZffTGs3gt9ucLfp2DB8OvE0eAuenwjxMsnebOBCeoWy3/USg+lRcUBvd6yI2iFxnbrzrIzROjenZDjYWyQeoMPdjBffk9zIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778445034; c=relaxed/simple;
	bh=m/XirDb2rZQJQGGLM6CWLsxh37NySLgD6f6yNUBD6nc=;
	h=To:Subject:From:Message-Id:Date; b=QzTphoUJoypAxD2zVyDDXYE5FkblWxOs1oLzQx53ToTfR7nzCILhQZlh7BeZHACjBju0fUVpH4XmShYoFl94Q1xKkDIkyZMxVpBQjxsrara0Gi6932OoMg4MZC3y6ngAzcI0lsb3db74VTMfmLseYoMpB5iWtLQeNqjECKxJfFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EalwJlGT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EalwJlGT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C919FC2BCFA
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778445033;
	bh=m/XirDb2rZQJQGGLM6CWLsxh37NySLgD6f6yNUBD6nc=;
	h=To:Subject:From:Date:From;
	b=EalwJlGTxU8YWdQRcEgIFJE178YEZk2+1vyLQL7fsRWCyzKCufq33XKpLO+fEXbVL
	 kXfgJVml/YXezcV4fEzqq7187vlCLUhLFCiBWb8h0wpP26kQOCcYXtyt0+dI6HD2Zq
	 rrHOXsY5XJCzorinCPdgyzw6oDoy2qjIYJ9NGKsATEKrQX2a5wD4CRMpblJ1zoV/MW
	 RWY/CA/ux8DnfjJIi6DqTmcdVJ8WZ9Qr+fACUgIUqqzHQq8hsawTu+rrWwYsbEoNHn
	 3F8575P6RLUsAZbGOUlBqsnNdoofoyPi7RxKwcumSPaJyfT0PC4KyvSpx7ANU9sBPG
	 eZVviHQ2VCLow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B728DCD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177844503371.31409.13412211369710394466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 279071a4de281ddc456fb87cd95e647f95562aeb54e965a3b7b3ca3bd5f65411
Date: Sun, 10 May 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778445033
