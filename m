Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531143C3438
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791933634; cv=none; b=IW4T1YcCrX1fBzYVcLQfvZFlsGQePsTClpwDzNNsGjocz+J1qgi/NF2G+VnHYq1ZbfiE+VM/r6zxRGjOaJTQY5u1qOQV+/78LK/lyBkz4q1YNo7+A6xnP2P9QGHfRCyXbivhED4iIxG61yJJ3NU6nCWzUzP0W7+ws1vd2bF4RRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791933634; c=relaxed/simple;
	bh=3jcltzvGcp8L3g9cqJnNKwgpbWiig++GRt3gfB9GIuk=;
	h=To:Subject:From:Message-Id:Date; b=kw8WTQg2nA/3nWzJctxEhhnu7UjBfhXfDgvGBnLwIHw+ZSiqXJB0neP3eXEY2M1RxCwH33zK5u7LfM/ofMt7oyYKkWfG5x6moKY1tf0AwK5OBI8+J2Ez+E7rhIv5GcSXecxohMgpd9qrNzJegxgs47NwSVOkcHnNi1XxWddFB3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNecd3cG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNecd3cG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5CC4C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791933633;
	bh=3jcltzvGcp8L3g9cqJnNKwgpbWiig++GRt3gfB9GIuk=;
	h=To:Subject:From:Date:From;
	b=tNecd3cG4aDcm+rSjdpReRDOxTAKQD6bRg8lhSIn1jUKaG2gfeMHz4FKVi10OGoUO
	 G8KbMa56t8DJbFC3BEBSm1woEV98A+BYph9DSvEKG3W03DAr9fddjEEFX5tlZkfHto
	 KLxipr4rjqNXSDHu574oYBCbd+K9LAV66bzC4vAjk2zxOFECJX8JZNA3SmBC29j46R
	 PVxp8BItXAeJYyU5DvW1tPsSb/WPekqXi0NYCAOidZMJcpj034Bl5OcbqoaJJNC1Cl
	 aNVdiSeaa6PhTScOtQXqxru/0W8Qj2FSxopgTPVo23qT9RnhbLV5KMpzooSARuXa8i
	 5/aV3HSEwgv3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B25D9CC6B15
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179193363369.27128.10529320115248707852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d183e281c5ca4df167c4a221b68b3b9e821c82fe94de588e50a7a7c071e0aeb
Date: Tue, 13 Oct 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791933633
