Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E7F3CB543
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786195834; cv=none; b=otSSElGQqq6ZfIDupco0qavSYeY/FPgNjSYydrbl40uF6g7foKu/iI/7n7yQrOWi/8s28RCWJZGEdEk9RA9zroOaFo7XDQ1WPHjUyWOxiIMrKaS0LtPb3nLFp5grOWqrzBJOEeazDTysN+0JGfqbmh73iDjPVlJ44cTSx6JKJvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786195834; c=relaxed/simple;
	bh=mSTC3lPBRG45gmZ0tqTl07q7aEfSwYc29+suBlLJy4U=;
	h=To:Subject:From:Message-Id:Date; b=GEON5fuUMDvfE5LhwRzQFlZcT/40MMr/2kKecMudhPCZoQX7TAdfAsf6ufsQ4/tzowa5iAv/yHwuBJAJCQmtgZAK3XBqOa6ui5rdLDxHpa5S5+N4JFBLZNR2VNkCZD+2iwSXp2WQroERxqxut+Hud3K4NebfzG7onqT2JVI9GNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=na/53VmO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="na/53VmO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF103C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786195834;
	bh=mSTC3lPBRG45gmZ0tqTl07q7aEfSwYc29+suBlLJy4U=;
	h=To:Subject:From:Date:From;
	b=na/53VmO8MOQpqcbyz7koWHk1vUvpC9Dv31WNwu3H4i+/WjH9oUC5bFDemvwKbwhh
	 Q3tnFYGRtaCZ1fGrw9Ub/kq3T/t3HBd36fgv/1wd24OfdHwwWXY0lyIB0+WT1jj264
	 wEuiZzQ3qps5tXev5smxZq3XZXfSj7PwZanbl6jiYHYgYKcAIPc957ajWsL8TRg4a1
	 lJAKWPxuXUSeHA9RYIiZE3EqIs/+9BiEB+Ck70tBa4Rw2u6QLqiHhSdE4jchBowkCy
	 5KhnJBdIW8JYJeyxVpd7UctXvusJki1HIWfc38kabyLaeD2vazuHiwNTtPsRujbNWr
	 j5agsyxLDUk5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD89C5AC67
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178619583373.4879.9894564046774761680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0526d4a64c9caeb9b8df4974f2598206c6fdbb4116f1494ef9526d8db0b8e391
Date: Sat, 08 Aug 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786195833
