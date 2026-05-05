Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B2631DDBB
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 10:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777978654; cv=none; b=q2x1GY5Xau1bN4RU5QyFYlH9gllAm2PYyu8tCNltWwleELi4v0Jq1fTnxwzFMnqZsFdlm9XOqZ7PHZC3yIBmD75XmrNGm7/YMfo91QrUEbDopcotFRm+jm8zb88ZcjWjmDp04nPj62YdWQuS9UJG1WOjlO3fBcRu3DAmkO1nEt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777978654; c=relaxed/simple;
	bh=F6H0yb8BOXSYoyWB6/O9Q9FCvCLLvMrGjqKZN7YrQqY=;
	h=To:Subject:From:Message-Id:Date; b=M8k6cdi3rIwAYqXV+nz8PznPuDQnMxA+rEU9Q0HJfk04pl1PA2jihFFJ78M9HM5Tu9POyopLhlSg1AsswALugVQEl25vT3ZFLzwke3MUWVVFeMbvxN/4qdBya170Qv99QuX8eWve9KUHiHW0xio/l7knZi/Yz/z2b3BWVHoVkkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MdmLF6ew; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MdmLF6ew"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBFF8C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777978653;
	bh=F6H0yb8BOXSYoyWB6/O9Q9FCvCLLvMrGjqKZN7YrQqY=;
	h=To:Subject:From:Date:From;
	b=MdmLF6ew0ddm0+qKJsmPxLKP4ae8xJYUZ51dN4TA/OVkgBbD/XLiDmxohmidNKzvZ
	 1nY9yTRCVbx4ReCqHu+QDCt7aKWFd9L4zoKNb2wFdy4wBcknZcN0kgtgBYI30diSq4
	 wq2kVB7P1bhZxYdsHneTXS7yOt+OiY7zMkqn3tgXqzcqjDEPOC4wDT74XDGt5nWWAm
	 SE7sW2jNroyY8p0mKsUhdi5TFnx7d71ERZXpbirxYSKk0ESoEDF48rU3Icv76c3prL
	 wOFYduffQS6yd41/dThi2Ok17FAnyuLPryUsD1y2RdtQVaUQtgsKY5+OERiVQQgie9
	 keNE15yQHVtsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE64CD342F
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 10:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177797865369.3291.6941399451073047965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b2f3aa9df41590da203e77f3d413eaf563d2a54c4a7cf93c1cc1e57273d54fb
Date: Tue, 05 May 2026 10:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777978653
