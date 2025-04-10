Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E741FC10E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744312195; cv=none; b=ldPwF7LN2+YYkyi4zd9Uc6KlFL50xK7VnWBZmHvxhmOcE3EneIL4hYIHtonFCfIuMLJEq46VB+DoQe1N06N5NSTbg0QIotzDwsSCAKD2KAv8R7UBa6zf48ph14oStJQ4SRWvhvgwNL4LCDH1XO3XOaXCiBWKwltHnyA9l6RAmpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744312195; c=relaxed/simple;
	bh=hhICWSkov8tdi3FMUKYnK4Uu1R+IPFLuAYoh6TOVFsI=;
	h=To:Subject:From:Message-Id:Date; b=PbXsWoXfx3VbO81eaeJ0auMjUz3bjkNzajq9N+TwsVGLHU4J/X5Wpq6+JilWdF9YWVukI0w3cgKse6rO5Q5jgxjtZw5cIPajE660fwhAKLZ+c5Mn65BbyltzUoVp32lPXs8mz/Mo0Ch7ZNOQWYxC0WyyAzqftb+orTYzyYEaU7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BEMfFiCU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BEMfFiCU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A351DC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744312193;
	bh=hhICWSkov8tdi3FMUKYnK4Uu1R+IPFLuAYoh6TOVFsI=;
	h=To:Subject:From:Date:From;
	b=BEMfFiCUqVKldb2gugxfuq5ChGHBuBFuG2D/JCtAoFTmdcQV2C9kaun4zwrA60C5Z
	 IRCs7EaKO0nhLSteFLYtPadNmGTXH4DsXhrpxU9/gXZLxXP+/AmC4/goJUXKLYnVq3
	 AupWpm5iWK25K69b1B1QV91Qvi9j3k9nSJOPN0ccXVQ5nivzB7VfvZbn8Q/LBG7Z2d
	 jyd8mFWnRHdPxjZ18NSR9eVXG1/pYpU2f8Gwta09QloVN52LoAJ9VTl1pUGYIMiV3c
	 GKGtW90apbF02usZfGmb51VamopJpEmUJ4lGpe8She+QbEmvn5LQYxGV0JIXP4qadh
	 iU4Av5CyvOiQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91150C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174431219358.28776.8193791767683593929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04ed4691d1f066df1e18a0386d89625ce1eb59c232f5f8b3da62f387bd0c49cb
Date: Thu, 10 Apr 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744312193
