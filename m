Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F121A9F80
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759000794; cv=none; b=DTnCXqSWiPlHl9X+URv0+buu+rM3c7/KftXfP2B9p6no3o5tFJ+osu4TXFCZ3ILdXWRvRSMdAUE7QBaGhf9FgeKH+P6rjWCPDOYjbs5zjCH8Ok0+dwRGHZRe6DDgPfU1XrVNWx2OT0kSGiB9iEu3JISzvO7h8WZqBhYHi6663ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759000794; c=relaxed/simple;
	bh=mkkty3weGG+8aZvD1twL24LTsmUX2qXy5KcbkO7SHPg=;
	h=To:Subject:From:Message-Id:Date; b=lk+oyC9mfKbQD5CUgpTr8cT+s52iPxt4bVTu18XLsT7lMgEqd/1ikx3uZ0eKx/emFAhrAu4bz+3Egf/l0n1TapARUGVB5CQmyQdmT0afV7rDqDddsfPPNb0lUoiSZ5JTllyWgRby2fWSmvSmif8gf2hK2gzSfwXtXFiXeCyO+n8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OiHkr6cJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OiHkr6cJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA610C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759000793;
	bh=mkkty3weGG+8aZvD1twL24LTsmUX2qXy5KcbkO7SHPg=;
	h=To:Subject:From:Date:From;
	b=OiHkr6cJVB4MTmzjNNDFrv3k0anSCijcA6+KiCs5Lfsna1sxESaWtbIramaGd70zL
	 ObPQgdHNUEg4VfxnVPHhKHAK0Ura9R5qWdWhBMBSGUtcsmneT9oYwxUoWNADp29XkV
	 VpDRBBQ0rYSOuwS8F+JkNAgmH2SJD1uFi1tS93LiNTwfZeGfGUGddFrlfTQHHlVx3L
	 +f9NypkcHV7LFho6GOtX21lWlLY/tOCsCWpc99ExwFkphmvr0PBkCMiD/kGuYbMbCd
	 Ji59IaC613YVtX0N2rm0cQP9AdaeXc/aUwnL/H0Sk+re/Th5WZeDlrC7xSJNzcU5Hu
	 BwHL7YfO9ZkJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E15CAC5B8
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175900079358.11028.3275423149124366033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11b4328cd0a7d67ce01455e5f2dc771ac45bdba5bcb1db08f32c219a042e7e57
Date: Sat, 27 Sep 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759000793
