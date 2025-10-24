Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D4EF3164B7
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761304794; cv=none; b=RAdjlJj+qa2LcO3UwuwdFvOKnBAbH//CpZzTwjMWGxy3qXm9tmnGh445Irwi4DnGgUd6ySjRgIoKNQLcYPqZRPTwb3OjGjkptmI2ZhQCvpmhPZuRjYxHUsx1Wg52W/K2D/kFvQPhk4gDGpvLBDSWvezXZxhpzKgmzQJ1iv/0eRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761304794; c=relaxed/simple;
	bh=K9C0LqYvzV/qOIYudwJfQAbdV1vIMObJxPvs45cYLDQ=;
	h=To:Subject:From:Message-Id:Date; b=TkOWpC8s6+kaldKitV/YB7VL/iMxrCkNd2YPGNxf94leRyZLiZTTxte6/5WOzVl37jhi9/x6iFcD02QopPIq/2cTNjHtg+oj+sRfe7urDIiywETJD+gvfzbHGh1q9hBfWpC2Gn+7vHPvErilhYqrro8xXmEsOS1lG0areCTi/Kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vQdXWCax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vQdXWCax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEF4C4CEFF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761304793;
	bh=K9C0LqYvzV/qOIYudwJfQAbdV1vIMObJxPvs45cYLDQ=;
	h=To:Subject:From:Date:From;
	b=vQdXWCaxyUvs9dpBhVDTSJMYYcwPZmZmnksWqEvUfyuSMbCA2L/KbCMJ81PvEjKQB
	 XziZFAR237zlzERRgSnajB0dB0wlbD1/y0N0sdcKDvjXdvXZKtW/coWqlySHJI9J7K
	 thsXRj63oHe1xLNNmE4qljp1WeM6nMpRo415UWPMXyzLBDCCyC/xGa7sEIADT789jO
	 /H/hYH3dW0vAxt41jlip8WVtr+1ItFmeEAVWnUXtjzajRKkSJPcD+rqOxJuHV9/noA
	 7pX/uSpHzjA0FfntbW0Yq5a59kUNYTe5dVPU2Ve/U8FWK3jXB7liG3otCheIcv6CGK
	 peylDvFyhb/zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B3BCCD1A5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176130479359.9871.14618093323530266909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 158ba3758e700a501fd2f70e0bde841060774c66a6a5520d516440a77bb61760
Date: Fri, 24 Oct 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761304793
