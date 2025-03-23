Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 438A22C80
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742702394; cv=none; b=OabjewtO3geVLiKkqKnFc6nQnTZgieijhsXlNhdKv7If2F7Uzq4YH4Rq/PT/M2c0G4YGCOuZHPh7sklqbdQhxBDKrP/CYZiTlMXmf9zQKrH/BS/d2HFsbbbI7pGWVRbBDeEzen83psKA7d5A1+fyUhpDi664/7mDVY8M5HYGUlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742702394; c=relaxed/simple;
	bh=hVhjEi6rffzcHb/Sy4jdVbjfzTjtKvKE/vF/4lwm4bc=;
	h=To:Subject:From:Message-Id:Date; b=bxtZZ7ZAoi0X+Bu3fIhJxvstZHq6cDg7TPwvCwobUhpBPjx8Rr1fvP9EToq1QmNu+hkoRCzdTm0Q/B6QD22M8wNyoFv0tMsEcSrxjYazbwsG4T0s5fiYxdqTyyRO4b5+8ZN7Dlu/8tLrlDiDIaHb23licOfsAtm/KNV6xrOBB54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5m4yT2T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5m4yT2T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B118FC4CEE8
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742702393;
	bh=hVhjEi6rffzcHb/Sy4jdVbjfzTjtKvKE/vF/4lwm4bc=;
	h=To:Subject:From:Date:From;
	b=J5m4yT2TmLPdin/gJs0batk+PFXe71rEI5xCgq1Rgztg5Y1rf2JHSk4kZIFUBh4CJ
	 oAt0C/o/4vHRwNZEKJSexoo949B4rgcVboBIjr8n7/qBefjWBthVLXJGrEc3IW3Bye
	 xwp+Zu+/MXJ1ifSM7gdBtLmsXA+FtxQRYMizFIs3TmEuRkYMdGODkcepR4ZWvDZn7Y
	 4qUO9VPvO3CUV0uG/WYBdLK/hoJqahWZbCWQyIiqRA7S5OfjgeUS/aCIla5R1ezLn3
	 QJ62YvHDhsMH9gHv74OpxOU8VQLMivwaXHK/TSw4NzxJSNZShkvtocJqV9Ful6xp7o
	 /7nvg7QReVutg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97039C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174270239358.3160.10271731438824633615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14a46c29948cd19a4b740da387589cf3234f9ea2ee1f7d8a4663396ef33d93e1
Date: Sun, 23 Mar 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742702393
