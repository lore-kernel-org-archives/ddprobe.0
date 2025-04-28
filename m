Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E06B1B86EF
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745849994; cv=none; b=apPHMDSP9iBMVF7hxYEiKVuQmqQIZd7EsRHXdOZv42kwwvafQZzoWMrdXIANpp9kvdr+34Cz14vJGkKDt6GNa4p5HmYA4/HB1s31f5Z/gxPRqcCI3THVesNa1uTGlcSeR6YyTjTZQSMmwEKwp+b3ipFMF6+KzMwn4UXMYylwEgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745849994; c=relaxed/simple;
	bh=TTJ/Er8tGShGBdCMQ0Ja2CBwOU7XseBjmUXzfnMQ5hc=;
	h=To:Subject:From:Message-Id:Date; b=XwZCIYH0xT/tWRY6PaYwhBZZSC+1Riobq33VI9wzklr+aFafaTtq06YtqnFmq4aX7r+jCoJhswAnAIb6yzsSlYfzKF0AM1VsTCWSGYenIU3c88cQACXLv+i0s0fk9I+vmfhcCmz9xhfRd0Pte4A3PBH1cOVPFFNCq60xrmEKD+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3hxb7Gz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3hxb7Gz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B89C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745849993;
	bh=TTJ/Er8tGShGBdCMQ0Ja2CBwOU7XseBjmUXzfnMQ5hc=;
	h=To:Subject:From:Date:From;
	b=n3hxb7Gztsi2ALg5/TyYiUHjHTsI11SEew0MpGlpV1YSRW2KW247JdxS8vf0m4Vk8
	 /YvVz6BM8SWErlTHZrNhzs+EFSleCb+hScehzYzNUJKqKOzMJHXM8IDY+lmxlg1gAm
	 Tv9x0JrOciCS54kf/DGDdn0egAzvWtqzTviwPBS7yJ3AWuFX5tdkIvL/Hty+SkuLtS
	 lamVdzGhjun9rQsSoiHYZotLF0hUrSpvKmpTvH0c0/l+KmVkvO0BABYKbIdW9fg7ET
	 jacDOa9w08xcw0OX6xzs4au19/sDHWIkk+b4+cPG6pN7gH5gCvTxDWFbpAZx7GdzOv
	 6xaWMCTB6y6Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E374C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174584999357.14191.90665370911693229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40958ffa9f784b6ea8fb47ef9cf37faba66f28dcad837e6f80e1e12ddafc650a
Date: Mon, 28 Apr 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745849993
