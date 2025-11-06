Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1907B347DD
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762398594; cv=none; b=dHok/BqFVkBthUYC8TaJWYybYLCKmHtTJNU/jct7EgNtKwDtx1yPvXYfzhxSecyeBRlTRTDohsaM8Qx0BaawqEgQ5q5GIKe6oP/EqDZR+LOD2Mo8NrZ1ChcKE55/Wbz7VIs5HdMkYlikjS94939YLT6Q18Xgr9Y4fnpimS88WFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762398594; c=relaxed/simple;
	bh=bLGOIt/Loex2iQZuN5zzS5Pt2fiH/Vkc44ItklXdBBM=;
	h=To:Subject:From:Message-Id:Date; b=r+eBRuYpMWjEWN8eOMVgIkq/m1ru9nZBCvRS6pIHBEjUv1tQBfqeR5Ub3tl8BDWIo4X4j82Ox3GVaGkTRmwQtDsy++0mZCuM6UU2Fdv+k5SCWeuakwsujtC6fu4n75jCP5J1+H8ywLD/5qt3+zqO/FxushsaWadWom0GfJJdtNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPZ3N1AJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPZ3N1AJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BCBDC4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762398593;
	bh=bLGOIt/Loex2iQZuN5zzS5Pt2fiH/Vkc44ItklXdBBM=;
	h=To:Subject:From:Date:From;
	b=XPZ3N1AJPpkJuplCgX14J4a4Z6Hc17DQZkberGY1FzZET5fmWwMOs3GM1BTlzeR/b
	 devHuBKoddU/rvw75WqsYBJ89X+3pNY+RPZPCs698i/8AwUrLtd1veyEcU7sNcGFRT
	 ycFDMWhMZCbSFMPwQNjbhYMuCk17AA3cYxe1ppT+ENjd0LE67/b7GTtWSVC/Zp9IXU
	 CtLzIIpeCJ8ybPjfRs6WglHTu4+TPeIalE4m9FUrj6EPGL3LZeEG8QJaQbj7J/iX+i
	 rGB+JtH53dZQB6dl37HDu5EFy9JLXGma4EigIVVxZsxRoNX4xGcjRJeRif83aLPlwS
	 stR4diAfpEUTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F96DCCFA0D
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176239859358.30609.12484261532659657067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6bcd2ea2c1e3eec0fd7c97134d6ab3cfc9817eb6aa90140006d517d7ee3eab1
Date: Thu, 06 Nov 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762398593
