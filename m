Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A643845BC
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785224434; cv=none; b=Aw628tOhJGOPxbNz82BVGq6G/k7GPxxtUNqb53ZCrUKfr8Ew4uZn09SsaOve3siUPYHGaz96EMn3NRH7i3OBqAKZWV1XhJSBstByTnhGBhT3BigWmmphI+AJ8u6RL07zlJ126QyCt38sS3HPiByB2qrTQRE5Si11wHOp12V+aTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785224434; c=relaxed/simple;
	bh=GkmvqvNu4CZHR6/pM8ALE3Ci3Oh4y8O2Oe6FXTZFUTs=;
	h=To:Subject:From:Message-Id:Date; b=FDXp2t7dRRrL795sxEKOTtOqQ/5zIvGsbYj4yupfDVkNZzeDEiMQlAoDCEof7wkT7hD/uhQ+c8VkLLCP7dmNhY+ay3LoXC7yFbcpnhdbE92Fd5EeM/0kGdXrA4/jw+aNwb9llpxKl5TUE7FBuYEOV98isDJ/T9W2V/OmnJ70eds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j0gGLd1B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j0gGLd1B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0663C2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785224433;
	bh=GkmvqvNu4CZHR6/pM8ALE3Ci3Oh4y8O2Oe6FXTZFUTs=;
	h=To:Subject:From:Date:From;
	b=j0gGLd1Bh/9Usgg/nuEdSRCMhffgmJeqpX35+5kRZ80lY2XDJw0y6jUUSjPj8uz+d
	 WciWoFxpHSLos6EkSJ/3ZnieLjPMHPco7PTDu/z4pObPMyNvECzxwuaTsq2Xxkt6XE
	 X8uJQExOSJoSb18E0OTlioE2kUCvWDYnt/MHNsd7fZNhviKA5C5wOpZHtulryhs9Wh
	 yFlJaVvsFgeb8NbwG3QBPZM+KfKbTQ5/FiVHLdJKt2Y/rDEVVjkNFOYgfdSpjHPtWf
	 hltMu07rr3hHRgzk65u/GpAqZmGWrCLBwMWvYBvpyhHWa+1fCMIL2ggzUWrtsHKO4q
	 bKJv6rMtzPgOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEE0C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178522443369.16845.4201249670806189901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eddd1cbb42416c5085c3d9755b5460d3ff0153ebde799ed2b436743711f5a57
Date: Tue, 28 Jul 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785224433
