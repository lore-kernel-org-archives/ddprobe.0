Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CBC21CFA2
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787443234; cv=none; b=GQuMSrItZKcb3ZVB8K3D2g3K+yBk900cDD4L2Yg9yiA3bv0wOu0cGYOUU2oUPrXQR0pHvGm38miHRNBUkHuW7EwRDCq4XsHLxdfng5qEdj9OgNyx5os+FXR3cHB0o2Xt4tbZsD3sH/HONOKGRZzl0vfkP/pdfLdWv6suUe9L4Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787443234; c=relaxed/simple;
	bh=LpyurZMpa/O+GdUWA4Kb3ezgqMd20pFK1TeQ0B5uNzs=;
	h=To:Subject:From:Message-Id:Date; b=gQg/oE8tvaCvu/1OSuQWJZgazbFAvWLLkXKr8xLXaO+BEhsI7PGQ6ifaRyBK+7Mp3pQugSHPytseu2ln2M/1Jv4Z5TS1N11BnXLQTjAr5dMCbtax0GeVtqca45twRdmQczHF1tZ88vF4M2hFNj+oHYCWX78HRU20K46goTNi03I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fcgzmA1t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fcgzmA1t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA5EC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787443233;
	bh=LpyurZMpa/O+GdUWA4Kb3ezgqMd20pFK1TeQ0B5uNzs=;
	h=To:Subject:From:Date:From;
	b=fcgzmA1tINj7RzLYeXCqfsKvtdTExjS9QXeeOFDm/XzNRREFQZhPD49igb1Mhaavo
	 GOA6oH0claDmA4QLx0yUTH//vuZZxOpNKqCuUyjySfbSQo/rTuq/+slPEVkV+f2kBY
	 Oss8vEe+R5TLpzi3boPFAHq73WIrWWm0yyNAnkhmWIklW9lhmdEofQUvuczyEYhBqo
	 3aZ/k1l4qetp6qHheSKo7Mr5FTeFEp96c2Ou/tKwv/zu5WM5sYRH7uSLeLJspkEUWG
	 uTg6iaKp0bN7SV6L+PLR/HifP62dj5ykWg1zd+TqdwgogaFeQec4r0MbMWtesrN2WG
	 4BGx1BKEHUPMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B265DC5DF97
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178744323369.29549.3567827812631242252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68c1e7b2e346ff3c6d3ff18e4105a655f8b2f3fb21df96fd64c4a60bbf413d07
Date: Sun, 23 Aug 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787443233
