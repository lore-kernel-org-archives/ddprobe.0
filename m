Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61DB3382F3E
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 22:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775428534; cv=none; b=GCB3XlcP7hDQK/YIy7j2qwLOPrmvEsX6F+IoyIHT/OThoD5hcp88ExQJModH7U9vM5SQloEeEV9+JmcveLt6m/KVHGeTs2DlbcEHLgpSMQBeogy9/KnqK1iL/O9h24fuOXYfWDIDRmHUO6+DNBprArRNobcLv8bybibOVVfuKFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775428534; c=relaxed/simple;
	bh=4AYPdje6FyI+3coq1K3fWG8WCgtu87b/rp0uuXRqnlA=;
	h=To:Subject:From:Message-Id:Date; b=mUMa+sYq7rOHBG7FC3g7emVWrS6+h3Z0ARZn5kokHC8HmEba6icP4mNud3/SyGwaDd8vyMc6UG+NoWSnYT0aZktslTRd/sivppwatj44QvFLmJECKDTsHPmOHbCgOBvF9zHixfiqEQ6YXWI0Nf+7q/eqot4+gl+tON/Snz99bEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQcvFEN1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQcvFEN1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB83CC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 22:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775428533;
	bh=4AYPdje6FyI+3coq1K3fWG8WCgtu87b/rp0uuXRqnlA=;
	h=To:Subject:From:Date:From;
	b=nQcvFEN1iAXN+U0XH0AZP5hw/t9svFE6fMeQ7/2J7JEkph6avq0R6r4ydNr/2ot12
	 RFSJs2+9+5kThhnrO2OnWX49rsBXavRSNCKD1N/dCcdmmIAC+/yjqDjGHshftbPNgM
	 159tXsoQ3WHWg49bMUKqyVcKBFf7VnAgMpmHTqO8KhNTXu6WGus9eYrmY7Ostza+xf
	 FuYkRLqHh5qDDuMIj6lCc60YOnIF73P3cPzqsVPsJSiTcT0qOmsGb/XMPMz//ANAgs
	 uGWlczPkhR4fizfa/9IEfs0O9qknWImTzYHiFz8mVCenANCOhD3fjb4cyNHW8etQpf
	 m3MN0rl+eNzGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC144E9D824
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 22:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177542853369.19827.18028965991675716835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c045689a8ad7133e25467fe5e4e25c0ee1d1e2cff4baff2b6396cf06d28d30c4
Date: Sun, 05 Apr 2026 22:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775428533
