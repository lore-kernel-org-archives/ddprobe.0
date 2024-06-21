Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66EA28C1E
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 18:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718994143; cv=none; b=SDsFY9xEUyt3GpJPl3u0+hGy8/zVOxXN1RT7NmSrY86t7FSyRfM33rfJ+3FaHiIsmxh/4gkkTVpPS0ynTLhovRe6l3t2X8fVH1LkNvYZCkiGCU2wcnvfDKnhNUG3jL52lPZd9H4cg/oP6CBPznyggXGkMzsDSHdYocDS3sPoXKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718994143; c=relaxed/simple;
	bh=pH/F2E1pDKZwx/0L7y1yTvWmg1Y5X3TxVb1Xm+qbR+M=;
	h=To:Subject:From:Message-Id:Date; b=cqtCjJ32TRMSuZn3AoxTu8KPIhkdaL849+zC5AZeJM/AIbU5maq4LVmo8qEJCZNHF7S+Q5Lrn7tON/Fduwt6DdFZMm/sXvXqUYU2JcRkLSI655heEl32pyqmxCjHt9cSWYgLka5O2evPHDnHHkkycvdHwnNM+u2B+EMEp9GucX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhPW036x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhPW036x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF5FC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 18:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718994142;
	bh=pH/F2E1pDKZwx/0L7y1yTvWmg1Y5X3TxVb1Xm+qbR+M=;
	h=To:Subject:From:Date:From;
	b=dhPW036x+PHQquUjlpFKwzUs2W66Dfqu7dZT9Nxat8Tdvt2TZvOiTFBuuwfMrXTUb
	 G+KvxD7YbYxoT/xo66tb+2iKeGdwOgSnPz+5JplBVmAQKboVZxzTstQHEjfZqbptvX
	 jNHUcfBbfhjbzy0hStVTK8a6mCzX/zCiWGuyygyXrgFgmYKvS9fuTMQHcLZyUZhUFQ
	 x62Bp2/oXG9S/EozzDJmDwcCzrvsA1AhGq121KDHJwQ0nTTCDbLUURh953uI1bo6zl
	 C+M+VVJHpCA/4zUk9xVNVmtg3jF4W8EwaE5Xmsb9WQ7Koq4dRKyzldDpFh9fMfxAVk
	 ll1aaISx+DxMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1BAEC27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 18:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171899414277.16343.12329924334068693699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3edfaf4d9770480a32be8c519c633a806a9a2e5d09ac187df1a0dd266703e6f
Date: Fri, 21 Jun 2024 18:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718994142
