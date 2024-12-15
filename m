Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D20D91AAA24
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734282353; cv=none; b=a9xd8F5Sfuco4t5Rzf9L8gcaqBOZ7MOTBMYlemGRBeaEBpEU+o1z8BXrkTA7dkrZ8eBfFS5ygHbLYGPRifKOQdK7jAQCbtnFE9+Ato80QLuVaCiP6RUUATUHWfzbtvHGzRHIyT/6p3KOTWBy8gl4RWy0ms7wRO1LmCXDPZtqayQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734282353; c=relaxed/simple;
	bh=I1Gt7b4L7Ss70GQIiw1InttYsOA7EDraAR88mTxeYMc=;
	h=To:Subject:From:Message-Id:Date; b=l8bUz6q0HzWtELT+0yZH/3cvtJn1BT3wFfQIbvld2nHpfBOFxAaz0hRkEQ9f++pchP2LanjoNq7HZYodWNtr1wZyZXj1/yvTuDnVpzRpevA8of3kpcDP05ghkAIb8nVUgJQyJrR5UUXJyBN0LqMYVo+W+Efa86ZIaQ1lPtXZdfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dr8clxaA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dr8clxaA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D80C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734282353;
	bh=I1Gt7b4L7Ss70GQIiw1InttYsOA7EDraAR88mTxeYMc=;
	h=To:Subject:From:Date:From;
	b=dr8clxaAhw7/DPMeNcjpWqS1rJCLtPHTvNbiI6lpZ5aWKY9eexPArWvhxEj8GKvmm
	 Vcs+R9nHGM926Ox1ya6eWMypGsSPlgKeetN5v7uee5PEk9KaEZfbm3G1PuYFAuc/ey
	 ROPTmo+MX1F4IErLZ0lOX9Y23P5G5zjnsRYS3etKLKV7XnUaQqAf6hetUylyx2fKGW
	 hfXbq6+H871HZux+zvBUkCkmrIyPsFnQWMpgyDU0dFhRW7poqToYkEpApfGTNtPyFT
	 uTpJAu5EFnuwG5+wve172haWrpPluVJ+uyOdJ17hNYY0PUrFsSr1UfWtQq9NiDaUAu
	 +p49ZoYF+ZUtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2EA4E7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173428235365.22897.1111398695296413930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd26e2b899108140f5aecd4ba2217954736f70dfbfe837b041728084d94f2684
Date: Sun, 15 Dec 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734282353
