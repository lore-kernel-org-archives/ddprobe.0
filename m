Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3A8F3C1971
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 13:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773926093; cv=none; b=fPyf11YceA5yZ4FlNLLYziTcH/WP6cvL0ve8HAv5EF3HNNznGRk3KtcwEoNkF4PbGoD/N9nMjkZSb9JIHnK3m7DALjcxtJWMiBkygXEszXo0RYNZOmNdm9DptkQzxYKZRu3RyGu79fYIGZG75SyGfwTbWNC8mIH/Qdp/y8moGRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773926093; c=relaxed/simple;
	bh=+JaVJrX+zUNHqSOFx0SMqC4xci+JSK2RJP5YSNvb6Jg=;
	h=To:Subject:From:Message-Id:Date; b=dm/19C9zFuXdM7YFU82Ptqwp68JHb9l8vbWLV7cWinSPJd8mai8e33Fta7SC84jSzLQdck29pYzG1li8ntVFTUDLTBV1M9eXQHc2g414ckQ+ORCE4KPlQJZwM6PkFb69xTAxANJNevuP+K/DowNWbdAnGk9tGxNljJp14drMEGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aSMhNOmz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aSMhNOmz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5854C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 13:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773926093;
	bh=+JaVJrX+zUNHqSOFx0SMqC4xci+JSK2RJP5YSNvb6Jg=;
	h=To:Subject:From:Date:From;
	b=aSMhNOmzoq9NgX1egXBFu0NZvwWOkYVWJZte7SzSioqeN9WOPQOBvRCxAB/zCEDyc
	 h01k7tMelkc1j3qpnFwBJRhCbb8qmWcNuFPPfHqpP+DtKHHR+SiTCNz1ALL3gHE9Cw
	 /iNluuRGeEtxq+vamyepc3PTe1ixOOSQxb6gNVJ00SLi6+aJVAyQLWRUsXSZqEB5Nz
	 JQ5X4aTY8MWLrQT991cm2uQ3GFmoRGb8EzOTr3Cbkcj5+UdXJ29IFz2qvSHR8D7oqb
	 ZE1/qFTFph+RnavrFUzcGDA9IQjHbabXHiRzgSa+zJWp+gk08bVMAtQnDpphqEkLIZ
	 JBmdR/R5LEq2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950411090223
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 13:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177392609360.4905.8546906424614008981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6dd7eefb222ef3b60a0f98ab7d9e0aa4c87c57e1ba26169e9b03f487de32419
Date: Thu, 19 Mar 2026 13:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773926093
