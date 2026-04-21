Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2241B362156
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 21:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776806254; cv=none; b=AgyXDuL/IrttxC3InVUsLsDj+1Ti089/L68pPV/HaKsJpXJfpEGN9ioInPxpp0ryRPnRXYn4+IS9UF4qTV+dw23eOs7plMdS8U6T68ExV87eHtXG4l8M/AiiweOCxrDhpc51RtUqXGU64W39Y0xEF1DS20loIUjYiz6LkaBJhXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776806254; c=relaxed/simple;
	bh=iMYn+d2lhBLkdDrYwHkED2EKcgK6N/bIrVytmFGcExI=;
	h=To:Subject:From:Message-Id:Date; b=MX3TVnCKneBQVwQqxHjiFFwlWmm/Sz/8os/+1VFYBABrixywOiFOOKV3GWy1HKScnfuqpOfMe5Ehis8ufkHFK5RXZh95YmBeW3/pv0HAB9cwYhzLyjzGPN4rLsXJQaEiUadCwKCTI0k42MWIi5ljK8JD6iYCiqoETI4M77b2vLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q9yS/SnV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q9yS/SnV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CAEC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 21:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776806253;
	bh=iMYn+d2lhBLkdDrYwHkED2EKcgK6N/bIrVytmFGcExI=;
	h=To:Subject:From:Date:From;
	b=Q9yS/SnV8HnzhiBIAA9MV1y4MqdnONqXOzgNKxJTWVx9xnJ3Z2e5HLINhVgQvvJn1
	 pBAD2D67RrgaDzzKQybCtGzUhKAeY3Q4TmyHE36Z7XzZsh/JXt8J2H+yw+Qwp06mUV
	 sWEF3MGB/Shrvdy15H6mHSAAVwiCUUpS1AxxNG0fVB9aey1wUz0Qr8oD3u5iFFfEMZ
	 INjeuwZH/otCzxQX1zERBShWY6I4S4D76P/xtXZ31NlEHMLeRoHWXNV49vOhJuajQy
	 p5tzWPczHzTWqtAnsJ1waefLQfweG4q9eJlEXc7PtRhYlyRRC6bWklH3FE/u4YQMKM
	 zxDjW2HF91YWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10DAF94CB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 21:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177680625368.29988.8654651988542846454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f914ca9d76317ca93735d63864ec89b39d7c977ebbce96f41f525ba2f46b2ba
Date: Tue, 21 Apr 2026 21:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776806253
