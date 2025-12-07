Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E101F8691
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 01:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765072374; cv=none; b=IN9gF+zSBN+7taxuAwo70nyraoidfVZvklJO66fWo8vpeUVmaCxnklTAbkihM9yg/fGt7ux/dgtCGZAuK+6ip4Y2LQvWKsJCplT5aIC2DQAKADuYqNtTfwwX1PPXLkHGRvgfU/dPM9scLwrjG6HZca5m5S0d1Wq0eHGbP7C2zrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765072374; c=relaxed/simple;
	bh=YMP1qrqbDfWXZ2auQrPbYm0w90jUhmwqIeEOhppK1QQ=;
	h=To:Subject:From:Message-Id:Date; b=GXLCZuTA1u09Ezx7Y4AEskbyGjnDPL0gBgcxId+/tH5/slXsXPCKQcDKy8on8LC01jluJ+fWqejNT5pxFr3dsbFjmyr3zS2n+JCmHI7LyKsfEmHDemzTOYQjMBOP6CSNcrojRi4U3lqgBme0y1y06czRCSf7t6A1ASJddBv7Wzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MwUnPir7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MwUnPir7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47B4C4CEF5
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 01:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765072373;
	bh=YMP1qrqbDfWXZ2auQrPbYm0w90jUhmwqIeEOhppK1QQ=;
	h=To:Subject:From:Date:From;
	b=MwUnPir7hzga28SZY8bhb01jKfPfYgp1VsuDSQkF1zE7OeaogElxw0Hj5H+1XIelK
	 cs6UcvEHDad65L07xTXPl8huaF/mG/tssT1NKYOLP10hkJYXBX3YqqnUtsMxy4VGvH
	 /4o3xW1If71OIH9OxJb5yMu4PpjhDkp1XIYAT8XzJ3CIAFX7KzF2hdFOXikAJtOro+
	 +JMS267w9x4desIq4u8TyQsGebpKp3+fBXzhzUSp1+y11cZT/CU1O1Zkv40M4oJ94z
	 +s4SO455Lr8tbiql0pNNebpmgOlfB9LYDH+dGtUvBQohpN2b4rtq/ZtFu1cuHhLLQ/
	 E/bxZ3STR6FTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94187D3B7E1
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 01:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176507237358.2682.13183837084594572176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fec8dff9427f3d2a90efbe6bad1c4399ea6c83378520b296678deefef83404c
Date: Sun, 07 Dec 2025 01:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765072373
