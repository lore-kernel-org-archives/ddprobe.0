Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235DA38BF87
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772101494; cv=none; b=b54MQoKKkxqt2XbELEoi34ktETi5FwZdhXYWpdfrHiXRdScTe1ueYzpBUnvDX9uAGWMp4nXGzUUulEniftU0YwyjhEM6Si5hj8IguPo1Y4Yux9TB/RiolUkQBccMvcGPi1Bu2dRHTkUHLsgiihxGZm6rzstxrSCrC0k+Mhc8L5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772101494; c=relaxed/simple;
	bh=khcGw5ZiobV36nIyi0NRxF6mzkxYcdfA18gLr+XRakw=;
	h=To:Subject:From:Message-Id:Date; b=g/G6+OMoOMvlyrhV6CYUDRyT9k6mQ5sa9lFh9jRXySaUEGfmDY0/1KQ8rIboS4rb7BDqMSoWGeb6hagOKGAhtNMPWAp7ovkzfSlN2HIrBBl23Vp3PXv9ZyfgWE0emwd7OFjUGQNgNuATSIMWL8nDZNNc9WFQ6MZzZsB5gndpe/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=py0TYWvD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="py0TYWvD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7165C19422
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772101493;
	bh=khcGw5ZiobV36nIyi0NRxF6mzkxYcdfA18gLr+XRakw=;
	h=To:Subject:From:Date:From;
	b=py0TYWvDAiJXxFNEhp6cdylal0UrbsvqMCPRPV0Hqpo1EI9X/EktOjuS5bCwS6vNR
	 IrGIeerP2D+fc5pT4rp3Fykup0f4dBf13GmfQEssAT8kWAV5IP2VC0hPqcXBdH4Kdu
	 w/WHyW1aV+Ji9fHxJTtzvtBrv1auqlc80WNzhkm9l1solPx1K0gL4P+EzK1QRuWaE6
	 ScuApT+MH7n6q7UHA/PLwwfeW4GcT9L5fvJKoOhRIOr1wzcDU8DGhwvnpnX1RQ07G4
	 U/w5e7/VKYuzuTjt4TIlot8y3BJTCYIlv2M0jicqtztv7wW9bmgvCzTHi2mrdRZWdi
	 8B/r1xQ17jG0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9361EFC591F
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177210149359.30154.581906760966596535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07a8faac5351f66c9cc1e99b7b35d4bcaeff52c91d9e15d2170357aea8961623
Date: Thu, 26 Feb 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772101493
