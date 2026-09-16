Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC556385D94
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789524034; cv=none; b=GTGomaYz+baGHaUvvWMQw5XWBmvWrH5fNPvKj5c1uq9am3EU0CtA3nY43MZUTCxCjBbmUJPc0iRH1SrrGQY9Tn+Fj1A4UU1v33HKSiMxi2gfVIxvgrarIvCjIJ1866stXhgmYeeOv2L+0mu7pM1hYTu99AypIoDR27qkzHIDnBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789524034; c=relaxed/simple;
	bh=6+AObHmc3kBuj6eX4cxP064fH3qU68Lxh+8+KQzY1WM=;
	h=To:Subject:From:Message-Id:Date; b=FXANjf5qBd48IVsbKcB42ksKDdkISVdKV+D8uFqc7zwSaOi3WJ+14+sEd4CovYFj5Cy9zUb4F3P3STKsNhaSAhwJRmGWY/bR+4bvpLfZnZA8ZYVxmx2L87yAHxWhg74eWTINhDyUYPc+aVzevHCtQESzg1dXjIRV0it5bnWN7wg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jwo4jCzB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jwo4jCzB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB7BC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789524033;
	bh=6+AObHmc3kBuj6eX4cxP064fH3qU68Lxh+8+KQzY1WM=;
	h=To:Subject:From:Date:From;
	b=Jwo4jCzBxWW3RLquP6Ehdt6M9clqsgiWFXXuUCnwHk7JYCOdbVyW4Fn5ZeeJQCnyZ
	 eLFZYHkQ8DeG1hBGJpELrYVZ/RBjax11+On4A6XsJjUjEupjn6RMmJ7gRSZ4xkgw8T
	 7WNMd9sOqPzQ/+e4W2vMaxf3fIiMVBRWz1wgZiR9zS8BfOoUrFary5L4o4DrrGRmJA
	 dqbWZmEqJiK7lK53B8yQGwSC/CcxhjlB0YjsuUJ/cfvGDnIcWRME3KpJTSqvrZJKQZ
	 0Io01G3EtE3LHU30obgRGuUym9n/E2LBM/mlce/oaBSY912h3GDCGjjHj4eZlaTN9c
	 SiwbxionJP46g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9347C88E75
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178952403368.9730.4973261406744424043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac5ab02b518c07740fe23c4c7c14364ca7ec277f3c8d570c95561da80c3b4178
Date: Wed, 16 Sep 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789524033
