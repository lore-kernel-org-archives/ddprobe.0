Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F63199A2
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 03:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717730243; cv=none; b=rTI39MasW9Se2Yai0Cqpp/qmwftVGfJKfANgfKlsfD0/tEM/h4TyF6QVeV6r/KErQYsxTH7ttucPmGQJGVuT38xdNz33YUccvcw+KHRmM29czwUYcBQgXOqLBa4iJNN6pTtdpnB3KeqzTkUDYlWWYFj/flkcdYmoaC0c9a387Ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717730243; c=relaxed/simple;
	bh=FT2C1M8t14TMhhP28l6LFNvo8DzFoQxRrzcvMac6w8M=;
	h=To:Subject:From:Message-Id:Date; b=QDFzHB3Rf2dOSXrKA/KQycCuZYyafVR4d0jcy64/bmmeNsbTR2zGh+F4NnaItzUdJXnFS2P+nAIIIKTzp29ozlaQ5n1jdEW4/FLysIrfcd/sM+HAbOOcW0/ig0/ImiVqO0boBnw447nWMhu4HrQXQWK++aAKbPSrtTBI8obtlZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQfzl9R+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQfzl9R+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D904FC2BD10
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 03:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717730242;
	bh=FT2C1M8t14TMhhP28l6LFNvo8DzFoQxRrzcvMac6w8M=;
	h=To:Subject:From:Date:From;
	b=JQfzl9R+nqmE9QqSKjC2S/zwqt8vTU/LRZT76hn34UpjgTYaP/HQOc7nSuMhZgHGN
	 0joQcqbS0rpIr6+oAr3bpzTof+Ftw3OmkkeOlLvk6JmKoFNpjR0+Y27r7u6KjEfYQc
	 gvffxaY5pOTGRvX6dtGhzJkoJT4prgLoMZc7SIWy442abY51IXyRa5BJkHS/l2GHhN
	 B7TZhOGB3xlUgKmZ82Q2kcs3c+jXKgU5hitZIl8OiVIHaMs8Q+e6S+MUbC8dslOQqg
	 SI6T0f0Hca4s9i1ARV9n3BBlDzkwOfWpgW36f3Uli27aL89JPro4nZlUF/O1WzM3Mk
	 jltQltR+p1pHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFED6C27C5E
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 03:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171773024277.21389.6279009372948393597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d806bc2cc6fa261835991a01a489c9105c545867f8158919dc9361f57f36f4e
Date: Fri, 07 Jun 2024 03:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717730242
