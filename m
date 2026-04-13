Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2292E33FE15
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 15:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776095254; cv=none; b=sVl5b8SITrIA4CaxlZEoJ8D09HBKyw4dAkWcpOnMvYRxowAL5TtLPUfmBow+nBgaa6lL4segx+y8F+yHxAS5dlTqAj3lHxPZ73syfs4nsXnjD+YDvQ3WqrQ1GIjiF2RtdQBVHEnTbeH1o1BieENInWgOn1bJT0jN2HrCenHOMiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776095254; c=relaxed/simple;
	bh=eoEn9sdw4bM0jzOpGHa4anl1uwUn3unZsRboYZMnzCY=;
	h=To:Subject:From:Message-Id:Date; b=qLh1Wt+AP58EPT5bNV6M61UtQLslk4j+V7bj3J4ylKUq2JlaW+22St2CbW71h5dpK5oLlcmd4HKI3zjqVYnCEKksibj0sGoOg+z/a70cqt5Lq/tjDajFh8kaneg1RsOfFDLFxjpXZoCZ1gU5cIV/n2BpoA21la1xtSNE+cWXzxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1aip1LF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1aip1LF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7CFEC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 15:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776095253;
	bh=eoEn9sdw4bM0jzOpGHa4anl1uwUn3unZsRboYZMnzCY=;
	h=To:Subject:From:Date:From;
	b=O1aip1LFKgmdXKxFQOxCA/5VyvrZ/OwjOX+jASdGsAHHFCS9qUvzeRcdG0zHlFvsj
	 4UVLAQwHsZXrxs5Cia1FZbRLjVYMuCq9q1qM49mmIFYjm5ZM4T2lEaxanKv0yKd1L+
	 1gpSx8pdFjo/WdGwPIoi2uq7V+yQFTk7vhiKXc/t/qhnMz8lGLZkHyqYZHpyIYX59R
	 URbjc/1c9ag/mGkktJsd5SMtrBH3nlxaQMbkvDyE9kgzWoNqAm9OtNZfTHdaK9his0
	 9aKu+0iQtvk+n1nm54B0QLtDt8K8+JTr2NLvvyl3DdIsHy/rkyUG4Ci0JnH3uHLGiO
	 DmdJLcD4rH6GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98D6F34C5C
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 15:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177609525368.17278.13655238564058317296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5985e75b69d0f5733c842cfdd753e6a16efff57c13d72023c6574dae77dc5d2
Date: Mon, 13 Apr 2026 15:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776095253
