Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0294D270ED2
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762884594; cv=none; b=hupOb2s8xVPi2UbP2ALCN/IQDjjP31wm5fGLd7hLhE4WnKqf0JOEk9Qt6RU1/GMg9tCE3am9VyX2NkXyHNldQ83cKI7xI06ctYt7xjdyrE8ZijK7MPABFw7TQVbsan/h6iWSwy5zEXdgo3n6uAu9jihOCH9FqMK8I7QxMnzOJSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762884594; c=relaxed/simple;
	bh=6vx4Z2fVxdIFS6HA1CuZ91+K41zHUSgvuEG4GQM01YM=;
	h=To:Subject:From:Message-Id:Date; b=N7g52ZplQV5WttS/4TiRx7tlsX0G/ilteShfWVwN4ENa66R1vD+haYBcJBmEtR6TT/HqSr4pR8Nq5HEEVQ16n4pdv/tZJJ2AVA2uzO40/pdYkyHxSE0KCtv+k02nAStpD+lOPfG95LNUejiJbY1fnMWRyJ1OCLb9IXB9JVdu+II=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bbaz4ZC/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bbaz4ZC/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE00C116D0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762884593;
	bh=6vx4Z2fVxdIFS6HA1CuZ91+K41zHUSgvuEG4GQM01YM=;
	h=To:Subject:From:Date:From;
	b=Bbaz4ZC/SqQwHXnBw8NtdWTGs1KsDl1utlxwhX5ykkXRivdWaQkI2MVxbd/XAj8ue
	 1eV6FMfmDFCjyedZCkk7CW4PNPwZOA8txqeUCBb6QvOJMtvXMwm8EWlhCZOst7DTWg
	 kyhzZ0soXWoWNSUBL1criKtDjW8muT36LfxqcFd8pPJnmUDuTqFVU/+jm1/T8OzzkU
	 /hm9cG4zTViv3uYvtnfnAX+pbM09GOyXrQUzerW5FACdvunw1/OwO6DI79lrp/8OsJ
	 RkceRw9zYWTTeI1E0PSOjs5TkC9S3AQOX6F3rYyRW0e42xbLBDJriHSWS2VX0elffN
	 oWYFR3E+0hpCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916BBCCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176288459358.13561.12542680387993114725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d7e71c29612ccc384a39b9bc3b8111e6353063222fb45c891ffc0febad92881
Date: Tue, 11 Nov 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762884593
