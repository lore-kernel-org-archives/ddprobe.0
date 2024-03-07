Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E42A6126F3E
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 13:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709816897; cv=none; b=WfyzIciKoBOxC9CZFhYURfQjqQ5P2/TmFVs6ocE+4Zhrydj19tz0MOnnLaAxu0GrzOIUg/fd1dNSHqwXLKPimWqbB0r8awkaW+D+XNKKw45vOJ4inQH+ttCyoiZNRpu1VNSR0aKVmUKmfURLSW71NicnC66VUE6sFPzRa3UjzgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709816897; c=relaxed/simple;
	bh=K560FtuXhGgPxLcIuOU3ywhXnOvFpDoRwQM7TsnFzQc=;
	h=To:Subject:From:Message-Id:Date; b=EjLrZUzjwkpkZ7ubvRIOlrxKRF7bidiDgLN98KBxulx/5sMJcLjp1CXhytQNQwJbMIfsRM/qfy5znscc+JbEF6YIsuGebjt2BdHt+wFm+Qh2QSbF8iYCVD0BsZVk9fFOqtQHVKYc3b+uWk0j5P4i+riL7IsUZ6046yl4DX9qaeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FVTnl16o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FVTnl16o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7694AC433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 13:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709816896;
	bh=K560FtuXhGgPxLcIuOU3ywhXnOvFpDoRwQM7TsnFzQc=;
	h=To:Subject:From:Date:From;
	b=FVTnl16oKsGBUvYg3AxSuDXmb6dTr9Q9Ge5/s61sPROieQbWLYwGzr0xYHAgthLp2
	 gFz7byU/VoRZsb9KllTb4uIXFLAMkBw5FyBW/Ri7yvuKZneXVDDxajUHFpP3y+v9Df
	 uM3JVWIaWY8J6oJHusYrN1gN0uXX709AIVfl7y4DJ7hB+KsR37uBux3JGKWT1+R2LD
	 wtd7vjHN5fFel0rqpNsL82X0atIcNQnHbnNqmB679TwrSfR8aeLZgggnIpIaoYnXNR
	 3JXYiDLDDj+3T9Hj8eEPPiQEh4uivI3qYzym17aAseOQPMeOXZyzBynulXHLxW00xx
	 6E15mXlfzQd9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BC93C54798
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 13:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170981689636.11458.3820110456947575260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2031894488ff3c10f747634b13a879e5812b74be3a3ffab2236ff69c7274d5dd
Date: Thu, 07 Mar 2024 13:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709816896
