Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAD61448E0
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789606834; cv=none; b=ruXCpqgi7RbLdlPnHbRMcf8NelAfDD1IKX5EQiE+Hhd/0mblZI5CldkfzR3PKUNt/yqSifRvlRydOvL5r8vMbjZxDd9/IcXVb/cmmgVWqbkhIT8E/VOy2iNmbn+Ykx2xugWwpmIS99IjXZEEX4bpTBWTrhPkNXo5YCpHH4kJXjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789606834; c=relaxed/simple;
	bh=jXAOnfwgXVs6NZwJLx/6Y3kQmpnXyBG5p+cYVbmTDZk=;
	h=To:Subject:From:Message-Id:Date; b=LCMpcHHTRr6IUIzqxt78UO/Lr7aOixqQ9/Mn1hL2q/sCQYseCAr3ujt4gddW6dCCRS7DrNb6cKYgFFfI4EvQRX5BCoOgP5L/UTJ68mhAplKV3wwGjoU/7jO6OJSRBWKi1VmRLQJ4lHj0BePjbimCsP0iKV0IRqhOz3j7BgNdxds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SRwBau3X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SRwBau3X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBA1C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789606833;
	bh=jXAOnfwgXVs6NZwJLx/6Y3kQmpnXyBG5p+cYVbmTDZk=;
	h=To:Subject:From:Date:From;
	b=SRwBau3Xen4YyZZHhfBnE5QYfKgHaL0v1MY3kf9Nl82gdTTBtLztPPukscin1LF+J
	 xV5/VBi0bknw5DTjFDnhzQhKg7TLMS3OxJwN/NhIjtHIXmtz8Rk3dAPaZkQB6jIa2B
	 G5ZDfM3yvlGHlmeOHVhl7IPV76WqTPo5jS+lVuhNGbWEqutVHcVXpKLPat/ltZPkvJ
	 0cOQLvRkMcsimJ9UBRZUoROcc8fQl5HvocS27k6+we8dqdl89Sa/VEHCOKUCfmJH0q
	 juQ3geCSfxNpJah/P/Iwvyc30nJDsN4Gr8LXTVErEV9DR+3c8t/BFqJKuqyDJRfjwW
	 IUczIQYXAGV0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5BCC982C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178960683369.5639.12656729865896436546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12eec3ad6a92593d3f97294b6268689991c29f7387c3e9a795e8982a52faceae
Date: Thu, 17 Sep 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789606833
