Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4CEE28CF42
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760002193; cv=none; b=dMLsXkCtky63/cdB8wMITm4IpeitSAUYRr+3e0/V8AL4dCDhXZojAz2m/rEm9+PHz4TCexDZrcjfEOardlgBU/32/z+FTkQgRhjTDxTrAo/NFYIsvUNc6Dr0xmxe856F4mKrSdadZOBlKqC0e9k+qngzUb2EExZg2MxmS61gBs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760002193; c=relaxed/simple;
	bh=pH3jVRJvw9IV/rfVd5xIEKWFm6rlF0N+eBlY/EsMD7U=;
	h=To:Subject:From:Message-Id:Date; b=qixPBnlSOirSWUi4JniP4+7/DhGCJ0T1my9/EktoaVWD7VMlNGZFHV5JeUygvoKaMs9IaZuwzyU8LiqSXbnGY5VZeukuoe4aMlWYbW+AIUyMzWLRTSOAPyHsh4NPP+MWav0AFEMPQx9ZLwwgqFzdjZO1NlQe/CIIrnssJo461ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHiiF4CD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHiiF4CD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33D5C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760002193;
	bh=pH3jVRJvw9IV/rfVd5xIEKWFm6rlF0N+eBlY/EsMD7U=;
	h=To:Subject:From:Date:From;
	b=UHiiF4CD5wmwKXCevHYciiLtUzLX6dzMeCAxBLn8neWkT7FsJmFXvLuYRZiQ6udmJ
	 nNTTOVg5TccdMQLEDuKEI/Y3feLkEQTGP4TJ/uQzQYxKM8zXbg5ZiD2/rxod/b5Mjv
	 NbijBhA+m9i8rOC46iCQY5rI6IzippdvAE0YUZdJEol+9EMzJZgIn5Hb1TWQPdS/ot
	 TI6SRUP3zTyIOLoH4vuEN5mvbX8Xg1LFY5KN0ZhzMOO/6fuB9H/uvxGFenqNC15eGt
	 GOXVrq6xNewceFCw3TAeawAvuNJA/bx434nhwLzG8hu37RZYbTihkLXD1nYQW9F8it
	 vu38WixkAy7Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90937CCA470
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176000219358.11176.10854704161392618296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 505b5e17db22c3cccc5b0bc8d484ae5539f9b01cf6ec58f35986872823e6bc50
Date: Thu, 09 Oct 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760002193
