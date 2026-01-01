Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D354C92
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767253434; cv=none; b=NF4j5M9yU8kmdldiGdwIo0TVieYn1NlJnv3w5GPWHKB660nYIeWqADAsrtKgGPLfcbXUcsh7vf6HET+jhQtQFdt+ZWHC5xF+XX9Ud35I79pL1IIQwo5u6KSha4cgZtdSoAOStZDKVaw5iWZJRl0WTXXYuxGptFTszkQkqInAZwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767253434; c=relaxed/simple;
	bh=gWIP8u6NQOrkM2GTUy9gEFVpm+391Li/aJD/q4cncHE=;
	h=To:Subject:From:Message-Id:Date; b=HdRIRFkoK2jDT2rCPc2YgonyHUdXcYCC1zYufjcQb4owlW0ScO43hfI9G3SyRqIGGk0SW8eWMvv88um3fwubpg7c6cOlVxqDxkbGK3/y8/j40DUY6SYVVceh36WjSILCHsesMJjONuMW++avFp58APeOvFV7y1eIJXebGRZ2fTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5yCcUYC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5yCcUYC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A535DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767253433;
	bh=gWIP8u6NQOrkM2GTUy9gEFVpm+391Li/aJD/q4cncHE=;
	h=To:Subject:From:Date:From;
	b=T5yCcUYCzSSDQw9sR7e4iiX2qP5LONg4FYU3w0nluml3AkO+2qaX9YG6b1JzEw4Uw
	 yOjGdpoqDJWd1zpO2NdNXTxt1HPe6OxaTNVJxnaTeIG9lBXKshVetvAVKpIcboYX+b
	 qBbMWgR566ZnujzQbxSTxh0RPOHl8T7lin10o1qEQ+7fIU5f1uYusP5eWPx68okY/i
	 LIolQg1D7t88Vwb/xbCTZbW0ZK+iK+lkGDknOxfV41d56qUtmqVeR6Hzw8q7TtFmwc
	 GGFjCIOG9CEa2iHm/2bIE5VoavJSWl51BzJnGpjfnrNkK8PJdYeijxV2VOexY9AnBh
	 LigJmdvZCEjEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9446DEE57CE
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176725343357.20729.12574864514059249092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af4df5c3ba957a1cb26ca87ac408d865e1acb8b86fb58c081f3e55e7b3c32ffd
Date: Thu, 01 Jan 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767253433
