Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DDF4C9D
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737784554; cv=none; b=l25Cp+gzDB4BKBiJF9IZzlwtMUBHd+BwdEbE5nzGhdMQm8dtvFOmLvET655xkShCBnMthq3Ss7BOPnDVnxh/N57gyDEsEJ92gmW7zM03D17thEokE9flkCouC3luYCFM1On3JSrzOCoqa/IiRg+1LiXiL7uzt8ZvJjXR1Sbjw/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737784554; c=relaxed/simple;
	bh=2dKOWyttkkLEHRdoQkJVXxZpxxTTVZ+LfiRDUMiDGAs=;
	h=To:Subject:From:Message-Id:Date; b=BQbIHG1sZvLu1KYZQPbOQ1bRFMFdX6NmysxS1u2zx3x7Bo2VvuORs+BRO2ejDQNRK3UR/O8S80vhPbDgV1lwU95pDMjUc4g+Idk60fx8Z/f6lHHsP2OCFlrxZSb2eGFlNwNfJ9T5R0BZxZCFkBb2jzUKs4d063EvAiU88w2RT9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bU3Jai4H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bU3Jai4H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE367C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737784553;
	bh=2dKOWyttkkLEHRdoQkJVXxZpxxTTVZ+LfiRDUMiDGAs=;
	h=To:Subject:From:Date:From;
	b=bU3Jai4HL0q2kWzMXXdso2040w+G+yNWNSWR8sNJs5+4yQEWR0TXwUbm4N9BKwRCb
	 n6Ryw/3K++R5PF7el3Z0sjjcYc7DqomW42efKzF3wuiLcPAqmN93e4Ci7EGCS4T8V+
	 W1H4cTcuol98nA4kvnblRCgy4Frzf3dEKywHrKygwaN/xM8Xrd9GwJqtVdnYtblh4b
	 xh9x6egy7ZVcKH7f0AC2czwXpz03rgT1iZCXTLw9oQZLqx5ZOyzoZOrb7p+As2jv4t
	 NQqcd/fH6gKCmFX0fuvztYTiLnhxiq6g2K1nHi8XEHzLYyEGYzmlZiYYY1znz3u9wp
	 9xG3sp+o86gaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94844C02182
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173778455357.27586.10342716818563252126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5671f4d3cd70b8f45b85e953e0a98dd3ba5b1c0817ed8a9aff3825dc9dbc9dd0
Date: Sat, 25 Jan 2025 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737784553
