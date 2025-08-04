Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5681F1527
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754323794; cv=none; b=BugZPguvPCpvfTnFdFQA4ehoy1iuzfWSu8Lw4q+59CZ6AU1kfOh1XxhYhcvi3wu1yz32JMs9e2hL1BYn9NNZ6jyZJIYbejgqAGLpy1qOryyZf8T0yjpTYg1hYj9Z96BnSAkWUakEJxIxkHNMPA2PgIL4txOSqdbj7kk5uUVqCBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754323794; c=relaxed/simple;
	bh=JgafbLusNA5zhPsM+oZ0AKMzDiXU+rCTIwxf+kN5rUU=;
	h=To:Subject:From:Message-Id:Date; b=q2+Is+fOt/6faAXduH0GoozapME87rG160YtIvlbnsRkeRjaxHx+RATymjvCFmJ9XCeCNq2wxJEh9mrIfRMx6KdCNEiVFJmA4/HtvQF6XTkABeD1dGvBW4aAfm74EgHy/lD6G9+WKxxPWrDZB+cEoSgINHwt2rcVbUlXdXNd7+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Td1dnN3/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Td1dnN3/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F9AC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754323793;
	bh=JgafbLusNA5zhPsM+oZ0AKMzDiXU+rCTIwxf+kN5rUU=;
	h=To:Subject:From:Date:From;
	b=Td1dnN3/gCY29ikVvGmluf1QTgD3ji/9rplbMURkiWNLdZVxRIm3/d98+BE9Ds7ga
	 QJ43N6NpepagK0ElLf4njLBpYNnFVjP3W17Q+Qspcy9CcfIUDucV5bD/mHs2dkzZQB
	 Hfyg3zPnlK+laJ8XlJe1O62WN4fLKYbG/L+Jr3oWH+UZw3bkkngugDhbH5di6SN4yO
	 qpxovgyTW3VK+v9xM7pvZGHxmcF/owBlXbbKTSHDPIbxQjzArOv1bMEE7LDDoZBAyq
	 dUHi4BdVYkgS6ri9mb6UglkwlVtahj8yyPgDxkDQcEq/4Y22jpASLfQVBJOfzgprNO
	 V9wBtoPN+Mabw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF2FC87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175432379358.13653.14136347830725525316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42cd55ec650d99a5a35251b34a64859d4cf4040c68b6dd8cdd9cf1571b8a70ca
Date: Mon, 04 Aug 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754323793
