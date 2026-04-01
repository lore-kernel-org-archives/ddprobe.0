Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA33370D45
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 12:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775045734; cv=none; b=A55cJLeBLGN9MXdHSZR7RUNZWuOtLFOboVlzspOshS2RN4MUgdlN7V1793F0C3DqzQmKMub/7Thj7TQTaR/Zsy8c3oPPyM3eBqqbzvtQGHzBy1x5PXj7kVY1WnhOmijOW8DNJv5Px5+V0CdJ3JlhGPGpElqJmjr+SJv36QtUd2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775045734; c=relaxed/simple;
	bh=bheXmFqDikawGAgkAKY4/T8wSvXlcb15VLU8aIQdzR4=;
	h=To:Subject:From:Message-Id:Date; b=J9bpiijo/QjPVq1b41u1x/fnhxel2eVll33wwK3ZRBIKkUlwTPjB2tVJn8yee0/zOF1V/PR2LSEEhY6Q7lnWjvnug2gxXTV9OMeBBKz+YfkRg3OHLH4XhZGGvQ0QiMOn1WhhNzSZIl6Gnycow0nyFXd4Qc+m7L3MKiHjDGd2yfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eQpvgpIa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eQpvgpIa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE2C3C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 12:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775045733;
	bh=bheXmFqDikawGAgkAKY4/T8wSvXlcb15VLU8aIQdzR4=;
	h=To:Subject:From:Date:From;
	b=eQpvgpIat19sYoGyTIjAGdDoyfeM9Rpc8jNXcNp54+uuBSLVE/yI8CfTPvavx6Po5
	 Xc8ky+DBbosUvH/pR3675LLgW/aTqlqDXPug++TK0+QCuviqetjOcJmgpU1kmMzU1w
	 ta75C13T+irDlYpYgIycTgztaBiFUsrrQVwenX+bCdSLFOeXiiAZQq2Tewtzj6/787
	 FfudY9TgipMAerVa9Rn0LP+KTSRmWfKCJp5A8XNZPQ8S7KYvvZcdO2VvmoxmpNWrL1
	 Z5BUMxjXiWKq/U8A1rq4FzitQdZXOCaA/xu0N3dka3S1u7fnW/zOGvTj+Soc6ngz2s
	 p2HA/GRYoXK+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB6FD35177
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 12:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177504573368.3071.8802790404398909360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b83571030582e7d22427a963fdb7d558cea2d8a4b1c28ee1b4042280db4e2a3
Date: Wed, 01 Apr 2026 12:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775045733
