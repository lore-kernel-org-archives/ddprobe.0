Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54BD2374E55
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785232234; cv=none; b=EDNYjMFzzNTkX7PGI/WwULJM8Z7OU/GLe00ngo7ouuGtGRBImRP8xTkSOdpNZwpCmLx6/o2lWwRlQyVB5iaSw+sxvVwBMXZ4VbP8iiv6WraZ2eM3d5LET9L6NHDqFkc8RzHwz6/pq4l9vJwgbr7ebDQf0kWhXmfzAgmqf9drGzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785232234; c=relaxed/simple;
	bh=6y9Ie3kI1SVvEw4unP8yXc9hICbk5tXEWSQV1kdkwss=;
	h=To:Subject:From:Message-Id:Date; b=rLuw/zfDHVj7zWE3K1TbyFPd7S+B86CIHZabDjY26A95cerhqi3Gc2cIR/bH9tmnq94FaLwv8lLUkTBSFN9uDjvQHY0TdtAuuCxspjCf/Az3GVGkQHUMvZ5UxNFtXkb8AbUMHum36Hc/lxxdRCvzQgwjBiYCYg3AdDHHYOGO9UM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVhV8j4Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVhV8j4Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4780C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785232233;
	bh=6y9Ie3kI1SVvEw4unP8yXc9hICbk5tXEWSQV1kdkwss=;
	h=To:Subject:From:Date:From;
	b=BVhV8j4Qi2+BMCBHMcyYWe148tNKWBRHZvPGNFoWNQOkHgQ9jizrPxSCQtPo2QKua
	 Yu7qDi1m/iaWWlnKoXCqz3lls64QPQUKeKJoGcH9/oZsgJm89Dh3yrT5xkTylMRfQM
	 c++lhBvyL3CUn/Jl9BxLUZUN1yKAwmXWuJdY94r1a5C/KATtXzge6OJtNQet0FKO7K
	 Em2sCrXM0gCvQkbXz/zmwIQOIC7uBtG0uHlue09T+MRXzhbZcQVeeKdtcsOxceMtoJ
	 gB/kTSMW4NLQLEDZWd6DWqPIegMtZCVtnTYU+hXe8czsq7BMPaJ0OBu6dnjrlBj0Z4
	 q6eiRHM4YsCmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A87C531F9
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178523223368.3461.10927606457299316388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbe8f204a47f5b5b2e7ae5510a3685fee567de3ecb9fdbe727a1758d8e338fb4
Date: Tue, 28 Jul 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785232233
