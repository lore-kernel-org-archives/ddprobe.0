Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24A1B78F3A
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752904794; cv=none; b=WqC6AJOBvLZHl35+erLjsfivw9i4YWb5fZNup+0/ERu0pXahNG3vWPsyjg4mtqpIiIYiEs88FyA4iymSIvfJX2eyPYrLTdr89mtVN8kGs9lI8pYgcmzfvzMgCxXQl42P2QRKKPmKXlg2KF8+TJ9+3NoMknPBHje5m0nUtYPnG5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752904794; c=relaxed/simple;
	bh=hKBGfZRB5jk3YeX+HtyIWbC2kyoCIxAYF3PUqQH9Y5g=;
	h=To:Subject:From:Message-Id:Date; b=bt+FoaJ8Vle33kLccRqS+pf7iA5+DFTHoCXnnfitvV1nDmUjYXfYRLvJU4v3PBFib5tdEI3B6GivqUbn7vsW2SiZXLhPvz/gm3mDyjVt77AVddTIklmfIa8SOv5q42IS3nI47uOAA26vwifNpm20OGFEjapJgxvgLCJ0G2hOG90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1FEP6Wm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1FEP6Wm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A966FC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752904793;
	bh=hKBGfZRB5jk3YeX+HtyIWbC2kyoCIxAYF3PUqQH9Y5g=;
	h=To:Subject:From:Date:From;
	b=B1FEP6Wm07Q5kbyW6lCLQU7QF8HbFwHfx+zQZwnh/Bqq144T+R8PN9Ydh+MaiKKQc
	 kwNntSw43mhRO0Td2yDlNQVj2JqoCBDQow38elHCFD0/J7o1pCLQM2ZYha6brbCtYn
	 pOXrxkRSAHz5lk50toI3h8WuhAznKUjvJ4TCxU7uk6zpYOs1IhLv0PttNOK1YKa73n
	 YqDSRyILlEuEKtP4DRLnNIpc9F6lUucRUEBvJh+tNZNugUx/Xeja66WOEvo4QX+Naq
	 ZLotUJ1FwQ4FwJhZkXjmjZ5pOSzWs/cqeFVyYTSrrwx8NEsKrHbqIvEtu8hLuXgrTo
	 0ovGx//Hbvi8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D3BC83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175290479357.10555.6598238131130614677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 735252c6c595f4e9134f58d4ea0f0205ffa35f90ffa0e59354e440697b510ea1
Date: Sat, 19 Jul 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752904793
