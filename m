Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E962D7DC3
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761778194; cv=none; b=iT9I/EY0ZgUGGn9eMBcD+oPX3/dd37QYhViB5VGyAST5M3Qz9rjLmuuQ9agCFkno7D8T+VrJFPydWpFRSB6YyXku/y0p/zEA9XVNacaXOywoeIdFviKVoHEKCo/km9IBN50VyRlru+GmMKrsYVtbJT4/8FjES7QdRp/Fe4ouuf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761778194; c=relaxed/simple;
	bh=ifKpoBKrXr34SM/HgEseK/2FQngTT9uipWxy1XEJf1M=;
	h=To:Subject:From:Message-Id:Date; b=OuljaCjtA3O9ROz668auNgFKMpFfJRPTq2u7ZGTzq6Uir8pcuGfh/9HGC9SvFZYU2nv7dS+WMBdkMwE76RDA266lH/fS/C4lag5vl/RjlDr/s5FaNql+j78ZfG3uIKmQGEvnSuGbxyPl1suKgZE/uDrvar+MKR6CZ62N3zN7gpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N2rAM/af; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N2rAM/af"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5078C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761778193;
	bh=ifKpoBKrXr34SM/HgEseK/2FQngTT9uipWxy1XEJf1M=;
	h=To:Subject:From:Date:From;
	b=N2rAM/afUKXjejyvVTT7DWFlTlgGd9MildZzrbVKcfUHap6mT1yIBiuwqocIMMH84
	 fwgx1xo0fgVXo5BhKwVkmUiVB6I3thEcdAwzsy1mNFXaqsL6qHzEpuANXfb95V5ggD
	 uSX+dRTcJ9+3pJ4rVn8kF5X1suVRA+OAqe/q6JzaTYLITA9OPcRN6ThKyiJ1rUoBwN
	 h8cxuf2YYA6tRXrsU37gKm1qZxabPHofSL4I2MADvYPsBja+o8nSrVz5AtU9cnctj7
	 1NKfACXpNJsssJcG8YVyNbK6G4UaHhXPXmE/7VETzVsNP+F5iPGoxyhZuTbqIyhuev
	 UhtaSIaVwUL2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9192ACCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176177819358.8777.13538097482933946564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe44ec20036d568cd914d171386fcf4f9cdba79d21a755b4e3b74667c121e455
Date: Wed, 29 Oct 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761778193
