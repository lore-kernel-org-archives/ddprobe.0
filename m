Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F99136E57F
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 17:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763572914; cv=none; b=VKUFgvPW47ky/+hDcQIhubZsNEkvHBrnolqtq++knhYUfLeH8vveQWNaZtLv9l3Hdlm2LwIuBbqZU0Srlj83r1jP9O7gvfasiAuGJX3kRW52EZ52XApGhUD1n+Sh0qTIug8cMiYTh+nEYImyFtR9KSVlxQq8XJgcbQqMC3bfBw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763572914; c=relaxed/simple;
	bh=TaCbnBVFfxUQ56gRD8wfP83q1PbDpBngc2/gaWpxE74=;
	h=To:Subject:From:Message-Id:Date; b=TtZczCBOIf8JahQtpCrt2CD23CLwKGphlYgu9P/UdjknmzDbQ9ff0HnInwnzpHcntbQi8w5ro5TNmZE1fzwUfN38CH03DqUMced/320YzVLOqN0VKMUSAkQ8D0aVGwFbFtDrL9sNQQyF3fpmGYsKwvbp+ydY0MyR5a/SJjHZWXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RMhGGDUP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RMhGGDUP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40DAC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 17:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763572913;
	bh=TaCbnBVFfxUQ56gRD8wfP83q1PbDpBngc2/gaWpxE74=;
	h=To:Subject:From:Date:From;
	b=RMhGGDUPsTuhZS1UUewkDFL7XR1Mp9abNbGntpGJhekLEJHi3fzgKXpThaXITpZnZ
	 1Vl4ed2GHkeiTvcuFB0ObxdcTPu5gTzeLUzY+LnN5hz1IjqWGTZbwl3cVWo0D3ZuT1
	 oMe9TyDyI6Hoh03AD1XclfVzN79pNV1H2RIvCvNAlXXB+MmQDCjh3EhzQx17AycLfy
	 a6QNf/fKMoATcGPQRbYG9kdHDYMM1c3zfoAdlPzq1bo3+vNkK88FQytDwgyOBhHThj
	 4sfyKSm2BApa/iEEfjT/wt5zgAfOvfaUxPWe1EjQ+uLxU7RTNubd7BjRkJ8f/f9vi7
	 1qS295ExXy1jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B2CCF397D
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 17:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176357291358.11530.2810025618748898489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6acafc6d87470acfb043446dd24d86052bfe94ae6fd565bcd6fe6263823d5e48
Date: Wed, 19 Nov 2025 17:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763572913
