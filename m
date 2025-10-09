Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286FF34BA49
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759988394; cv=none; b=ID0tTBHdiN4J0gZmxsjlBOyVRPW1hKz+q6RwcjvtRUR4WK7PH/lgjdSiuOW5vKjexUi12pWfGiSo1KPY6IN98QsDXz0yf8Cs9rd45robe8bWxsaPcu00U+JWhzz9Yr6wMEZEoZusQAKQ3kB09HxFjlU0s8MqTVoeJsqlCHE2rMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759988394; c=relaxed/simple;
	bh=FyAdta6FHEy7b86uk7zV00bhfUTle1eFIyEOdvZwpfE=;
	h=To:Subject:From:Message-Id:Date; b=IbAgHVwWjba0lfEGYavLApDjAOH6pnORxX7CSCn6an1jhTRrkka7iTIDOcyHeKUTTrD9fM+mEHIPDaafk5tNohVzEJA5fCrJ0HKKFs/slf7+3VbsJHQahuKvnImuZRbYDw7mLRdgTxcTq76FNLCyxrS7hQnetQRQ/y8sZ8Grnqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q7NC6WrY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q7NC6WrY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C65C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759988393;
	bh=FyAdta6FHEy7b86uk7zV00bhfUTle1eFIyEOdvZwpfE=;
	h=To:Subject:From:Date:From;
	b=q7NC6WrYM6GaafQH4jDZPbr89piTmiN/L5GiruwN9/1XyVifDHKtwX91fRVHTuotJ
	 L3zfiqxVeRqWqVpcwfffpK3k2jsOYZZpRx07R9tV6nklSrJ4Kh05rir5xel5RrK0t7
	 YRmWohLLvjxXaf4cs0UK7HMVR4mYNykXxc+A2uaJGWYtgvd3GCV82COZ155XN7ukTl
	 61DkFwq45gSQJdojTk3LCYF2RiYYuzGtZ/Fh+dX+3SvqJSyZWa3QH6wkh+xa/WoyyW
	 IRvDaig8WL8LhLxuyaMOZ7F1VdJaG+Pd9M8RpqSUX4A+MVbCqtLZiWRQFgKzuoAwvN
	 La8dfsc6eg/Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95626CCA471
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175998839358.17644.7500728522042939382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 595c41081a9ed7f9d319b0662209ea3edb89e26982c3ed0ed5223f629ddde303
Date: Thu, 09 Oct 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759988393
