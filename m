Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC9EF2D8791
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 23:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764805973; cv=none; b=RoQGyDVvQw25IqM6DlLZHA2BGHz+PZi1Y1NOBhDnjTu8XUqORbEw79E/GlOxI+8tyRayP9iemL9WXtxwfrFkGfJThNdxaczOy3q7h88Ulq/zb5ayLM7/ZFsTugyoaWtv1KdV2667UbrhG+svLlTNxOiIjPn3bD1er5ARf7h/W4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764805973; c=relaxed/simple;
	bh=et2BWAjHd85BIYQYtg1RI1E05viVKbqclrLLXqGr9vU=;
	h=To:Subject:From:Message-Id:Date; b=BUglntBm0WRRtHbwb9GdzDdeussCSGC9dX11NBypvRdU03/uhR9VXc41SxatllM5lvQ8h8vdH0R0UxFzgJFKESDsbfjgh6OckYfEHVKSHlXlGJbTAjFEENJnUi9LUjyjrFfUskxILRgNVWjmWLC1NW03Dc9NIr2n7xNACGkWERs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UZbqtPfL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZbqtPfL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85D8C4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 23:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764805973;
	bh=et2BWAjHd85BIYQYtg1RI1E05viVKbqclrLLXqGr9vU=;
	h=To:Subject:From:Date:From;
	b=UZbqtPfLn731N0vwmpyhbQMy2ocnKA/V8aEvCsX+xN1iik7Z6GokIYSQWa8wpmBDN
	 cjN8RdLpM9o62MsdS4txSEchR8ct6g2K09LrdCn9/+vkT2671lw/DLpSJA9Aw4KkZN
	 HIy5RbeWqWmbaKc9xgq5sr1YUUJi/960An3/AkIiXSNqYBTE0o4r+yVyFVOVtPk132
	 vNskgN+L034ChRqWDYwFbxsmLFXKjWhwznjUk2FgH5t2lMiTSqlCBaSRG1eCq2qjAY
	 hTO9Bx4iBc6AVOSFWka6itWsLyMG3DnyGk5N1cPaprY5g3pY/Vyz9oUiuOduw0Jug2
	 YGyYlNCaq+fTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9763DD1CDAE
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 23:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176480597358.14987.6835829991309194032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cab9b9bb0ef756e0a1287d765fe1c7aeb628388472d64307e9f4c74c91fd135
Date: Wed, 03 Dec 2025 23:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764805973
