Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3B345C0B
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767304434; cv=none; b=tnGETAUDKi1e7LT3PbVESU4v3DvMC0ZXtot78JBMyUrHzdIULn5pM0RX6oDPC7S0MUJDQaSVxQHrvnADIzTdGUtZNgjFS0svpqrX2YV8u/bfJeCqwcS2//RluwoQ+kHng33MPxto3BWaR4pdoj9HnyTaW2NZUvMIOh7NDUezKGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767304434; c=relaxed/simple;
	bh=Tu8eIT0IOFfXlAWue+3IfycKdGSpG6SsoSpcww6cMlA=;
	h=To:Subject:From:Message-Id:Date; b=UwsvRndtLKcQz24kuBkljkbvOPPHlRIOLhodFzG2Gu1FJ9OhD1B7fB16/ThSLXB+jRKxbMyqtkyfqyNSLKrLwh4zTHdrhni13ALpl5KdUdMf6tPg479ao/yUY1cJNnGSnC1nCOMxpOBPOt9a8H48XVKDSZpENMIXVWzbdKbl3M8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UeMFWufb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UeMFWufb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42BFC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767304433;
	bh=Tu8eIT0IOFfXlAWue+3IfycKdGSpG6SsoSpcww6cMlA=;
	h=To:Subject:From:Date:From;
	b=UeMFWufbF+7+t7Tp5LALzp34+L/l7xRX1brzNYqwTXXe+xbkE5JlLP6Ob1yxUmZbn
	 h/TxPfvOd3QHATrtb2UjpOodgdgvnUAbjRXjkghhC0pPvTU5sXw0LxuMj34P3Yts7Y
	 HUBw5FWFw1lrmg88auTT5zdNmJDAep3foASFk3ufLSS+XTDjbmPwDKl8scBYUxRlLT
	 g6YAd+yEForO1slN9ziH4AzjV6WsH28YSGnKYciCa5kWRxoAsFjFI0A4uvLIjul4Yf
	 GOdjbs4utOispRkNv1Phl72T032O6J149lLgsDeNgCBE38347dyTMgk4qZEjXW6yZT
	 KAVSoXknljabw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEDBEEE25C
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176730443358.15924.15645560233989666922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb1649c85241122b75e0d087ca11682d661baeebe76e0a6e5dcdf0b7553ecd2c
Date: Thu, 01 Jan 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767304433
