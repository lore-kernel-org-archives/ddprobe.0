Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 601423E959A
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 11:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781264794; cv=none; b=TrOwWAHqiUJYrwOREYLYjRqlcECw2qgMPBA8TrX+Y9Pamo0DbAvH4cC16ZnXW08igNMk6cNv+wNhUI+iSo8jUUJafkVyy48QnZNLwZhirUIUQMg5LPAgPnc6/v6Eu/Spg/ljW5OBoQ+KQOCP2ru/zSLR7dCOb2MSDG09vVjyqjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781264794; c=relaxed/simple;
	bh=JLgmMw8o8qBI+kC4FMzn9UtqVN4SH3pDKSnftyUu8Kw=;
	h=To:Subject:From:Message-Id:Date; b=BxDbFp++C1YGixC52mj5U76Wao3uIvpMIHrrEgEWZAj8ntnrRwgMUXfFoymO9tQYy9DT57lDH4XHVFpDDa5R1o1+mY8MgkqM63ATTikL8JUGdly3pjt2Rm/n82r3auD7SvgBJzlgRapafeOHCTtvzmWeayaQXTAKzxrJSlL4Chk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WJsAysFg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WJsAysFg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C97D6C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 11:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781264793;
	bh=JLgmMw8o8qBI+kC4FMzn9UtqVN4SH3pDKSnftyUu8Kw=;
	h=To:Subject:From:Date:From;
	b=WJsAysFglpD7U7HCmg4ZBYNa0TM2+yMZANJNmWSo0BtcIRAV6RawSkwj1MvNUnKvD
	 zqfm44itOx4uepzOMZ0ICR8mCpHPYNtDKVyCdl7p1nj6DTijk8n9byRQQcJ7RRinAe
	 c7TcXNRQz3Msvp8Bf9rQrj8xDqRbyLqy9xgMfSsL+DeiujNr3DC/bnez/gRggjyuWu
	 pzNMt1XKXFIdsQLviHmxk8hb2LqfX5vuJoBjbTvB1D3RpRJ4qNTsKZcCSKWCSvWXK8
	 7InT+iBO850GbIIQ2Bi/o0L6Wrt03KOEZUGzekYly7dAjoyQtJT3lPZQjSmWp3PsnS
	 CqWAbnS0PYKLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC96ECD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 11:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178126479369.11598.15177067884066511567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed7bba9701737da718466178f95a7b0625b31af6efca9f58577012a3f91cdc4d
Date: Fri, 12 Jun 2026 11:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781264793
