Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED4027934E
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756460994; cv=none; b=tJj5lvVkIav6PqSDe2nYKiKYXOWTbmVTR6JhwwXIjUueBMTzWByEnqzOGC65Dy2oHQ+fNAJl6kIAQW1pMfFQmWqpXb5BJYklRzsILGYFgiDq/dkh1nSxE2QUCGxo8Z4d8KwxyFvMD2ekY4KyjskCkdiApuH0b9fXYoxzIe2qYoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756460994; c=relaxed/simple;
	bh=7YiGXzTbHOP1F/iYbYUdlmI7OrkIefJP3jIfz6pvzno=;
	h=To:Subject:From:Message-Id:Date; b=R6ILWnzoUeH2W3C4gb2J8nMnfX6LkIu7VVAJ5stscowI+F5AJldGJDr6ib+tdk09+RcCvWhyns6VIDvAGT2s7f0ZKIValM60Ua6zFp/R/rQAD2PB7HULnsz0ql4iryl/Zspqx9Y66ChHR1Yjx9IYxIi/qVtVjXch7SB8LhTciTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O7GW9Rd8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O7GW9Rd8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCABC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756460993;
	bh=7YiGXzTbHOP1F/iYbYUdlmI7OrkIefJP3jIfz6pvzno=;
	h=To:Subject:From:Date:From;
	b=O7GW9Rd82EVduSt+JBiv9HJqIyTaYi8/ADg3pMuA98W4y59cx+JoinyeEep7R3nX/
	 ibdEH2U/wKZccXMthDcYlbYJE7v85PyR2Ch8QitOX9njswMSY3uHl3CabcDUCmK0IG
	 gya0DiamCemslcewJBgNSmpKa8zEMVJBYArfOj9x0JlrxI1EWkAcDnmBW609TouBu4
	 b+0IFy0PdlgkElOgUel8fMl8wac17Rrvfp4rMwaKSQRv21YVlxZFjfJ0djC8fZKPOh
	 BIBYWHjt/73cQ3r8eoXktYW5ymU8N1nvss9T5+m0M3W0FxUPrni0Gi2zUoYt88PoNk
	 N42+yRVqLRAag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7DDCA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175646099358.23587.18245912328814072353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21e65621df872d17b49837c961645fcc6aa18aa0662eb7f5e386a6f762861815
Date: Fri, 29 Aug 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756460993
