Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236F2302CDB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761168594; cv=none; b=l4xIKJx7/Wn9+qXDpexDRT9YiSTYKlNKJMae3YDvmC76sF//K9+oDtRnMavx/+XNaVZU9A5GVF3NzVzzZLetqF6USBil8NAFHIqZMtFVnqvF8cGA+/CvoPGFvlWz7gDLELXQ/KlHCNCmB4hvvRMi992wlSpiUycu/hakpCw9wf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761168594; c=relaxed/simple;
	bh=aEokp4lMHNlHb+69UON+FEhXqnPp791UbKawI1A9GCk=;
	h=To:Subject:From:Message-Id:Date; b=nNI5b7sYplqpJjlINHoJfMLhGi2rxYkJtuRXyc/cOQYqY/zmv4OGome5lav1l4tIpr9Z28i0mjpvzC0n7jYCHwmstgmnqNrtf7oF8OiwYdNx78CQOxllguHYk5bkgitVPRxUuUq9EYX6EKLd6tsvzfXYoxhuTiMASIfBYJ1uWwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fWh1IEpM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fWh1IEpM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB21C4CEFD
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761168593;
	bh=aEokp4lMHNlHb+69UON+FEhXqnPp791UbKawI1A9GCk=;
	h=To:Subject:From:Date:From;
	b=fWh1IEpMTxOt71jVniJWEqZMZOAx11GxO88GGrYmEGrFOxed55Ftv60/127MJSeYT
	 8+Q10LhTIbB4sLlfk0epHRK/CF9dVhMexuUTXgfbozyx06x892Uhbo6oqX6nrAtpBh
	 SlV0yIXV5r/iNMIW4FSrWvEdwyjS+XreitSWPgGVzQ9optQz17XZa4XGAqtwLJ7pKR
	 xl4xKKlJeNm5yOFd8qRpKZJ9jTvvw8FL5WT5GM4ECSH3RHAcn5dsbOsSN4uRo7l0RB
	 LJPislIxCm3Di/HxMeSaRSwk5b5DkajuDPg1Ys11IkqVjUYO8nZCndTpBhkXDX+p6l
	 bisBSlAx8J6QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9569FCCD1BE
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176116859358.31219.5966161160401323461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a16fdde084e527a292bb40ea8ea94da552f37a08de7bd764d43a4cd162d01454
Date: Wed, 22 Oct 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761168593
