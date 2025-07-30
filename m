Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3748235971
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753864794; cv=none; b=t5ipWTEv6ZxqwdOsmDjhzKmSq30Kx27IPVwzM2xaLuObw86BpRhRPdO8EUOqCCnzZ8xzwHbEJAFCzIw6nxGFohhl0jeWc/ptVuVJ90YoAnoiuYGtct6RuBsgteJS2i0eDiy68zXBIvDQxJ7+FfsxNG/9XZ0CzGnBJXCSOwq9MbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753864794; c=relaxed/simple;
	bh=RFIn6BuE+KC1WnB8iOwu7T46r5qg9KKB2MHm2kaWYpU=;
	h=To:Subject:From:Message-Id:Date; b=d+VtNEcwmZV+cVV95fXsSZBDVRKvBDrV4E+AHyKN7dTH99CK+gXmkuVH55A0tdj4vCiEprmDGGo9xxO+3hsxRU79PAFFdtvskE2niQsXVrC1eD0tfc7SdbZExOZjMKNDLERfi2doeNBwv1h11/hXQM9Okti8Fo2n+JIkfdbkdfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXAxfoUR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXAxfoUR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76A3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753864793;
	bh=RFIn6BuE+KC1WnB8iOwu7T46r5qg9KKB2MHm2kaWYpU=;
	h=To:Subject:From:Date:From;
	b=UXAxfoUR+Ha1UMEG+nrXIF20DQvzhl1zdMlk2VUZ8Oa72NJPsoq5VIFMuhw8b0nwI
	 xXEw6waGk011AKrYerW+C5+N+NnVDSkHplr7nMwIX3KPdLdTcxuHteWzfkjIQZ5GKW
	 HMqMQgXVJ2qnmHl8vhFO03CmWKSlNulgdcTidbfyevvbA0KkmTeIeQ66VN+4d42pVU
	 zj4tstrZrn/R8iemJKu5jqag9Ysw54A1FsfBoJ2IXtjgxPrLy/buzWsrq6BZT7fNIx
	 cHRfNoM8JvT/GdOo571mMp3LkqlMWqRRn44ipZr/SAUvnLIc0xuIlzg9Ae8daKrBNj
	 d9HRmZatdwitQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C77C87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175386479360.7978.9996070457640824031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83f49e66687f066018b0abcd8f12dad208db80f812232a64d6449cef26de5477
Date: Wed, 30 Jul 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753864793
