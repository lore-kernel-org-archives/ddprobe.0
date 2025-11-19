Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5139E30EF91
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 18:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763577114; cv=none; b=fiQcLyuJ+/v/iRyS22/MOoLp6MRAUKC79JkBbkLE9lqj8M9bcANYcQHFyKbEf3KzZV1blrRIpzHDi0C4ZgB77V3U5Uv8vyo/B6c13qlc/yYqTtrKIx7YFFIL8lbP+SkQ1THzxGLCtT46qCU94DYFwHpE1X1zCD/blqiF4JUS6g4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763577114; c=relaxed/simple;
	bh=DS2D2C0jOYsVyGTsLYmE61p52XU+XeQkIHTnlPYpiEo=;
	h=To:Subject:From:Message-Id:Date; b=K7qjnRwazAFnnbnO+D5UVTRJNJnTKZOsiJ5jDUK0Uz1hosQdwr14agudPsgd9uflTF5JK+Ylvr2ARwT/RT642YrbcbLhX/J3vLYYUL4MAMczeqespkIsuu8+osLiXURQnww3sV99gxtWAhTR88jj2xKMFep8aTTRr+cbXk4yLuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lfzXBj9y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lfzXBj9y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1230C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 18:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763577113;
	bh=DS2D2C0jOYsVyGTsLYmE61p52XU+XeQkIHTnlPYpiEo=;
	h=To:Subject:From:Date:From;
	b=lfzXBj9ydtheoz80vchuTxIGoxyjbllBDGHBRulrnvZoc8xyQ16QoGX3qesJu6YX/
	 DvKfTNXKFcIuI6Af7iau1DtJJHv+PqvDyQIAmHusVYh75lr1Bz7lMK50I7y061pNOr
	 z7TiNPwzVpeEbY7rXAizXBcxObvRiA0rwot4z3g9o7NMoOr0RWBSH4gVCVaZJP6i9X
	 +cBl2tJQatRRkq/gZsZRhk/VkiAUwGQH0TXuaQK9fqFqm0PJAWr209ARyDPnK/Z6lo
	 +/SbQe1iOIbMEVTG7wkwvlH0QHGV7EftoBYV4OYfYr1XqpUIMKildEWKXoR8v0YwnM
	 GvhXIrkBB8GAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F76CF58C4
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 18:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176357711358.8597.7730890702035720157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c78fcab2858930339f938dfc7c7f39b97426adaa0277c2df8ad170f1c3d9de7
Date: Wed, 19 Nov 2025 18:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763577113
