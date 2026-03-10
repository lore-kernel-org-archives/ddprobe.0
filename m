Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC683859E3
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773148494; cv=none; b=omuslVUHcklEPXxyuf/6a1fzLlxh6/BXCK0iT/IEri5be4OxOMlWcX8MB27LIoawH9Hr1bsUv8y62+MinQvpIkphZxrqxceVe8vagn4utOcpXKVfvldmc1cLaBDH/D4m2mRVpISlErlx9Rs18bvIxYz3tzyERH5DLYrlhXX/jAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773148494; c=relaxed/simple;
	bh=ywlnRsmSzLimtUW+kGcNLIGx04d2elBnbd7FBc6tdHo=;
	h=To:Subject:From:Message-Id:Date; b=TrJZjeV+JrLYO6BVVPIMZQjZJN3QQgcsH4UKNx7jhUqYKl811nvfYdF4XKAnybWY6Hd/Y6KYLjvwzwsGgbQqLU8C9Xph37Elz3c0O5bs8nsdrLuYn56VmroSd7gzDhWvEXfeMRnAMuYYlYPdAX3bMSkF5Ll23Ettl52IiilvcrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fHeB7wnt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fHeB7wnt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECAFC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773148493;
	bh=ywlnRsmSzLimtUW+kGcNLIGx04d2elBnbd7FBc6tdHo=;
	h=To:Subject:From:Date:From;
	b=fHeB7wntvfBHc6JLSAsPyH2LET68otOvmTeI1w4Tu8q14m/5YgolHaXOLKCyUl9NX
	 nV07BZ7BvdtZ4Ok3IiCwXuUVCd57P/KtioNh/2xjRZhYg9QPU5JO5bTr129n8ptS5P
	 innzv+xoQggYBCN6rBkaEYbQbxPJKdf/YgADdwh7f9PGYkev7RLiafHZwraxve5EB8
	 /iWHz+y1qKZA/YHJxQAYhg9/udgSminbvcL/gXunrsLUX/yrf275LTDhRNEcLNzlUA
	 Qrf3aKr9SSvGlCAokDrfFAzKvZiuacvqm+X9/QOcNpGR15AFuk9tWK6NbFjTpej/0R
	 H+kNpOZsrPZvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F27AFD2D79
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177314849357.30499.3632529427345737221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af259e3671765d449e3401e53f01121d916dd186ce06223073fb6b6f20ca46bf
Date: Tue, 10 Mar 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773148493
