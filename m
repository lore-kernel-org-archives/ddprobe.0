Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3651C10FD
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705777097; cv=none; b=T7Vb61VnkUncRwPyK1xm2HPjB3BeRF9xkq6TWiNB71uZJF5Sie1h5WG91PYzFvQuMwMSJCH52GcrpoGIyOa6bgszrShjUy5aU4SMwHjYeFPvCK+XhdW7RzDWr67Coo4yGaHXKbOC6TRucq2qxx51AKA32nKnkgaT4EMn17OVPq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705777097; c=relaxed/simple;
	bh=1yhK68HPbHU6pnBxVBC5lc/hqj23+s1hoS2DR1mL4Ns=;
	h=To:Subject:From:Message-Id:Date; b=PWald4at1QjyAs6hVnvFpJnKgqQxPEQUj8z91xOpzjaqGkIfYqecnVcwkVcL67s+il67mmsR78HPXEJkaJ2HItqhfWTaB4FLtcoynUiHvu6XQOUN7BQ6Mhpjam3IB+bCMCwuWKNCf9Y2si31kr73+PCLKQOihCBC/+4s2sqhAkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eYVCmh6k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eYVCmh6k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BBBEC433C7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705777096;
	bh=1yhK68HPbHU6pnBxVBC5lc/hqj23+s1hoS2DR1mL4Ns=;
	h=To:Subject:From:Date:From;
	b=eYVCmh6kUDSkmXOyoDLKi+HnucmGdGLCAvo+SjHT+wy6GFEJLxzB2B11mpUuC0w7R
	 RP9ksFPa7qLHf1nAajefXL9wYQl8foUVvrF3ZelIDxwI+6yN36bbufAC26/M9OtYfY
	 fjUwvDoQ3u7UfCEo+iwDSnu29qbWKW7gbwNb4wBwc3ApsbOmUw0KNmdfS2dRS+JW0G
	 99sJ9Jl6EU1lXL0QaUfDhJhh5haZV0raAErF6yey/F/HzeQAN5DO5IxpWbRra96ea2
	 b5pKP7Nj1ZsyLfQ+oH2yxplcGrDliPaboDzps8zPZ25Z5H6L6lIYFUON8mzU39jI1j
	 9zNyC6b+nX34A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60207C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170577709638.32576.18097132298628202607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98ee49e2221c6c9dd0cd8ff6e962c5c5e13cc96f51b1834be629cfd59db3f2f9
Date: Sat, 20 Jan 2024 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705777096
