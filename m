Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A90B3A1B5
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786233634; cv=none; b=h59xntZJIsz3k4+N7bD+EGxlCiAbB4vt5wyAwHD75pgmQUl5FwVjliy8FtNMha3GMY94pwu6s1xjFxndrq+JPP1SJbQ9+4Ace8QfjBbwjIn/WfXB9/HcKRhu72xAEXD3tCnpGToAWW7exSNcc9O6GU9Ezk+WNxH6tJ6EPubJo1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786233634; c=relaxed/simple;
	bh=0O+fAq/iDGSJmgCq1mnZ+VZ6r0xv+ir6GZilV6YMyL0=;
	h=To:Subject:From:Message-Id:Date; b=TbWozJknFdo/CI8qFaB5nGJ0rp1SDaMsAGL/UCV1trSa6zM/dYfhugVqwyF5ekGOxI+Kot1/lnqL95V3ZH07sENdJglx9rN5XhwXl2ZF8ClPBDcJDrB6ra2KUulE/0SFBwXOhH9ZFo+Cwh8i6k35ViqZ6hYC+EA3T6DFJWgGqSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gAEzAhXS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gAEzAhXS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D97D5C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786233633;
	bh=0O+fAq/iDGSJmgCq1mnZ+VZ6r0xv+ir6GZilV6YMyL0=;
	h=To:Subject:From:Date:From;
	b=gAEzAhXS0ezMvmUrfBz4Q/51yZ8wIjkju/laOFr6aLfck82m2y7n3RHkuRWIVFCO0
	 47VjPrdHkCq25xA6jOzJcZcJ0kIsNoxAZOaeioYJQHLAMTpa9AB7QmBiAOxAO3qCWJ
	 1kv36GcWGptpJmBYNJYdjCEirj4w86YzoLU5wolWxjPCuv0rGfuci2nyaeWXSC1EBZ
	 avv/z+eJ/NmqJbF27VvoqBZIM1FdvRbc6OG7WhiCG9wV9GVbe4PLREpVo9bHb8zWuP
	 Ihnu+nGuUPJqiivak76iAwoF+fK8gLxe+5CtOrGKpm/MjyF9HDsBqXzEWOSsRS6ckC
	 RLN0HPKqgumfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B054DC5AD44
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178623363368.11466.9054714972621870187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d679133ebdda645c14a0b73dc6f39c391d363961d1e951cf99faa3082cb9ba0e
Date: Sun, 09 Aug 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786233633
