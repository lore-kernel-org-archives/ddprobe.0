Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 808C31CF8A
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 08:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717231463; cv=none; b=qaC510pWdPGuMsehuGfeqhkJ5+5yqrEK8qrKbDXEe0khCaaW9ogjhEDsEiUQvOCJp1eGDlFeSoK6SOG3+lbO4Fh2lLlGCWxVqrg0GyW1ucdl+hFTY+JGrIf6U41x8pvL4t8Vg23OaJwynkKfVwKnPoZtxA9Mjfc7pLWDslZMte8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717231463; c=relaxed/simple;
	bh=4Ay3fK0yZYQgtHNsm1DM6ggzbtxEjY4L0QobRH4KA3k=;
	h=To:Subject:From:Message-Id:Date; b=CvRJ/s3EjM/IkOd0HPCkeyquX728R9HfEQsAG6Xb4/AFappADUU2tUOUNEq9ZNAwvw4pdN0F6HyjNvUMGHjfJOH07UetnyTHTskQfT++fMCdnDLEsbRVMAgEe0qE3sjh2eoRuFe4Y7mRZWd8MERB+Ct8/h+yzSMYjH5ZtVdyBmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j3kMmxlF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j3kMmxlF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0EE87C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 08:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717231463;
	bh=4Ay3fK0yZYQgtHNsm1DM6ggzbtxEjY4L0QobRH4KA3k=;
	h=To:Subject:From:Date:From;
	b=j3kMmxlFXCY6lx/99tjOqWdkugfAlv+cRfI4XyFENVcXDIDv1Z3ZT9x1qxppOu9ew
	 ZJyutvqZFXv5+F0xbOWAmMGXWMs5DnlUvrlVSf+ZWH3/C4bQfwhtvPvZsxcQGCP7B+
	 5mt8ONAHCwW8aN0paCDKJBVcszmQhd2sfYrhMK+YPMYvMIfwenSYdiUCNH2JFXUDAf
	 u7NGoVEiZTZdbjeqGPAvkrXLzAkWaKO+axq8SXFYDOZrJ3jWTjbKAGk0Oo932oIPmS
	 PKLodhuu+/6MoCdmnJiZpD/M3ysKtv4796RANQTbuD+neMNDU3FYxJ8XmTCWSW94yf
	 vm4CB9j7DE0oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8477C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 08:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171723146283.19519.1831663223347497685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e8a5734005d466e18eb2488ddf4d2bc70a06d9a5f94cee06d0f4263c03ff7bb
Date: Sat, 01 Jun 2024 08:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717231462
