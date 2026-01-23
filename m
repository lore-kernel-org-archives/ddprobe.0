Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111C2310777
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769170434; cv=none; b=N8tSiB7OQ4w0C99hKBOdG8oDFDvmBxDcK0ZxSQn6CXnmmvg4vtiGPSq63XyopBcQuIlU9pNk/DYceiZ+tULk/IlPprxzItlimCb2AqWK6l3LqFhi0fZbhQcBI/aaOhKIe/Yh7UbhVagrR6+If4V4hKMEsNqkfmGIt9BXrNQ/Z1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769170434; c=relaxed/simple;
	bh=71Eaa5tCzhUdQ5obwR9sNTFzMS3CYmJI++FxS0tK0v0=;
	h=To:Subject:From:Message-Id:Date; b=LlxjRf3euYFg5/cGGj3tGaYC/OTaK9Qcxqxb3V0U+rIIvyfEYQhwVUtIMTX3+Fha2NaHE31WuCYLh5wjiXM16QfVAEk3Ticcx3yl7ECiqwq3y8Rc8NKpQeIT+VCFrSHD+BumxjArSgykWsdSPdUxgx/53WXwOszlWs+yBvRWG4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K23sVGzN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K23sVGzN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFE7C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769170433;
	bh=71Eaa5tCzhUdQ5obwR9sNTFzMS3CYmJI++FxS0tK0v0=;
	h=To:Subject:From:Date:From;
	b=K23sVGzNWTjsbwN9I6pl6mYFdvHXA0WOPvM4mV0e+OtF03VOzA0Ha+SoOk1woLXj1
	 myGZZJaA2wy3WlkaFZzWZSakt+VRN9Yb7oH4xTn5hcKW0UyLE3BWtPo5kjP5EhGJvw
	 u47jYweE7FQTzGxOUB4ubq7gnfLHT19/Js6b8xocs9FABTDT7Z6BsrvmbER4g2l1z4
	 dK3iFgMImOaYKLIe1S+oyPNNU7Of/yrBlwzp3QDBPJRBOnUBZtS7aE/T4LUMXIew2B
	 ubej/rFZGuH5W+6UfCq5BpwsYWBXakc00E4I4OQgoHMwBhlIK40mtaLW3XZskmxUOH
	 PB0yn4cwDhVXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F945D72379
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176917043358.25300.5456465676859936890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4839b5d6cd2de624a9785a46f9e72728c69a3fa66bfaf51bdd17c7fd10877ad8
Date: Fri, 23 Jan 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769170433
