Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE03150997
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759969794; cv=none; b=r0b7jNvDVxSjIyxtY2qSZRUhJapJnYuaeuZHmQXW+fVR8UtrTaM1HK0ktU2O38rEv3l4TmrRHWji9i8sNH/58JFxweHJSP4axnE0CV8fM5txoImTHvTQuunzwCwKIPUCbEZd3VHAtcjLGYOgja0QJzJEOZKy13jBbUimmWcRVHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759969794; c=relaxed/simple;
	bh=AtBid/L/P6i3ap8XH9y4mhRjVnwFMi64x3HcHnpgWL0=;
	h=To:Subject:From:Message-Id:Date; b=fAHvQmkSOllJhZ31cPiLFoxlix2T7O+QswbhfvCjRlMtDLTxflhd8BTEWhkNCg20/PvgD4JKht7LdqyEI3wPTlcTmp0pxl0lwbHt4MkKqfaomsUaDyBzHLha33VP1Bo/HOfjm/ZbtLmSeZSzVofOJLqBSnbZ5AicfGu+OfF6pUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJTEtGjc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJTEtGjc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A49C4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759969793;
	bh=AtBid/L/P6i3ap8XH9y4mhRjVnwFMi64x3HcHnpgWL0=;
	h=To:Subject:From:Date:From;
	b=AJTEtGjcDJKzNXdEYrCkvbWm58uil2/aXfCHDv0xHDFg/NPfQT/LqHLAKRiCMMSUu
	 VivLALygRKoz0BHrU9MqJVHRWLP7XJkWehzx59p101+6XorogBR2bUZnlonQ+P4B5l
	 f79XBm6+ZUWdDVrAskNZ5IQiOXXTxXrJEf7515JkXKyQeJNdyhqCsuGaGjGduLcVkA
	 C0i0KyZ9lrXU+8hmwS6/siwLK0a5mKZAdtb6lE95ROygOSWWVZ++cfvccfsbYbz7rA
	 jKV1cAkAWIqRpplLpUF025+AlcttKZJlDT7nhIqEfIYbdHlvO+tXAsqxemoQQnkqHn
	 8Sr6YPA0vVdWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F09CCA470
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175996979358.5725.6796042217043425359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f604ec99e574062b6eef43af2d285ff5c065679fed090379f8957dcda555e2f
Date: Thu, 09 Oct 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759969793
