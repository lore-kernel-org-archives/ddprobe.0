Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E1A822422B
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752090595; cv=none; b=JqrhReiYGkuGr3aYBP+DHQMTqZTikQvkEVAfvSj9EA2hL2+zr1PKVsc69JSEP4LwEnyv1adrSmVW6XqjWKiIhAsTZZlm9GrCaqinGZU5GYSJ4viTDg057szGHcEIJMaHxS+8HtsrzSKhR3tJAq3hxcfMzOyCH1XTElPnB/NE7yE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752090595; c=relaxed/simple;
	bh=XI3Mavkix4Dz/W+oE3TQSeVcosPpe5Yrr+P8TgdZaKs=;
	h=To:Subject:From:Message-Id:Date; b=bv/ivDYm9N+PDlSQSvCqbi5OYNoDgqLPlZXVdhLS07EHHyOEdSCuRPrQJjPGh6sp3qMMKOg0P782LC6NaJ5LO+e9W4un7Es84QBa1xadcr0qoK57002p+9QPq2w+drq2bHXl0POyh7e9QZmh4jKKkdYc85wQ3x56OEJFexn20ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f9FtG/uB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f9FtG/uB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D284C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752090593;
	bh=XI3Mavkix4Dz/W+oE3TQSeVcosPpe5Yrr+P8TgdZaKs=;
	h=To:Subject:From:Date:From;
	b=f9FtG/uBdCRn8PS1VVjRJ7xppNX2KPZGQMRtMyjXFQBPeP11JZbH7tTTlkKsQQDjU
	 7n5PGKE5lRS859gaP2sPVql84Mw1rShDoexZReCzzWK7KhMoeEufB8X6jbP6ufBzJ+
	 JsEqj7etiW4vy9HrXSjy/vgrpaQ3EYo94PM8fV3wc9e7kLPKyZqgqy8ZbU80VdU7V9
	 bZcHyPyezMqkr6zBWLpSrfWIuCJkFyAYjk0CnJwDrkxAmw2t8LRan54l0CCWCNR7w0
	 dpNneOUbEc0429zMGOuVqbP7YUCw++J03blssptvnvAKps3P39uP+mz8LgRbFS64EC
	 oqVPLLCMDpqkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDFAC83F0A
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175209059357.2177.8416135242400637780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b521a2129975a05b8d7869a3ffe30fb9c4db3415b9a726bea687853a31d692c
Date: Wed, 09 Jul 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752090593
