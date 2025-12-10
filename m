Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ACAE324B16
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 19:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765393974; cv=none; b=AMRn6jg9dSC3mNdHThonhIS0dq/OsiWl6x74NB153nMYjFIn+9x0otHteia4X59p7v7mqDSGntKTXkNOTTO0n+p2eR/JgEU8XNfu84aoecnt6xKSdornFVXnYdFnht5kG0DBskVGQb6D3efV/HBDzUxjOc3vQk0xP5B8LgD/cp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765393974; c=relaxed/simple;
	bh=O8qUSpcHqHvAujKejMhXesUYV7JgIgouDuVs7XHIZ1A=;
	h=To:Subject:From:Message-Id:Date; b=gaNY4F5EjgjlSh7ROyVrhCLFs4L8vQKWrgK6OSnSgXIuA5Wpm/EZ7J+MRqoxRDUiUXKznwT17BXP6fgeCMmWX0rja/xDN5eFk7l2+LkttYGYAz+UYPaFwHSCGXe5xpws/UoF5VdKZ1BP9Ci0ibJCzT0DBKg4x88i+wAfxzuUYbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUdkeu/1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUdkeu/1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD206C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 19:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765393973;
	bh=O8qUSpcHqHvAujKejMhXesUYV7JgIgouDuVs7XHIZ1A=;
	h=To:Subject:From:Date:From;
	b=fUdkeu/1Y9p1jXBVjd0OcJ7IG85VvXeN/peXnt5wIUK6uo+m/fWYLeibg/dViAt1v
	 vicwq/2Q/9u3ORrgi8ntik11WO26zF+mF3GTsOldCHImsilwZklEpmbGE8lVStXU57
	 6/kPm1SeguKCDufEg5Hwc8KnATVMCliWj6Iu7wlKLT3fn9pE3XKzGDOVo4QzXnDS0S
	 Jq7zuuABy4JFbnjHbb5yG11H/J7ZkC0Tw7ivJHCOIrHhovRoFRLm8AvZMhSqBs+aYu
	 ZVKBK9+Req08qOIXU5bBc8UIam1xMUPlH/nXsbvICogAVm4IlSalPK4peTyCHoTFrA
	 LoeOkK4fEECFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932C3D3E774
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 19:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176539397359.9745.13065945104851926367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d5f56cfd034d98e93402348f89d6f6dd2c040ec00a7d438515b189711c8a566
Date: Wed, 10 Dec 2025 19:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765393973
