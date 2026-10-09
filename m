Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC5C146D5A
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791507034; cv=none; b=Q8TNCl1BcG0M1vnUK6Y4Pg8Ddqk5xrx4xsV6uG6iYEW7TcLWJekFO9QTQtCwgjg9jq0c1hicmoxvrHBNRcK9V9uv/QYZyihCypEKVOZm1Y3jrG//ESSwhsr8sh7YZc/lW013zLPjVVJ+eEofk6kYLVn2aESEx6Qe6hUjxrvNLXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791507034; c=relaxed/simple;
	bh=Pcdmvi/pxBb6vNn6QZJwUwpA/uAFJsAedZz8cTd/cYQ=;
	h=To:Subject:From:Message-Id:Date; b=OAz1sl+Y0aIUUXqDTxZ3zEgxZR1f/hy2D1OA1olgc/JHX+8oNqa4bZDpbThYkzoW945Ox6howuIfQTXhIVYzGJYj6dn7x8gHvLyfemx6dAfe0deWrHGH9bPMLNeOBK5B40AFkzk+GFe/eOo3IQpwIBmGwwLwIecNjqIEouDJrqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKZPTN/n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKZPTN/n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3AA3C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791507033;
	bh=Pcdmvi/pxBb6vNn6QZJwUwpA/uAFJsAedZz8cTd/cYQ=;
	h=To:Subject:From:Date:From;
	b=jKZPTN/nJVpVXkoQLPheRAKOnpkNpEoJOgIpy/sAIwTY8WAZC2yy0LaNFfjEQonhE
	 pWqpMDBTL4FynSl+dEww9SWWH450NIC3Bst9BPz1ElTScP8oCnVxvxPgI4kWGrZuAy
	 FDJ0eH/TXc9++Jpd7L0Mb9cDj5Uq4GpM0uCCRqC6keP5ea3fdltD5lb+eXaicnNKmc
	 xmstI7qIAxFX5T8QiIVXfvwmoBnPSuBlCR+UzB+i0dvMP6Q5XN4B3anNcdK77uHdby
	 35bjA75v1JoxbhAeQEJ00PRtPWSEzkhzQxWkq9uOjX3ezCbYSpgzM9abcD4qvuvPHC
	 JpwgKr8V0gc+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB910CA6015
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179150703369.8641.17816075049810376496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80955686afbdc457afcacab69f51a06d24bc78f6cd10d2c38bc5fd34dc362b92
Date: Fri, 09 Oct 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791507033
