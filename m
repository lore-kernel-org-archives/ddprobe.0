Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB0E370D45
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 19:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776886654; cv=none; b=IgQ3r7h2ick7NcNcM73TdMoHzCGReLLIl1KKeSufx8gE9GDyq/p1MnyvY1JoDWewkSJqi6fKVf0uGAxkZcXY8B46v/pOGcFO3DcuY9Qrda540Rs15ZJoD4gm5T3ZOpmKmrVtZz0HcLyWZ+R0UiID/jXY0g0DJJrGyN3m1lcePuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776886654; c=relaxed/simple;
	bh=DC3ER84VluB0glMxFKmnPgOf1IbtjFBt7CucehmSxrI=;
	h=To:Subject:From:Message-Id:Date; b=vCA5RrG7HVA9bzMqhlr+hIvrJbm7TfMlV+SK30FOQ7zbwbeZVZV1A0AgMQGCUUnG3/Yv7ubQp2JvgtehgFzjKtX9AbUihQURs3NKSvLB6KQM1QGoNFUlcqSQvw8bVChWUzkj9BDt2bLFBsKCZANNMtofiZKMm58uvjJOuhdXB6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MsPD46ZW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MsPD46ZW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F81C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 19:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776886653;
	bh=DC3ER84VluB0glMxFKmnPgOf1IbtjFBt7CucehmSxrI=;
	h=To:Subject:From:Date:From;
	b=MsPD46ZW3FcdNxeP3i09eZLY9Sdbn056+Fy4tG0OrAQQCghr/TTYWVqw+T6Zo6y+Y
	 RriltpoFH4pJcmbzmpTfUS36fokCfBx0rA4sExUXYqQn5wWZAJQW4UPnrNByWl+Zrg
	 uDtlN4GRKwNHZweS4KqY++CZL78uGy5l3O3Fa8gh1i7EYEdX2Xc6LbhU4t+xxNqC1R
	 oJrSxDoxAe2NNBa1u3z369HLJDplDxowbSHM0bjoNgGDT8z4+9YFJR2A3hQzPBYFU8
	 OMlZpckjvI+mv4/47vNGb1ryfKpTL99v0s4smoD73V2o7Wu5uVhfBmJ0C7EjNOoCtz
	 S4xC8liOKRCHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E7AFA1FEC
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 19:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177688665368.7654.9197716003613461386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cd2cbc2a0d6101b88c6de968eda2b4482a05c7383b56fda88df67645862949f
Date: Wed, 22 Apr 2026 19:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776886653
