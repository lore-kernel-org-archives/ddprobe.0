Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0973826FD93
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773615294; cv=none; b=t/xkFCIEnSieuYHoTqiI7hdQ26PZ1SDDtZFNTh9W7KWau4rrJ+alLakfgSOl96KM06qcOef8dRjwEgzCou9VCwAjxpffMD59TyF/nDvIax4crc18fFt4sI9N5DnlZIOUqcEQVoLUMcDl3lBD5VMkFNAxjRFoWpbsclkDSjqfNhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773615294; c=relaxed/simple;
	bh=m7vdUD/KZvJW1wLKiunccjRsRv4GkrpWRsEdg3D34CE=;
	h=To:Subject:From:Message-Id:Date; b=cc6ZbEWXGfCs8/p3fYOmurF0qHYXu41mTFw6M/ozcDK6qPy49ETe9U8Fbc+Ha57q/q0N33e3g7g/RHMlvlzP2Jet4/XhUyNtSkWj3JugZ/hoxWXQYFuZOAvnSS4D457Kjm81U1sx6v92IXlMGSHP8akjpPYUxT4Gm+YC1wHgqD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C9uHvlwR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9uHvlwR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6024C2BC9E
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773615293;
	bh=m7vdUD/KZvJW1wLKiunccjRsRv4GkrpWRsEdg3D34CE=;
	h=To:Subject:From:Date:From;
	b=C9uHvlwRB4nVUKQs1UYl82lqnhL+Gnlgky4EGVG4tApaWxiZMz6OXyYdjIteMrvmr
	 LYgjk5iUS32OYFjDa8U2HBOVgomT5Jz5SwqZKQXOliXb+0wfIp0koDcJvrnQIzxxYT
	 lZtIqxHNAp52kE4t2fgYsIGEttvLBcImK0ihWru6SoX8rAlIsrpmgJZLjn7PWYTqVP
	 xLIksbu1qsNnOzYWQvOgIrncS5rzUyLc2fp/1uNT2PphXCAYb1iMDgFO4/TpMiGhuk
	 TlVtQmpafCkTCP5OLuG6+2+WZE7FefgToJHRtzlu4uwIORj9QSaW+a+k2CbnzjRgZL
	 wj/KSwHwbHxXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9474DF30283
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177361529357.30116.10014693924790469099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53e8fcbfd560ad0bc3e6830c4a9ac7992d40a101ac360a55d593ab7c534f8e3f
Date: Sun, 15 Mar 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773615293
