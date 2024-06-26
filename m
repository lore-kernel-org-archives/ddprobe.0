Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E33535BF
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 03:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719372803; cv=none; b=Oa6QmpJaJzCr5l134+wypHcB3C3LxTCg2y6qUHrJLQIubqsXMkJxOKSVzMzwIIEyy8/Zkh2DiAzqx1dews+YMdRBKYfQy57Ho0vhu6iYAe+Dqschkwye2B/fp2OOZP29m2wIBbEy5mu1MWRq9j1PjVl/hCHwOHQQ5cCkL4pQ7kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719372803; c=relaxed/simple;
	bh=A6u1IhOsySMphD9XMjHOHFFgbOBi9c1q4HI0P589EgA=;
	h=To:Subject:From:Message-Id:Date; b=YJ5qKdDsVen+Rm0o3B1Q//wmBz6ZKoYvr25p/UNja4xcCnScvbUmNzHellCb0mHVU0tnxh48PCuYlV02AluHM43kh8JVhP3IwGgfKhI1VY+GTK4Cv/2kubtFbwEtgv5h9G37fufBxjRXn5GzZ+QmndPOFBrWp4hNYwi0pi5MMuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L9mjGsyI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L9mjGsyI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF48BC32782
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 03:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719372802;
	bh=A6u1IhOsySMphD9XMjHOHFFgbOBi9c1q4HI0P589EgA=;
	h=To:Subject:From:Date:From;
	b=L9mjGsyI+t0fEnIWYIY7EVvmnzrovEzNU54CtT0pHBzhaL0K9u4cvNLnJb8Cf7vGt
	 +mAq5VpoGHtmMnnyWVxXahgVD1ZruK95xhK3R7slUgk/3aKPnpQMVjR5oEJy3QSCOF
	 S8/n9Hx5E1qw9bhgLnlQ9oFaYz/g+Bf94Kly8cKKvqbOcPArrqIWzVcXBXiE/QaPHO
	 +YVxAvBCsdCBlL0bhfenFl9VbfUdLtfhMDt3HiDGPny7sawznXME41sF98LHGh04lt
	 vaxGQ4v3puvzDwbHexfmFDVr4YSmI3HRfx9YfZgWqM10+rkBLVWR8WuA99+3uuVX2h
	 WA4XDFzy+T9Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD529C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 03:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171937280276.28743.15349963952838320317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4bbb2220e1de4eb244d0c0f7832cb17d274b7b52a5c3c781491ec75b716c694
Date: Wed, 26 Jun 2024 03:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719372802
