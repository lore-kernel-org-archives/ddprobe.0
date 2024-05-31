Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 632F82595
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 05:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717133063; cv=none; b=Ef1rVTprLo6fvYPr8XToGOICZxR/ARvjricqGRIGRbS+TZgVdngMpqQrQklTDDcOBtCf0apX8CihnBgWCqs3NzSnS7Y6TDNjdaFYe06m7Q6ckeXeXTcLJ1I6GR2o5+bASidu/8H5QLyqorT/2b402zlmosE0H1TIiv8d8wKo22k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717133063; c=relaxed/simple;
	bh=kssrLNliGVexYQvYiajGrSmpI8Luby9rPoX1fPSSvZ8=;
	h=To:Subject:From:Message-Id:Date; b=br+GbfAvTmHJGJidFb27T9U8adpPHmRFGc4c8Hi+ZXiLMmsJmD4VOatUcpyvr/C1mzHa0L7Z+gwWZc6nurSkx4Z6RmguwkeHLZ+aUkiz2q7Pjv0MtZqwW1xIDLJHmMI5MT3xJR7aagSYzUw/Xm3akh71Bilj6B4oRMCTe838lkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZfT2XyZ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZfT2XyZ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23F5C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 05:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717133062;
	bh=kssrLNliGVexYQvYiajGrSmpI8Luby9rPoX1fPSSvZ8=;
	h=To:Subject:From:Date:From;
	b=ZfT2XyZ1nQgzVZSwYT4EhFp11bjVDw5fs14sqi4/D3yxVs26nqmMY0Equ6sX+ss6d
	 kTe7JI6eGlu1ZOM86vaF+kbnKTMVPyd8Fw9HiwoTgz/ZZ2fVRgM33NcyDD15hNWpkL
	 ++UYcpaAYMv7gLVDCWoYBdSLh7X4ocrnnR/C+QcUy+0zSzL7EmFYNxRAOJ4U/CG7sx
	 XD6FKY8CWp9lgn8U1RpX1mV0VKvjrP/AXmWYg6UgSMURniDjuXys+mOfX+BIZXRZH8
	 kkNB/k2TFE3TvhrPgnjQ4/VT4E4zdL8h2cXIF/o4M6BdHEwfmc/1CmLZDKnoRA3Dod
	 G3d8b3fQfaWBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFF3AC25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 05:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171713306276.6138.1825502325225044761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 589bd3146200317748b0a86f33f02a18c10de3ccba3f99c2a4317ad19dd3e8d6
Date: Fri, 31 May 2024 05:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717133062
