Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 077EB1B86C7
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766676834; cv=none; b=SaiMOqh/Eu1xBvmNakLWdNE9btp/unEnGz9zVmO08puSuGWAB0IG/OQUeF1r1Z15BDcHugTKiUUDpcXiDJRz+kFOngF9lx6pvkpXRIhpEgZE/yOLpLtuNHkxzi3/0VBVYZpbIofJqn1fIaICWhoLNV3v6XcWgp+9tHLuyess22M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766676834; c=relaxed/simple;
	bh=kQz7Ubx+NBytF8BrQ2YxDF+jb/z3u2vG1rwSHkWA0rw=;
	h=To:Subject:From:Message-Id:Date; b=XMgMatJhdS/gWr5lRhOqr2dMSLF9xRp90nKRRxI9WfNSDt5Daq5LZ9ija0NkMK6OcVq529gIdnsJlB5U1rhOCCTg08nyH8IeLiaJCvXLeWp+7kqBZxB0bzJaPMX/OZnqQU5TBtR8BPp5Oef51T9re6jQAQqoUGuWOsJU2ZQu8Gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PF7uQRwV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PF7uQRwV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91B6C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766676833;
	bh=kQz7Ubx+NBytF8BrQ2YxDF+jb/z3u2vG1rwSHkWA0rw=;
	h=To:Subject:From:Date:From;
	b=PF7uQRwVQlx4Vy3SS/eVx+yw+nZP9IkjNYMbF2gptBLgPK3yMtXOu2Knr9EI8RYlA
	 mqWM4EarGXbgvNcr7TauKZAhtkM/91pzW+FByh2IKyL5tYW3xxQNuh8ypgP4tEeQxU
	 PUh24CECrVen5fTdbVuwhUK9aiP1KJUYke0XZVaXxZh63DmraLQCSp1fTeJlbHSmYc
	 UQHdzAEfdFb4NJJismiAR0ynehSNKlmIrv3109tM1b3Jg93DQO+KbW40VgNedxEhDK
	 zCBpiB8nT9LdVq32K/jZmPyQKBYOMT0L52ivAu2ZOXQUAhPzbjoFvpmPea8oJEBWSn
	 Mh/6uCrCKxi7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9435FE7AD60
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176667683358.14160.8351751272141031048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2772d956bf4449d12bb029e0528815d81dbbcea49b48717cde6a4b5b0717b7ca
Date: Thu, 25 Dec 2025 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766676833
