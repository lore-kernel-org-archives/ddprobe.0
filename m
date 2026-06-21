Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 551E740D564
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 08:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782029794; cv=none; b=ahXA/SN1RCUTxU92Hu3yv37PhhGQEk2H8jpFtyYxxi1ed8AhiXQULYen1FL1t3pegNO36Xx0gY3gCgKuf1ILx/YKY19iWcUaEbuY3WbI8X2mYh6E80O9nqFZNvwzfEV5jSI1YSInvbU8T/l0Y/fXsPgkBL5LkVkNxxKhrLiHzMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782029794; c=relaxed/simple;
	bh=g5Q142Nc86Ibfsxi0n0u/ypDug2fwZrHq+OZ01ZD02U=;
	h=To:Subject:From:Message-Id:Date; b=ezAf23CDKlZC3DCJ6uvYpgJ6b3A2/Hh9UOhdDazYGUrIbeN6BeCBcLTvRyzT3t2nnzMrbpSQ2k602U8sF+1x2+HPdcWPjcWwrjc8nLUA96IbgdN0Jn4dciFO/kqe/sj1ILzTVcjVIexhYQtgBEee/Xk12Q34pm1r7rjrn4ORk3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YkB1D+fE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YkB1D+fE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2333C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 08:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782029793;
	bh=g5Q142Nc86Ibfsxi0n0u/ypDug2fwZrHq+OZ01ZD02U=;
	h=To:Subject:From:Date:From;
	b=YkB1D+fEeEhekagBafdm71b40BXXB7XXV/CD7/QP0q5qrns5DcpyTU4utFJvzZniX
	 /0WGunXsO+XQ7vi95DncKzMO0rSEsaoKPt8ERMRXgbkrNdFwAL8raAaJHVkqQw0Hbq
	 66c9cDbfDxhVHGhVyloOmt22kpNoRPzJzeuLT2a/MfGFwV1p9lNLOW4nTwG9IBgM5T
	 W12ymMClqzsNTrO5BzLiHZ7XJKSYKamTxoljomVcKtuMppS3LD0PrGuZHzKvJCKboQ
	 VXeaggw6hrZ4Oaz5EBLof4FHi1RB964GPZ0Dwjl5x8s6L5ll1phVhUkAYJKcocMgNL
	 6DUW/HtrQ9lIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4BE9CDB466
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 08:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178202979370.5442.15368185632022049430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43f573ca5fbb7794ec505377d0642c36cdb1045ac61c938805f936676fbce03a
Date: Sun, 21 Jun 2026 08:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782029793
