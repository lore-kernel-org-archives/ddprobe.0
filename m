Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F39E637BE78
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769675634; cv=none; b=KYahYdQI0AWXCHO8Y3TTfZR9p3UaWlxKRhlOfIKFhR0rGv6Kz2VutVGndOTvwHvguEZ5ABqBY+15i3ocoo8STJkoTQhnjUoLSeJyNoEa3IqUfo1EXTpfFMM28Uq5KCJgaxTNLeVrA0OoJQ1Yug/LDffRNGUvCajNvaoB43CNXbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769675634; c=relaxed/simple;
	bh=NA0bnQCBAAseDawUjQcucLqrfNHql/0UzZHOnsInTXw=;
	h=To:Subject:From:Message-Id:Date; b=ei9Ee4F/5DY6e+oWt8mwNEDA4e008fDm3oSveLQNvLlk0J/T4tJhWTvkPzW5JqlA883nHliyxY3nvH3kad5C3yuMkcNw3FJEnxf4JNTCSDULTzkZMsMVy6/KV1OYD5tqDWkFO2Xaes2yUv2NdBtgyUf+/5bUpCWGSReQBNPumLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rwdTEulB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rwdTEulB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C19C19421
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769675633;
	bh=NA0bnQCBAAseDawUjQcucLqrfNHql/0UzZHOnsInTXw=;
	h=To:Subject:From:Date:From;
	b=rwdTEulB0VaQJh8x+YUN7pGAO349Pa4uTdsVONq8dc/1nKSteusgFb4X2XGvUZmdG
	 TBRJoQVtdq6cR7OWJBSyG+1WlW4pb5fmqOsv2882sNa91sXa1h6kYAHPUOG/gRPP8Q
	 4ywzbVuRa+6/MLMckfdvlkXxIuLBnsP+AAXBuOU8G3YjWHApyLnoeFGonx72CVp5+E
	 isR4epnjsCGQllVP4B2n5oaJFJo1Y2RMOFY4b2zhw2AbScYCLonL3Ej2bbPpZxaFyb
	 Kh1sYyX5soDbSPQHRoZsz4/GpC64Nzx1+Kl9EwRsTEfRl7U7pCIPIh10TTGdGT4qKh
	 p0SK+PIS1mn6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959A3D358E2
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176967563360.3398.12024076058368930029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0926e7846f431727d44cee9eebae29dd50f433e8f5bc3103a1e84a3897a27e13
Date: Thu, 29 Jan 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769675633
