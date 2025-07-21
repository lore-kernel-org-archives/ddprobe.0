Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDF843AB7
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753059595; cv=none; b=uviANn/Sg0BrVAWmM+YUrIIi5zPXIuZ42zTdI42rD2O9nGyYKn1xkMHhbAMP6GdEmBGtgXT/UBp1oO0g4kn3rpmkxhxilJGfSU9jHdt4IJcxhwCEiMrkFBU1I0MMk4JYiXd4JB86fPgnXyuH1uxF85/ts6fmC+WDtHVSex0xwNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753059595; c=relaxed/simple;
	bh=3kKAIpcWij0nXXW5eCGlQtGftYWPe4wfuRhdouVcyRo=;
	h=To:Subject:From:Message-Id:Date; b=KH0De51JQ1FytKQ/ZhAkYSTXJGdNqM+zmKdTFHx6BkgJYDLmAIg6pEtPzP2mUq3fBpKV4z/F0o+ZleQD0Jk6135UIYC2hCH1hH+XYiYw9FLG1VDliBPoBkcNEC35xSf6zTMbXw1NTthfkkfEWilsc6LPjwP+c80bsiTyc2CR7uI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NeV0PNHn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NeV0PNHn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D10C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753059593;
	bh=3kKAIpcWij0nXXW5eCGlQtGftYWPe4wfuRhdouVcyRo=;
	h=To:Subject:From:Date:From;
	b=NeV0PNHnQAP8KxPNkIZgapyVVqUzlRY0BdqfOk/vwGDk9aZ9LlfTGd/3o/r2UyG5U
	 E7O19tVD+IBnVvCGCL/PQx8Jz5aJMljajB9NoRqgWHCZ4q9hn0N79rKfKDijHV+iFi
	 B/ie8j29dgzv3NN/5lbJwaG/iMhxkW9AkRtBPh8LPeuB/nuCF7fv92k+P2dy84ky4O
	 XpkhcXWmX7pXcytgIm16VRhIIHS+4qS2hWaOTGF2zszevVTlgiSvGwcMJAa2foVXw8
	 DKZCojFn52bX2+m3liSW3jAHvoZiVFGz29+H/qajDptW3ibajW4f7VZcazS5j7ZgA4
	 hDhVH1vbE2i4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915E7C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175305959357.21577.10955716212855705443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c122e460a50ccaaddc1054600d30d74c5dee21c9357e529a0253574edeb56dd4
Date: Mon, 21 Jul 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753059593
