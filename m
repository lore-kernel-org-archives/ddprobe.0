Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A634DDCD
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 14:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741444134; cv=none; b=BK3DlZf+mNLtSiNsqP4A6lROl5eZfi6GTyyTOpiQe2hdU8wRxH7Snk3m6e8QueuyiA1WmPALzhiklHMHDSCK/sL6lIU5+XhJ2M0xSPOkr7MAsR0+tTd/S9D3iHO0NFqtYElJzJBcpX8xJzRMGWCd6/F/mUrXuCC7K5ctgnFQSe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741444134; c=relaxed/simple;
	bh=Pc2u9a/2W30QTWs7//m1BGBm9sJK2yNvEUsZgc+54Mw=;
	h=To:Subject:From:Message-Id:Date; b=jGgBobWnb1KovjgLwnmaaY9xji9I4pLwWrgK4rqGFwrJR3XbHDCbZnIRoG4Cz/AaNX7+8TESJHjt/OlDr2OlxWt63Okf1KbpnoTHpzxLK/xZQcvXipU+bF1/4vddioCw6N70zZnHeT+XBOK1kMHkPQoRxLdY1zeex0HWqteB7RQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xe7I0lk2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xe7I0lk2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFCE5C4CEE5
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 14:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741444133;
	bh=Pc2u9a/2W30QTWs7//m1BGBm9sJK2yNvEUsZgc+54Mw=;
	h=To:Subject:From:Date:From;
	b=Xe7I0lk2F5Rt04NnUfm/T8vsmTbK300MG3lxhqu+HU4qUdZkX8GrIePPmoL2lqgK0
	 GCoi5CA8npGvuvnIFfrZ5PPatmq2z67BSzdUUc4BLw/Jzf7gl7VDp2iI4N09knsoP+
	 ISoWDcCtkKcvwZVepj/qhroR6sTJDfSqSspi4DK0LcM/grN1oW2N8vl8gJU9i1+xLt
	 pH3skj4SxNJS8y/C2GhxK1xK8ZoPmcFdt9qCEYQMNQBuLCqlXo9Jw/BC0r94Uvw8DZ
	 Ivt7HHOcA1A0O0DhepKZtb8eeRv5R3MtQrIAeyQnbKWWWMtCdTGPnADKdEP+58EhCN
	 Xf73WpjqxarkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EC2C28B25
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 14:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174144413361.26997.9991558017173515313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d678ecda1c79b8dcc6ac9e0fdce561b13546288b2f0234430def15b9bf6bb11
Date: Sat, 08 Mar 2025 14:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741444133
