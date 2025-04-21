Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322F31ADC93
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745203194; cv=none; b=AdrxhCds6fjH8t017YEN5Fmvf0DvskZeb+84P2aDC0+TCrANk+w52vzxiOI7ILrxOCU9bw+JeKQxGo0mhnpXKi1MtV2JH8vmJVxg/eqdg7zk8QfNC5dMXwmRu3bDhmiftQZ5M5qfTVVx24h+6aXd9bE0tGQDn1OikauunNmewVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745203194; c=relaxed/simple;
	bh=cFA6/qfFnR2nft8PUcl0BR7Yx1SdOxYnE6Mc/g9iSnc=;
	h=To:Subject:From:Message-Id:Date; b=oJqDekg5eq9JOJ2OuILIPNjCcjptBMiIKEoPL3erDTLU5rQqZx7XEJQFJOy227K6V2eAViYe2DxmCV2SqWPQDnBk0x67Ku38MPw2MRCIFkPNtHX21kPJPnD7A77DCHBdjqI/vA3xc1cPqkSadEWRMEf6YJeCSjBfrBalCe7g8go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DjzrvAq+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DjzrvAq+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD8DC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745203193;
	bh=cFA6/qfFnR2nft8PUcl0BR7Yx1SdOxYnE6Mc/g9iSnc=;
	h=To:Subject:From:Date:From;
	b=DjzrvAq+8z3AC0m+cOEQDuVgxeyFtEf6lkNYUlo0K6Qc2FYZ/s2bdNHemQ/9bjgfa
	 lDFwD0LjQtgstsDroxkc02h7PUUYyZ9bIoPwpGS6tNn8huYIeFYaXJF19ohNRpulwc
	 n067uKx0XzFwZBirf780CmD6QV7Q3RW68di/Y9pZexAxGvmkm+xrhK9QdyozSoATaY
	 tr+ExLtq4raGuWYxs3f5Tr/RQPtJmd75zmsnFmD8FHJrSirqqEG7tEmeygrap6KXe7
	 XB44O1w3AEHXUhQ9THYs+jPK7c0lujpqbO/SCGXJZlKomu1b2xxrk9bgZB5AUt+mXp
	 oYcGA5boW15Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD29C369C2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174520319358.28574.8599770042861036599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3b5897abe77d577baeb5f1b355ee002106f7ad11a20d901a5bb91e22637d78f
Date: Mon, 21 Apr 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745203193
