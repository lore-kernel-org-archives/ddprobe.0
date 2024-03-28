Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E6D11849
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 19:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711652897; cv=none; b=lAaQ1VxQLeE+vyvqgU09mriWavlNUB7y2apHL5/P/Zmq648sqgpwD03s2hkYToh0gY0JrieuhwusD4zygq58N0x+TJ//f7o1dp9vzDtFhC4EBzQSBUsaA0MjR0GKZrLFUfENWokLA/FksfsibkWYFOa++j9ZtGLnkhoVbto+hzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711652897; c=relaxed/simple;
	bh=bbyqtOPALasGY5vWxALcJPwr5gQ/alkqLRtpWLSdX+Y=;
	h=To:Subject:From:Message-Id:Date; b=kprEJhNScaZjaaLcdZn4RksGgHQ6QkrNmQcEbH+00MhDkRSomThKgIdJRM9vmO/OEI9OqMhKsTLL4TrcXzUD7yIDkMqPEf4GTO8W168r0knzGi/n+maoPCY+ucKmt3uTnhhHQAtaCsKtmGkJbVk0WmJgMNlCmoTAuWYSK5MYy+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nLgleP6z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nLgleP6z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F029C433C7
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 19:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711652896;
	bh=bbyqtOPALasGY5vWxALcJPwr5gQ/alkqLRtpWLSdX+Y=;
	h=To:Subject:From:Date:From;
	b=nLgleP6zlxHifIXTxrm2kb+MYmBBtPBiZTLyLo8kgMMyzrfdFCkD+7FW5zaSngLPK
	 LzUtUsufywI8zihaNXIE1aE8iTiaM6/1nmYGx9ZoqTXvMQLHbIdLTrRIQB6shx+KjZ
	 BoUjOa0NGUNUqIEdIWhcmoTcm7HuvHRx0747a+wkx5tNAbF3HntWPsHhWLjT+D1L1H
	 GyY2TA1NerDHWAqhZ3nUYLLht3cghQrxkR4MTEDAy9VflE32SR6jcS0+JR5daF9dFc
	 1BfB3eCb7YfItdAFjJS7jNxQBGgGmsqqzpMokbM/I1QNm5xA3Iq5kvzGToJDDN9Xn7
	 QH2ofqO2i0h2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B9C3CD11DD
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 19:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171165289641.13190.14522441604387153747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec71f789faedb6d4d7cf9d33d6384a635877534afe864e769001400e495451d4
Date: Thu, 28 Mar 2024 19:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711652896
