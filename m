Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3429820B7EC
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755875994; cv=none; b=OnFlhZrr7cyWqeJMcRYS/x4BRRtX5wO9TDuJ8t5Kxs3br19Z9/2+bs9U27kNryuh1umH2nxulMNaOl2sBa4vAplKcCm2aDaRjtYcNDN5I/ZOvATFgajKPvXReVflOIo1QSdmjXm6au/ZGkw1v+ghQ32wqZ/08viJaErMwF5HdyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755875994; c=relaxed/simple;
	bh=AkAsqaEvpzqqXuqXVQkVoY6DR/Rod07XNenj93nSBaY=;
	h=To:Subject:From:Message-Id:Date; b=UOH5pBdHcgYktIyzI/dOxEhsiaqYd1h3DOjTTFu1Uh1BCLCcLZV3BDyF/r/f0xp9RaiqnBR5y5b8kubwKfhCPB+5PaE+hTYHmGw+L4cu17XDLit7v4Ec0M6rk7weac3TFj+q/rm7E0voeGEfo/9Cr0hZt3d4o75d4P7Cl450Umc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXXaV9Ow; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXXaV9Ow"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A208BC113CF
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755875993;
	bh=AkAsqaEvpzqqXuqXVQkVoY6DR/Rod07XNenj93nSBaY=;
	h=To:Subject:From:Date:From;
	b=kXXaV9Owk9Zw5nULJzd5CgJOeEpyuMmq74P646dxUL6RyU6pTG/B7ufF0rOZAlWao
	 fg0mA+M6L7aPRfAXMkV4uEOycl68r9lHJ6nHyJ82m1nUPG/5sab/M1T8Jjx3ubvwgr
	 FPDhK1TBWcgnuGe2dWj+OKAKHakaFEPBNsX/h6EHYjlgVHgRltscBuLkYgUK/yDSP1
	 XQdEF4+CsnzMJ+4TaX5hYN6TaX6sOPpgTCU1KEh9HmxnSRVSSZmXezFdfAiwXOVyan
	 9mV+QTK/tN/JTnkaYi9Ti6FsqdH++ADtfSeUtM95V++c1o0LWqB0WijNAAoezpJ9Zj
	 7+TQpJzxARnww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE25CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175587599358.1618.15102399923439661973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d34624e1c73019ab9fb74ca5149c764a6c6369b69d0dc6a9c1491813d1ef542f
Date: Fri, 22 Aug 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755875993
