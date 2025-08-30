Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102AC30CDA5
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756520396; cv=none; b=eRUrO5K0WVAYzjMzRK0qBatDo6XIk62wCbvvZjYqEu81fLEkyghbqWkZ0GfLd8W3z29EVLUprChL35kZEooZ5NbAPkWSzznmH5eAEP2G6388Y9FWoLIKhKR/ptm7XcHyjccOUK2EdQWJbBJOpe4U+ntMZgpDtCzWb0S6D4hHHZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756520396; c=relaxed/simple;
	bh=y9iFIyH+pFr/xYhDkwF42F2181Vkhd8Ajh8c+sFLNGk=;
	h=To:Subject:From:Message-Id:Date; b=C0GuN6ibFYrc0OmpxrkW6E9zq+xEE3GrpvFPpqjRyrJVkVic3QsdZ67OkVlvREezF6mN/9Fd+AfPiYJYiOV28UnaHxYHFzcQqvIxDu0lWMzUDQgpGfIQEOL37kpM5BM4UC7ib4FTNEaevO6r9majppHGlEfZlBofmZP/PbDdVMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KTKVA3gR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KTKVA3gR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AE2C4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756520393;
	bh=y9iFIyH+pFr/xYhDkwF42F2181Vkhd8Ajh8c+sFLNGk=;
	h=To:Subject:From:Date:From;
	b=KTKVA3gREqe8PODhiLiQzS0Ttt/U2ftc7tA6T7uCnVSaUnLuS9GQYbTz1J6Jkgg7L
	 8vzGnWfG0ou3x0kLxhmFWRX+KWSd6AC8ae5UzCSKpgOoqnUgxN0nUrHyp7dZJUmxtK
	 7sVfe0r4u12+MB2bwXvb2YwCMJy4RJCzZr6p6QN/QgXthLhAwA5HU0ZbRia2aO4nqk
	 YVO5aOJIX1AiYqVOs5s6b6oQuYS8pChDiiH0gq2AN2/9vBrwxPYE1ZoXZH36Pxe6WA
	 jvLeaS/izmX6yNpfYdoIqPSQke5qukBTjeISdbC+TKQ/zwxB/6HgA9krQzAS0EXkf4
	 AtnJ9dJtJMF0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97AF4CA0FF9
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175652039357.13160.12364920650655950161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97341f15c6c7236ad6bb10283835ae1b326a05614211d18ffafb94cbece5c72b
Date: Sat, 30 Aug 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756520393
