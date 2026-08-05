Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EC193EC6BE
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785919834; cv=none; b=odn2pDlbei58bu0FcfHNoHPohH1K2Hg0UD5H23YAQUL3rh3eB1KVZ3ecPx7of7CvbfvwD/AF1UZScyen3+BbGmuiD78CNCclDDDooQUnbAua+7nVF2YvcBnJAIKGKVnio2sy/8dqn7WGNFMTbuJiSW3NHFjWqEJ1PAm83EejLPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785919834; c=relaxed/simple;
	bh=nm/z9BDp6hDlDJ5v1Q8zRwKHuhQpaZA2S6mhqvi6qfI=;
	h=To:Subject:From:Message-Id:Date; b=Ck0LH7gNy5kZAhpCJyoe5It7CUbH/W0lMzeNDvrM5NeOmshfIWMwDxAy+Qm2WgJV/48bbXXX1XK0B9SOC8+wB6MgBrZag0BGf2JAx+oWU00oxKdQ4aMbT5C2TPgIvIDMtGdJF+jgrJpCLv76/Ujbm6BiIXMyEWIPyYiLw65Fd54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHCzkgVp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHCzkgVp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E082FC2BCFA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785919833;
	bh=nm/z9BDp6hDlDJ5v1Q8zRwKHuhQpaZA2S6mhqvi6qfI=;
	h=To:Subject:From:Date:From;
	b=nHCzkgVpFCLmZob5uP7nONJNRC+QwgZT/hj4uuib2+qdzb1emU9dX1bPIt5NtR7HI
	 e2dXHEDDa4oaKmRJ2b5Uh+LuTXIJIZlJWSmlA77YYDyKMutplyRZF/isffzr3dgrjf
	 AfqviEY6lZD28vShVrqUGIG/Sus4Z0+Zxk6b54Mb2J2PVSP6VCdUw0u9mE/7jvZy7n
	 2S8elxn/6i/awrc//cxJa7rQXVi92o81UsuyPgjGZXDCizX6EzNWU7Fjpyblztj0B5
	 Vm25gqgFEV/PBC2r1Ok/GFQWXl1Y0Eih5ezyTkAlsXpRtFf3Q4n5us3Xi5OU5n2HD9
	 xLmTEWp3b/m9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA396C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178591983374.9328.14834283096551959019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1c42f220746310aeb11ff00ec4b24cfd5a2e998c5cb1e4687d214af57d0840b
Date: Wed, 05 Aug 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785919833
