Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C47EE279918
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 11:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764156773; cv=none; b=gp5iSzXAw7r11ZKulqU3Ws3jQegGUxz4qqJ/C9qSc3323N31OWSFmrq6uWFajiQguHaI42bl7GcJqlN2Mh8SLX/QJa7o8WBHsyqIQTI7I5s+NbR9kG4t8Kt2a1vEIVIfop5vxtCIlsepFt7z9s+qElcBaKmkQ+ZiHsyiakiHsz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764156773; c=relaxed/simple;
	bh=86WHllKAgQuTTFhqPiBVChomjiKKxA/Dp7gkFFT+hj8=;
	h=To:Subject:From:Message-Id:Date; b=NFpSh90dLxxKNpFM1wL4XOFR8bWZMBw1V4OQZsOR1YTAw6y+A0LvPGvgQVPalllfuEf2vb7o1OynbJYdIVXsbtTTp20Qz1d4hLAq8QuAaWjX8fPd6ObEQmGY6q0TbcxLQSuJbPFYBD07qhKkVLxHTM8MSwGDYdNQfJV/OUqz1+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fi2iueV4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fi2iueV4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3614C113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 11:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764156773;
	bh=86WHllKAgQuTTFhqPiBVChomjiKKxA/Dp7gkFFT+hj8=;
	h=To:Subject:From:Date:From;
	b=fi2iueV4bOICERi/JqbJN7y7Om0bk2aBypEC2JuvQz/gyV1aLIIRX9DfcCCzbKXqE
	 UQMqADOst3V0boYQXcKH0+C18aFM1Z7108bdwXQMPCB6SzBHROQU7oxbzg5igg8/wl
	 zn9M1dd2GTqSbTAF7w94Xz50y91gQHJuEjJ6SCagTcYCRczN9yzCMH3YEudEiVdFRa
	 e0Ves2CapGIX+LFTLNdIrZEBZud6RDPf9PPAn7M53fsBtGSgnuB7duqcBpxZZI1uk4
	 fi1SbqFE7YolN91U/qF6LeiY2lHkbgnLHExL3eoTa0BVM42ARtiZd5BJajJIqgIUPW
	 dsUs4IeV6jF2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938BBD10F22
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 11:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176415677359.30431.1989672619232819470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6484a5ae6f2849ce6d63ac746805b08a77decd092ab9d3d352d89a560b949b4
Date: Wed, 26 Nov 2025 11:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764156773
