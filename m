Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63EBE7462
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 07:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716708863; cv=none; b=IqLT4Ddz6OIrZE5Z/qkio6srgrXjMHXA7RRr3PShuMUfNtxqNvCT9efvqJ9g/He4kw/SWoQf5qnp35ezV82/k4xrnLAMziHe9p4UxC3Eqx6LsR3iTHAeSVU+CFTvTXEght42GlivAv/Whffwhvt7mGWm8fajFJ1/61Le4t2rdIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716708863; c=relaxed/simple;
	bh=DpMVKytnorV3uq/AtBG1FA3ePHR1E2KkaDSM72syjUw=;
	h=To:Subject:From:Message-Id:Date; b=Nk5m2Lq7+xhPkRn/7+zeZY7rOxCK3IeN5Hl7nUZ8Joj5QNtbZz60X+xKcnMQGDajAjSbrLSh1H22VF55k8yKK595eyAc41sBcMyZbtUN4mroYvTRnyBgAlZ83cTfbChxOeYiNZsq8m/BaaRZ2h3lCWsJkrOh0HeJ7w06dL6K6yY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLqFa89m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLqFa89m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DED11C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 07:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716708862;
	bh=DpMVKytnorV3uq/AtBG1FA3ePHR1E2KkaDSM72syjUw=;
	h=To:Subject:From:Date:From;
	b=bLqFa89mqlJ6gRd+mdYy9EwehnKBDrzVf537HHvpSHGZ21gICO7xiFw8NkhhCbWJs
	 UKyLs71MgB5fu6k40xocGV2klA5of5tDk0nj3mDh0aaWyMTYORvrhNrfjYTCdqI3Cj
	 1Ws+4HhzWn6sVnPvKCO85F9GOLdKVsG1PF8OmZFxiqnOGHmi3JQZ+sGx3hqCmMnZKo
	 1TiaNg97tFpb9AQ6khJYosZywWfvDBN/MzXnLrM2WRWbpZTu++pTMl/Uu9ica0tbwU
	 JfSAD2RpSiKFP8avwbFFoGUedMNisJqQ26YDvTnMuqqmEQFuPfKC7CCJPoMqG5rsXI
	 k/j/C++51CWng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7468C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 07:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171670886279.8039.12355683285013024642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1de9bda80f6c50c54822e7553db7a38ca213a56d76c4ca578b0a38e37f09dc39
Date: Sun, 26 May 2024 07:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716708862
