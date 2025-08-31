Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07AD92343B6
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756633794; cv=none; b=NSER35g6m5paLGrzVo4+OHeIGrCbG+uc7Natl3tQwlGmg0tk0F7uyO/8JF1TMv0oL9Pm7vjBJZpVbPN3Wf2k6LIjf31SY/zKBuOjcU64vFQsLmhqZ7ho7q34xhU8piCT6mrS/c+vmpQ8TT5A8rdCztwnZ1fnL4G4+J2aBG/NhQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756633794; c=relaxed/simple;
	bh=VKcP9ltKx/IhfgwRjxLpkOgH1bA8nFWaSoXvMFiH38s=;
	h=To:Subject:From:Message-Id:Date; b=M1nw4QljbbgHf4jUiss6oXMfKyZYzz85YC8NpUPlYv15T5uMc1BHcJZE+KFJvLugg6pDxn6TsCENfR0400Yz7vNove5x5NU1Ieo2jTtieHygZpZ5X+0cmN4qu+w9ZlWjjzfaJv6WtKn3L754sWvB+i1qQK7ERB9xtSWLPkwoG5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+qZPE53; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f+qZPE53"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C42C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756633793;
	bh=VKcP9ltKx/IhfgwRjxLpkOgH1bA8nFWaSoXvMFiH38s=;
	h=To:Subject:From:Date:From;
	b=f+qZPE53RzjQq0KlWDYfjD/U/+Fc8jNP4gTK+dr7Tpg9FJ/6lJyXjmjEICRY1oWX6
	 6EcnQhGzCRFA8q8V7r4UFtJN2sdjJHju1Y1KV2aN0TC6O9XQXZTyfpZEBlLDkz5z1U
	 KO9QiQJtqs1grhFYPDH6j0b8AkGHsfMPqo1Uql1gRriuPOG0+8zLIHeGJR0klSF4OM
	 zE7ncCkP3a7wMhPHx5NG/j9CqrgdFC/3q4/eakCA5q8Hoh0XhihqRkpD0zzzfwo5Xd
	 m+50PBffZsYt6FqusgigroHjXLNfe4KnWNBzXI8ojNtb+N5+p4fD0vScX0PcoiewT5
	 L9TGfjwTE+uaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9205BCA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175663379357.29954.862052072108338488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90203c707b7f76b5a32425066a990c2fd2d64b2881659b0afefb7fa90c0106b3
Date: Sun, 31 Aug 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756633793
