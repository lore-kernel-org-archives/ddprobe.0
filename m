Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F5E13C90E
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712733497; cv=none; b=QHXpxANfmdkUG2kzxC+oj4vxaOEpyuzASc/tdHDIVHR/+pQc6X1/dfzJkIa8dRpY/yTPE5ndb5YXzVwXIxCGB9ToOVv/80WmaRdAEm3dc3dIsVMe/0U6pdCM2ahyXD4R3o40aYBEeE/ULxdwUMGVJbpbzJDvwMuM32A65hmaE0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712733497; c=relaxed/simple;
	bh=VKh50WXf/5Fbv/8nvG6WkZhLkiZvlADx+ujNsQRAUeM=;
	h=To:Subject:From:Message-Id:Date; b=r/dPOByE3P4cJIoZZsGcwJFa3SZETpMRP6Kxs/DQBfJgUFkIDQQJHDnNa64eGeKyyW9x6FTYM20A8TXNhPLXmmxHab08plWLKEWsBIH3TM37Ei/zdJv010N6QKr3Q/gKV5JdDFinpWhz62KZGbzP06cx5wthcJeVHPEbp7YBE5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=plkCBzF7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="plkCBzF7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8BBD3C433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712733496;
	bh=VKh50WXf/5Fbv/8nvG6WkZhLkiZvlADx+ujNsQRAUeM=;
	h=To:Subject:From:Date:From;
	b=plkCBzF77lcsvqpYVTIK1aDTJhIKtVtd7LrRLwfWyWDiY1ht9c2fpc3LTidHZeaJ3
	 1tLUHha6+XRhmcHaBLpOX1JIPa4rJA4LO4qB67w7oppJaaRlMCbw1df4XARLpUoaYN
	 CtTJzt6nr5EzTUQS/VRj1sQsiuGLNRIJtOr7ACgkF6XTi26kP0TzKw6biQxYKpytly
	 o+fHiiI/ku5HRyPLExnQBrrQEpUs5FW282X9cuRWJ2c6rs20PgrmIZycGs1t/i3Lzv
	 gt6gUu8gucp9d6Gx5dRhTKhOapKn9zFI0s+z5k7RQj4H48P84AIulovnHHvMxqkctY
	 QK+HlL+3BrcwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73DC4CD1296
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171273349642.22470.6510686885102890010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e5968ad83769f2c65e58ef373e4eb7adca5f146dae28005774f2402497b9d4d
Date: Wed, 10 Apr 2024 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712733496
