Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CFE633E1
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 03:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714534943; cv=none; b=lzlo0y246ak5mnbDxwJrbKt2ELZzNJNcmY3OtzqcqQ3K/QMhbo91sQAMh6hs5xYwWkCb2X/u7xPbbRMTE66aY0NX65JlN+m8ZybUSj7iuc9YklC4MBta0WveC4eRnrzh8nDf6rngwhq1waGb88fZzDbH9X85RRlV8xwHxCkI0Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714534943; c=relaxed/simple;
	bh=xf/45h4WL3r2+AhGg/ejXG8QyHvIhBnQAMypDXa4Yj8=;
	h=To:Subject:From:Message-Id:Date; b=CNSy6uUC+8AVZIQtfNSaEtVq2eKmo+caKvlQBB7FGPAreRxU7jXy5aHlCWcte+xGYiot56novSOIbpuA7gX7tRr6grsyYH2JUqL9QLCneV80KFHbAJqeu89e75SSUwJsx9gnJzjmbW00PY5ERqFDV3Adm3sn3wW9IL7aNs28mCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hKS8eq40; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hKS8eq40"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD1EFC113CC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 03:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714534942;
	bh=xf/45h4WL3r2+AhGg/ejXG8QyHvIhBnQAMypDXa4Yj8=;
	h=To:Subject:From:Date:From;
	b=hKS8eq40IsPR1EyelRXYAfqnbqARkrFOkkqFdyweqB8iHbMBkCW502NJv5fXG7PmF
	 WNdQlRuQfG7CQ4OVdIdSm0gPIa4fJPy7QTOvdibdrIPZ6JvcoWHfQ/AqIPpo7d9hoM
	 gUTIf90KS7ahKY8Zz214uwmFsuH4367aPXyih0CxYDU+DtHqj7uVJpKifJWiUdX8H9
	 QBR7Px5H1X0pQ5d4JH0DnRhUBjdEHESt6jcTwh1d/3v7EI8ol1n2qKLhCRgw7GIYQi
	 ZKvT0ksKmLGYYaqS1CwRTymsd/0WNEEQv+6ZIA61OZXOuKy4p1jY1mZYu3Rqz8OrdD
	 GzNzVaE160AUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6523C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 03:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171453494279.6678.2836287152128976300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2000a4e01662e6f0683586e7ae4caccddcda879fb79127b8943358d1142141b0
Date: Wed, 01 May 2024 03:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714534942
