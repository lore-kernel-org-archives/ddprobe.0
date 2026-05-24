Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 252EF3909AB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 13:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779630754; cv=none; b=m+iohqWmtAyQrhmOBIYYnrteu7hEcKhxLQncNQ3lhMc3uPLYt33oY/BvWS/T0yfJUrj9q5KdtsJJxYjHLd8hHa7hf0EHlyUiUQ+pAef0Od5WVE49rCAB+wNS2bBrEkU+xml+PQZuUU77B+COnGme1fdMZr8uj6EIRvL2cSJu7Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779630754; c=relaxed/simple;
	bh=E5m19d4VASxpQhFzsNWgW7mMRLLR15lR/lUdWDn7Fp8=;
	h=To:Subject:From:Message-Id:Date; b=ACgL2kQj2NWDKTq3U+Zn9HI5GGHoriJMuAQ2yLa3Zrt5K1AdU/Y4CMI6qAv4X0mCA0m+8grcG3NEUHqorT4m8/8BBKnaSz38A+Xr5PxL8s4Fg3U85jubUQV0Sd+IoTpJemtvpflyIbnPDVl1vpbW4LscfyMo4wuHkwFEx/kZXkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nKtt/2dh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nKtt/2dh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6892C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 13:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779630753;
	bh=E5m19d4VASxpQhFzsNWgW7mMRLLR15lR/lUdWDn7Fp8=;
	h=To:Subject:From:Date:From;
	b=nKtt/2dhvXbKhjyQwJrX4RYT/vY07zCxFjXJbuxoCUFgr801qTaIIj+5lsxfMK7qJ
	 pu+qByjb0xRpQhPHsf3zTzjRVwLWXmI2m/sCpSvjMglU+JuQT1f0YbJrXngKKn8/qY
	 3+bCapIOOJuTl3t9eBz9JXjlqajIWxKYfuDT+WRbDcQpbuH74VNN3symPCIb8LZjFn
	 6NajAYiqvVik9CULlvWwOWfbWFXOZqe9mkSZAR89DihqaIwbqIc+qHI1Fl3ZuwfklC
	 G5fQJ4QvJ4KAaMypn6SCMqz/3bAEWBwaWlDI6oFOmsHSfamxUzOKfcnyIiuHagfdaO
	 REbirMOM79uGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBD2CD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 13:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177963075368.22875.14989791752381481053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bb8dc6ae21b73cb79c2351699fceab66f3fc7f17830cacb7bf20a70208a875d
Date: Sun, 24 May 2026 13:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779630753
