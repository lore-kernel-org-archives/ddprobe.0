Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CCAA1E4BE
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 08:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713516563; cv=none; b=kdhkEa4BDjuWs0qotithkWA8RMVeF0DKRu7ycVZUdKMB5qi9MN+BhZINaWll2+EAYJvZ2yphhHyJEd4aVO2vVs8aaMg5Bokc8gJV77KBm6jK5A/jCQRZWKTJkU/t4arnWjFhcuQyA9fKClUX3ZISG61nwwBYGHpjaGIZV2uIHLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713516563; c=relaxed/simple;
	bh=AYps2LonvXuxZX5cMEpk2LDc3peA0OfVuZChcZQxYSs=;
	h=To:Subject:From:Message-Id:Date; b=VtxZNlDKWSiQSVQiftLJLm2lJDrudvtzgNo8Yx5LkDpQefVoOWZ107/wN3q+YDo0L0sNJQYU6SKg5W1IBBSY3E8aoNN/WE4Ih7NXmyFI+vmWxM6kQ7a3+/qFjs9KIlVFlq7Dkd0uCf8KFnzoO93mX5LJ57n6YCWzR0OZY4/vfoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q4OeGLQK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q4OeGLQK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E16ABC072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 08:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713516562;
	bh=AYps2LonvXuxZX5cMEpk2LDc3peA0OfVuZChcZQxYSs=;
	h=To:Subject:From:Date:From;
	b=q4OeGLQKMk7zQWTLOb+9LypgMLel/H9HLUW9E1HckGSqIbG5ajUYqyL4N0T0VEya9
	 40ArW33/lY8nqluc4DqK4elnkdpVNlgKzkWGHm1/qUJdB2It9YFMs8UdQkwui1pmXi
	 CrxXhbwazF9mSk45CrOfLo0zdx5lEpNsKVJ9aA87Q/Au+ZalVwT1C0fM32brs1CO6K
	 GfJrzEwX1jKB5CN0xyp4l/oI71eJPCkwWr1QA0vvrFQGZnVlLdYWCsuOFHf7m2bXHu
	 aRQ4kA7KnXdwOluHqdG8cJKfq2PkYHw2DkoqCTW5RaIg9qFr249GA9iXiZb7uD3jVw
	 NRot4zKWGmhOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE010C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 08:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171351656282.15011.5166883252034263582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 703c05ac1aa52f9c0a15b7850c2cd79a7a67ac67968b35a1eb27ecefb7f88a96
Date: Fri, 19 Apr 2024 08:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713516562
