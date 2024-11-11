Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350961553A3
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731353754; cv=none; b=D1IkC+N6GhKa48zmQHghpcujDa//EVafxLoKqFewsITpDXhQm4TnTlhK6tV6pEsY2JRAwsfGSvcFiKeIQyuKc8ATawKR+FNKEOdEd6afJmsKahreC7wDM0KquZTgiVHCUsGBr0IcQEurYdpYh5rsZgO+XzPsmuJeRBPzOIFQsL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731353754; c=relaxed/simple;
	bh=AfE0vyzLIRI4/wfsU4qbJc96wUU94uUQ2emtrC9VmPM=;
	h=To:Subject:From:Message-Id:Date; b=cI4S95O81GsVpwX7+D0gKDZq975FXstd8lFk8YFmz12RwGNo+TzwyJTZQZOzU0CVwCTEHvvx06D4cUfIWqAqis0T3MK7X8k02IsccqG1YtK2Q5qiw22qmCIqm/i0cZTbyaS73EAGeViI58sqwpArpqsaSrWFtCA95/sc2tWY8+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cI5uNit8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cI5uNit8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFDEC4CECF
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731353753;
	bh=AfE0vyzLIRI4/wfsU4qbJc96wUU94uUQ2emtrC9VmPM=;
	h=To:Subject:From:Date:From;
	b=cI5uNit858ok2KZQ+s7L0HBWQk9XWuzJGAJLG6JLi0Z467c67Qud25R/UO410Z733
	 tVD6Zv4GNhoclxaZRmmjcpvpctdcAG+t5N2BtTD7e2dT65NsrHAoPbwIyDtPRxepqP
	 Dzxh7ixZbfh5IbSWGz9sy+CsDkJOkUcLF8ErQY7OjcmohSqmBAjg2xD62+e2ahbOgB
	 0GGMSvdZSO+oTt3+u655JfX5nM9GkFu6tS7gdk4RyCbkBgk4hea4y+mFVIdncFeNMx
	 M4DKxzWDL4t+dQyNmxhxnp20+PNFisHHAO8EzSL8vEiiiKZMoEhotwnmIu/70k/Vbr
	 7KfFFCL0z06pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9709AD3ABF3
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173135375360.19876.12650301643154836296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d93185737f6b06ca47fd983c4d6f968cd008d5424e3abc1b601d89a3f3f40e6
Date: Mon, 11 Nov 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731353753
