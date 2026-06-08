Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DB72E7F3A
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 06:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780901674; cv=none; b=BK/0u5HXkoXjxfI23EgTgBHC9XpWv5KPMu0sF76r0jDHkb2yQfnsKXabq/jCmSbOBJgHM8kexSxhpwjhn0SRUAADDfNGGxQ3C2ewFyEOEUxcfiVMjcVP7rvdENlKSLP/wXvcblM7FaSue+Ao7CgHfLKoMguxPz1QM9QSJSZ6svI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780901674; c=relaxed/simple;
	bh=x/JeJomHGNiw+A7v2sowSYzTklBpIXrnI6HAp+lyWH0=;
	h=To:Subject:From:Message-Id:Date; b=BUfhNjKYy30a5mbxsVbChZnnzuMPLiZeSPvlweji7yhiZOXkk7We8+Pco/ZTvJb3z/bmbnE+LrtsRnuZyTVQXo1fOMowEYcOX07+lqLRV9mjDwrri/UPHHGAYBwBcNPPMDcfz3NIH16tAiLQVuwF7PBpC/WZsYR+RD12oNwqWdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PuQa6AVi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PuQa6AVi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C809CC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 06:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780901673;
	bh=x/JeJomHGNiw+A7v2sowSYzTklBpIXrnI6HAp+lyWH0=;
	h=To:Subject:From:Date:From;
	b=PuQa6AViRzvjgyqZ++kClNSd7PZM4gvqr2P9b9OIO6qWpZ4huu6IzNxwdh1W4sT6A
	 gQGBxZu1q2IAdhS8tJ5ksvnZiBERJrWvQ6AKTgzcj+AHDgkVnwv3ljtKL9ifZKlbom
	 i8xeDeDOW2CNLzT3t6w02u6E+Q6nlgfJdT78jZTFjGonRa0HQELVK8nWjSZLBqVe6n
	 wom+wwNes6xexv5IDSQyFB6BCYntK2vusb+gKToL/nr2OxVy41gFgZRmWgAl4stojO
	 PFDeMauNKE3YyGd228/2SaXc+z4s5qDQ4bLtJCTABqoVHSZyk/QU48bZTfYs7QbrYF
	 fj0cgv+sioEyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0B3CD8C9D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 06:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178090167370.28011.4764035538714234806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95f3a7d0c6cbff66416afbf392cce4030a81d6ac5dabc75a2ff87a3c26da2e9f
Date: Mon, 08 Jun 2026 06:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780901673
