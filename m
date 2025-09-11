Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2AF329F29
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757567994; cv=none; b=RNpoCCSLVIvgLBir81eLViuOuS+LfUTTGG5oWSZUopDvfjJpUfpp6QVHsnamcoTjkRrovG5IyZkM7yZ7qLLwlmwQLHRI2Vk2jexQX+AI+D5dpz2HKuXJRgJM1EtHJby3TcIjNaK6Wnz4UBkfW2T6J9CO8XlOHEqRYPU8uDgPyKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757567994; c=relaxed/simple;
	bh=05qaKFfWo3B9g18zfIg7MBr5CXwfZ6ApXLE7LM53csw=;
	h=To:Subject:From:Message-Id:Date; b=slxC8wu0+qHnfnDJHsm653xHszjk68llPIgqDmsl6yXegQlKk0fXRmJppDTb7wdeXOBtpFhSx/LRwIbd0uZ3Kmwg7ZJgK0wImTs2APK0VvtJ3971/5Yv/pRKUORebf/5xcukjOgnMaI8SKkd2iFrxB8GVbH6AnwxoD6g4w1oDrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/mZQAuh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/mZQAuh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CB6C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757567993;
	bh=05qaKFfWo3B9g18zfIg7MBr5CXwfZ6ApXLE7LM53csw=;
	h=To:Subject:From:Date:From;
	b=L/mZQAuhNAyOcA9SF4jbbC55eNiipgQt8tNbhqinnQ8G1gRQobO4Enh61Ft9bux6C
	 UsTnb6IHLgvujKWPgW8aTCZxKoYRh9xWe3OiMAUip8iZBB+fsN7gwdlU2/4Fp/Khy/
	 qha14pGclqy2KQKkCGeAsFsEesFbFSe1iO0AOQIFvLQNgABykynxWBpIVp8sPrlfna
	 IJU+E6y9X/2jirfhvNt2izWsdfL61LA+/FKmOsQj1l+fH+Gf6fKKR70L/HOYARE9B9
	 Evs6XgoYUHQ7l2tjIug0s7+93D8INT4xpBD5mgvyiBBlxjj2IfUE6uydav84QPE1qY
	 I1/RauwQvnZmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CDCCAC583
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175756799359.23400.12174509629235978033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df3e555d71a63a0a59471b90a91a24b8c7603c0e06d3676db6f07b5c9424e077
Date: Thu, 11 Sep 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757567993
