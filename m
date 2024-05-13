Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECB1884DE3
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 23:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715644343; cv=none; b=VeshhwcexPqKOtRWuCoAoAo8sFOBsNyscME6l72EG1iTs/MPEHec4F1G2oZyH8P66st3A7sg47gjoB47hIwm5G8Gnt5ltdiTeK6+XgVFNXKWH+pm4Q4PGxc5V+52PtGMbjEQ29jUpoFpAvCOX4F3Ja5HE4GRtcX9OpkFa2wfcaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715644343; c=relaxed/simple;
	bh=6bl+USQL/qXF5Buj87+3rECdVLXjtvCwtikBFeSJc/c=;
	h=To:Subject:From:Message-Id:Date; b=hlwAzzg7H66L9tYgOxxKQJRux4FAKrSCwzMp/zqWxYsm1BrMgtJrW7e3WDm2FARPNqF3F8bRhjKifQHucvFfYWyUXb1r06U0MXX3zqPKxUIjTc+JHrEW/NFkuuPej5gNAOjXTjOOdXDh0pNOgC1+yLZ8nfv49DhYMr28I/d5q14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tidbN0Xj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tidbN0Xj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC7EC113CC
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 23:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715644342;
	bh=6bl+USQL/qXF5Buj87+3rECdVLXjtvCwtikBFeSJc/c=;
	h=To:Subject:From:Date:From;
	b=tidbN0XjY2xp6NOt34QmHVpW9IjNjU8cCAJTpWsSzYBTCdUsfZRSVj8s9mZ7cl4ZJ
	 jbWnWfkovhWCGpyXPSMzT4OCjW27thFcfS8vnv5woxdvwWNvYhTUq8LdNWzp2KK3ES
	 CrBzuPlTItXzrFyhOu2GgftwWDWRFELXjDOHNXKpQoBKSKiBIvR6WTH6jqx+zgj87P
	 SV9LC2HNHWH3iLmTc5JMgNFV3U/PsZq/Pqr2DzcEC3bp8iIybDfCR+1C7A6bTpKGhq
	 t5pFYjwPQ1q1YDO8NzJc3a16ERcqfhHHgMU8Xmmq5aDOibE0dQQ9i69vcdL2zkcYSC
	 bImlfQliFoZPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF43FC25B78
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 23:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171564434277.6865.1014154801929481011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60b7670729fa5877905d9b6b652ec5a6333e19114d2f04bd9cbef0f1aa4b66eb
Date: Mon, 13 May 2024 23:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715644342
