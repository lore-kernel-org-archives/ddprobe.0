Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7FF93702FE
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 10:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763547715; cv=none; b=kw5qQEqN0Ly+w+QP4DqGWZ8kuLePRJ1G3Td8/HLJAzcL/riyVhzDmMVTMZ9eWkdDTJnnsHE3vU7scOj0HykaKHhjrzYFnlHwsIVIXB7t8bGo6SfOVZF7KIuBZ3QRYf/64WZPfNCoRlDYDuaB4L7YR50KW6uPkkdWMA1qtphCSXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763547715; c=relaxed/simple;
	bh=ZRi59JUzZJbIvz5aItgEi9ApQBuX+CHcGVtdvNZletg=;
	h=To:Subject:From:Message-Id:Date; b=pVdVwimOibwUYrknjsdKSLYYgfbz+t3KTLELtYSfW/HzVp6MzNuYhtDfPx2svK5H2x03mzJCWydRYKrE3k/DvlHNF9PbbCuUQlbTSJmgMV2w0g/tVnYdfDf4fVz/MOLMEDRraoP+B/0Nc1GZ+34pbSneHaDdJfmLi6rRnaMjXGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nLSgJK0v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nLSgJK0v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66E4C4AF10
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 10:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763547713;
	bh=ZRi59JUzZJbIvz5aItgEi9ApQBuX+CHcGVtdvNZletg=;
	h=To:Subject:From:Date:From;
	b=nLSgJK0vOry0wvfbK/mVmHp+7+ynWL/GYrpnjBfpP4RXdXjFsWLynUrSOPKQ418nV
	 P3qo1g/cXMTTHTWth29anhdtpOepXMlyxgnEK0HX28gtyYeZ3u+J0O9HUxSstViTOb
	 nxdLBcVL+58+8x83InyNcQ4nsVu7+4i4QfN8m2DjPfS1QZK+qok2m/R8ZZRTxjIDdb
	 nk4453tfUSUWiujNYjK0TSOzELl0oyPvS1KuHVmGNma/ypQi7ay814liTAxQjRXXZY
	 o1mW/Sf+XXx6qlCQ9IpIrmX/PL0TOtKpnoCEj3Kes7hpvBUsUUJMyOu5SAs+Kt5Sbz
	 zdn6HCAAUHHPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3185CF3189
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 10:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176354771363.9130.16000025141061840801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc082a2760c79b936814053c57c6ade1be53676a79bbe5d73909c4852a9c8915
Date: Wed, 19 Nov 2025 10:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763547713
