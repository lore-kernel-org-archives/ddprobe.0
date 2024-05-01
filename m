Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175C112BEBE
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 13:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714569143; cv=none; b=EdQOwMWOhq3xaCPOvO24faaGTw0p2xO8Ig3uGWKd2qS5g2VspyV5TK3UGg0AoJzXC6OR+XZ2j8HdOSVadcGr/5XzAKydKf4MwQepn99nqrhMz/LIzoqYrkrMG4GDhPKE9hUsOQMSjH1gI3y20efVNm1yiF80JV6KFGsvhcl1gCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714569143; c=relaxed/simple;
	bh=233d5o+SszNbGHxA6sBDwCbq2A5xmWrOIdcYIE1sZZ0=;
	h=To:Subject:From:Message-Id:Date; b=OZuKZxCBPS1U8sLz2gnbRgbtmNOfRYyHt8BFZdCYdgVR7NOlaqxVexeoWJ0PM2tqVg4fruI1CriZrxLjX3etyyFHyBdbElK2FBSAA6EZc9pFLCPeO7fkT0D716kkAC251R5J1LI7SCe9f8krHt9KAU1XzYm9sPTRoDorjSZXoRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ew5cTFFD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ew5cTFFD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19EAC113CC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 13:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714569142;
	bh=233d5o+SszNbGHxA6sBDwCbq2A5xmWrOIdcYIE1sZZ0=;
	h=To:Subject:From:Date:From;
	b=Ew5cTFFDnA8WJrKqp+dvrKGcS7f4GKln5P0c5jPpkWjXWjOcrBFylIWB4/cQ40iwl
	 vP17rS1WF15ORA1Z0m3cloFVOObv7J5L/KB+ECCd+8JKHk9GAWT2lrt+rgHP0bV2gX
	 J86BjMySc/mz1oG7fpufMpJcnTcRY5PYIZrooWXyahASe471kx/JMwEUrGsrpf+Z0H
	 mMWwU7Pcp9iow1vEMAqJyIuOBWHH1pgU+cu8xOZxTVbcjyAj65cKg7NBephZgTVBcU
	 8Jd6L/VpJuUJ2fr8gLnvjOMk/Q4WudxTVTfxW/GeX0XtP9sMQ3h9H1bm4adzJtz8mO
	 QkY3uldhQeuFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2768C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 13:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171456914275.28408.18254335572122114406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4863df06d60b4ca0a21ad1188e7985f66f8ef9f912a2d0ac2ffcdcf232b64daf
Date: Wed, 01 May 2024 13:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714569142
