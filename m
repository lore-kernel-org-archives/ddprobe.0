Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAF0E3242D5
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766852033; cv=none; b=UOwxkVdIPX3KonSmJvJdwWvXLWA3UYQfREWD/p09LcMtJL/gqSId2FGp3d1KtTfoX/2D/CwqkkBx6izrAFYzNQyBkpKBzzUEvBQDdyrwub6o2uQhUkr3s2q/PpvdWJ5aatR1qqQkZ76Jmm36Poc44ShbG0qCENptD1x5YAfrebQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766852033; c=relaxed/simple;
	bh=5GRCoDaw4/eKC/bIbpFO0+6ccJIUaQoLw8CwUP9PGrg=;
	h=To:Subject:From:Message-Id:Date; b=D7Z/7RfBsLvIaBhcxVpMP0gJVlYCLWNxSo+8rOzhzEigrSSd+32opJE5gxjek0hU4fnMHvWckV/w116j/072fTsE+ftgnC/bqwoqxfbqIUry0T/HHzxS3S9E88y45t95sa0GphaNxS7qoi+Lq/cZPcVqDP4DV1vCiBQoKaDvK4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KIVZCQIa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KIVZCQIa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FFDC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766852033;
	bh=5GRCoDaw4/eKC/bIbpFO0+6ccJIUaQoLw8CwUP9PGrg=;
	h=To:Subject:From:Date:From;
	b=KIVZCQIa1mWyepr1CxPsjVp4UXkpJvP//4DQjYNxGwpPhVSweSJvTSEtHsF5WckWM
	 G/9/ZOfiaKKB4jJdk0FJD5M7Yhi3WeeDfL/FSmHDKGc7CAhMjloR3aDXyeeVxnRskz
	 jZm8qtC8j4FdCVWeyVMzO9UCidZrfgAp2DjYSFIWLadp56kYzT3pzg+tYFbNOhDJ+g
	 jzQixKBcuFLFoimKjJ50wWc8wMZ8NHNJ1s0Tw8UwlzlwPe5NXN0Mz11Vl7wreyMDSB
	 Xqd4FB24mQ7kFBEAxCHaqXVxCfWWtaV6F6dAuoUUh37H90IOnB1qLubJpSkG5UPp4S
	 fxsi8yJAfEyTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A9DE92714
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176685203358.16088.1003482574893546539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82090e0597c10d00642ca5b5e4f69d4d69adf9e373ab3dbbc92b2f9943941b9d
Date: Sat, 27 Dec 2025 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766852033
