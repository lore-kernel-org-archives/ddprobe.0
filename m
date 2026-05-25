Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3300D1DFFD
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 02:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779677554; cv=none; b=MV/4g7glt6qDqJRuEkiIZhZAyFjYKQfReXiN4c1QFo7fCsjSepl4V4vNbfR7A8QkROXu5i1a4wvOb2hG9r8GgSv2fenEGcwYHglaniE0b5O68j2Y+dbcYxLi2h4mnlXjqtxcaIKZVoonIyJYG2RPvE+XpR4lMjffcMiOLFu86b4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779677554; c=relaxed/simple;
	bh=yFH7uLc0TRtD7Ocj7/aPHo+FC0WGghMGcKISJxFWTiw=;
	h=To:Subject:From:Message-Id:Date; b=PrGFoWhJ42uSUeSKM4vtNVD8KPQFE1eMPRF3aWQWKxihbbMZUu12oWWKBQKlqsiUEX0yyjTZccwxKaiAj8dnDU5M+G5YS/fOFE3zIob9mWo5kcK7GcsIBIrBwfKoZ23hxCnj7uhKm0Opw0m5CPHgSOe4SqbHyqV+CqznheyKygs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RzOPeuO7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RzOPeuO7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C008EC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 02:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779677553;
	bh=yFH7uLc0TRtD7Ocj7/aPHo+FC0WGghMGcKISJxFWTiw=;
	h=To:Subject:From:Date:From;
	b=RzOPeuO7jfX6L+laARzNs/fCD/GHyiIDrqvP4ltYVf+DYou7IltSSt+qzvLZO/fKi
	 6AO7Daj+eKxVFQ7lYzTbIqRxHztJbtlSAsl97dJ8vhE5MNXnE2mgSaYcxl1cH9/RK+
	 c6fR1xHNQ5YyntNdXWTele+XHH9d0Nfn56xBB8lf8+lHxUO8/+jppolj2M4ARf+Lxb
	 KNI3TyKBj9qyPMsxQUpNL1G+qyi1myxaZFcl5MOMxbQuNyQ1bT4fKdXg4A6ipNfmbc
	 lQEqonwTl/mlrw/up7KavMojOtEyp6Ydk9pa6x5+H9z492GR2J/HWfRWqQPSotEr9m
	 KR8HATWT3mDpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F29CD4F54
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 02:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177967755368.22402.16381904622792023799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8138b7b7c027ec148708d50e8caf8ef7b4d49dec11f957a8bb636ca9d5dac7bf
Date: Mon, 25 May 2026 02:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779677553
