Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3324C1E2858
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748538594; cv=none; b=DYIIuJ5AUbd5v1ILyTJhnCmoAG7+APZ81qQnh6KxGCETclJQmpddwQ8tWyFIjjJUF8XHLyGRdupxZDU3mw5OKesGN3DCKsfWRLuOT4g/K0a6Pw6fASvXPfJWrvEdwt2Sv1uLl4lIdG28XxOGKCRq+MtKb+kgAqJlGz8yFJsM/KQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748538594; c=relaxed/simple;
	bh=8XyslFs/pkBJyUSlST1dbn+9sH1SVLeHC9vPi6y8eNk=;
	h=To:Subject:From:Message-Id:Date; b=W+kRO85Uv+K2b2ZUNWC24+kmJbM27I3tIDDBiTtmiFRbWc0mIoKSZQNUPYsnArI7y3mQ889HCd7Qmsk5l1cF2cnfWWZhrJVLPjPp/t36cULEHaLvP4to0wAGvDSnbgiCjkdJlifcKzxjaxQv6kmGXwsV3BNWEn+E0/a2MRbPtfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hHjwCT84; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hHjwCT84"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C36C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748538593;
	bh=8XyslFs/pkBJyUSlST1dbn+9sH1SVLeHC9vPi6y8eNk=;
	h=To:Subject:From:Date:From;
	b=hHjwCT84vujqzXeZg5EJ9kQVikv4cqfqR4nUm1BeN6Fu7JcDjIRFcUDAh/Axa3IKv
	 2rmhu0wRrqtsERvhvBj3T7IX661D9Uot7QqA4ujByvAMgbhSK2zhycDZ1k1zazKvFT
	 E8Aext+XiX9jZ32WjKHZwg/VpAKGuKgbM0Unu7CnBnzxTAc9rtRmERdRknI/wKCbRe
	 F1DPMVt4L7PTOf8YvVFQXq0VWQq02u5zgJ1C41iDVt6RycuGtwm/VTuBxbkT4AyZBv
	 zMeQoh742YPmrTl0zAdoWB+PBhYKquryR779ceN/s5OWelq3EU0cojzb9z+LZgF45Z
	 EsPVobFkCxK6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7CCC54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174853859357.5816.17685034546111930823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca079fcd939350e2975b4c60066acd4066440bc94eaa34bd74fca49305dfc31f
Date: Thu, 29 May 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748538593
