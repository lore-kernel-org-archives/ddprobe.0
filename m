Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8921A2550
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733799354; cv=none; b=hY8BlAUEk+5iYo+rJujm+WmB0GcUiKr60I/heZ7HJbCjXb/qyyG+vGR9UwlS3LyNjXWUq2BwRSbHcvSSTctSf+MXMk5PAPYN+3t19BV37XhCIDPl4McpwENMEJGu6yGAyWiGHkwpKiJKANaJBKFYjgkOjKCPm+WI6d9uttRBmxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733799354; c=relaxed/simple;
	bh=RGnZ/EzAeiGXjBNVyqkEhut56kswhACfM3fPXrJJzYw=;
	h=To:Subject:From:Message-Id:Date; b=Gq8E1vNeK53GSPq2Wv+rC4uTnot4iPDamoZSnvrxPtauSEF+huvDkkbtZx6ime99wDhn3PgnjL0KhuX4HWANeLE0ffXpGUwAXC5xM4VsdQ0O7HNwXYymml2BoataRUejqPwnQLTlGM3hX76HW7jKqf/3NRunK4QwFmxryqGI1OI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OqeJyjk9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OqeJyjk9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC070C4CED1
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733799353;
	bh=RGnZ/EzAeiGXjBNVyqkEhut56kswhACfM3fPXrJJzYw=;
	h=To:Subject:From:Date:From;
	b=OqeJyjk9mDkICF/JVrjIroAO9Pl4/IM2ytfN+5x60Xm6YqZzYRY3J1j9hbp9XdKtg
	 ShF8GpUc/T562nyWh6tNQVOGZ+nm8v8v6kXsDKIICzu6/+KXnZ4fL0wR4cJ8pJYzBl
	 TdTXzJrQ72HUKu6n5X3n6G/kpF2oUDvANl8/hIUIDXMvMMhIvtkrR1U5zFLekZfPUP
	 otf73QLRlnqNSoTgC3ud8bwsO4ovMeBNwZHd8hIi/U7svW8odap9KtEpaVge0iUg1N
	 lLeldKT/hQt7Jde32Hgej2oCTVOKY6HdecYGfVwJy1q83VBgzBlL8qEpNuX8B/p42K
	 NFamFq9AXgg7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946B8E7717D
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173379935359.24172.13549503763336741273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 850ba96d078739dd7600c8e11f9b58f206174c0bc3033c7fd933650b29223b71
Date: Tue, 10 Dec 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733799353
