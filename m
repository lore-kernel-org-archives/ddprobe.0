Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57385178395
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745704794; cv=none; b=rCRHvCEzrk8XwZoyRdYZWbshHMUoh1igoWI+Ioz547zwek9GhCCibgWY8OUi9gAU1etahun2kBeC4K7Av8+TNACkopA9Z3vNIX4dH17DnklUvTc+ER2KxrOHsqSJH9iuZIfKhN8dFHKZd/FxWA/eCNbkpSTmsjwMmEghzHerbYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745704794; c=relaxed/simple;
	bh=yal+3tBkh7+Oau3u3M6ZfaZ3qpkBKhGqSiwytWs2sZU=;
	h=To:Subject:From:Message-Id:Date; b=aQxYSLUqH8fV3chcU0xtWWfYQL+bHWwQI6w7zDBfSts1i3C5ZgxJY+bfbL16E6SLp5QwviXsQDha8+gXc30beEKzEiaFjoTwjXbajxOMUDuuDOJOx+cQFcSLzaKOUIbRMsYqJALQLnR9KcGGtdYQZ9ztuekmnsbHj3JkV53YVuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ktS8ISj3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ktS8ISj3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37FBC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745704793;
	bh=yal+3tBkh7+Oau3u3M6ZfaZ3qpkBKhGqSiwytWs2sZU=;
	h=To:Subject:From:Date:From;
	b=ktS8ISj3ivXN1wo0IU7ulH40kiOfAduhnWNJmNHXGSd9SZmVO55mtqqko5+edAFtn
	 V8XKsqc/KIXddjkP4kk+/uTPyA87q+18phgBbIK2uYwGIv5ZOVJzS3f9lNoIbbmzbS
	 dQ8Suiou6cX/Tt7v0vAd8cj0ErZKS51E/WovBmbdGR+4zf/XkaU6rJNRMw9ZMK53k8
	 y6TMmdCW1MzV/qp5uSunBQnOpPFL8kq0L2NUtwbEYPTpE1HC4iqd87g6xatb4pYW/G
	 q3ppCzv6cBS7hb0x+KiQle1AhvwV+dkY2K65unchH2sepZVRWMumRNhpE3MqzlBYMa
	 1mPGUkQRDwCgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F8BC369D5
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174570479357.28373.5646101422257177231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c356be9f174732f38762ac11bdc35b466fda4e67faeb55f6835644b64614db39
Date: Sat, 26 Apr 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745704793
