Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B55F1DFC7
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 20:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714335743; cv=none; b=hAkWSMT4GXJQSttZrTDiH0D9D86u5+ZY5mbjv4I+oF6LbHWQA9owuqOW1sUhIZUAAowP052q9qgG7abSkH9gVt1zAtA6G698RYVvy5/J4rYko1dtQsB+0B3L3bLzaJ77bP9JUUUekfNMxOweZxdTEMW7lYFml2s0Ac3azs5UXW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714335743; c=relaxed/simple;
	bh=3XFbN28moml3S5MJ8vqPEW/jPTHebJLwekHPNFU34i8=;
	h=To:Subject:From:Message-Id:Date; b=oHOegkSgDIQYIQGFdtvj8IB3CEb57D6+Kgj7GnUf9fx7zCSud+JFHDQBodJc5pDlKwuyTpqkL9kAmpgJHV7rQNx0qkt9KIa1ItY/KM0SVx5As4u2qk8ttZuCDyDtqY8pHmao0rFyMaM+4WYs/hNBdgIBvMzRWF6GFf/Zyp55Wb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/bbmB6L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/bbmB6L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA24EC113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 20:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714335742;
	bh=3XFbN28moml3S5MJ8vqPEW/jPTHebJLwekHPNFU34i8=;
	h=To:Subject:From:Date:From;
	b=a/bbmB6LqYz5OTPdYOVP1gwhOXIkkdG4JcRR1yVh96sbuTdD4YndPBl2cf4Uxc1yw
	 Pcq0dfDgBbej0fkh/dsZAaZDPXC/lvWfYKpIy+Ca3ITwNpdlBOcEYeiY9TIV3EZWQM
	 6+yeeEQGzqGeow2P76M4Uq/oxXjChwaLV3ctK1yMsgJp0rFtHBlgDFfIpEqysi3qsf
	 y+jJu3CIXQLewNvzWK5ZN+yxc7RRUHMy4DLsh3mY+Eq2AzyML43pdH0+usfbldMA1O
	 MuGj/lQiuPgxdXkek0gPZr3t7pdpRhgD9aABv0sI26o7hcPaTLizGJnYR44kvZcAjl
	 9queiOPnOrXGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7536C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 20:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171433574278.1909.5170168374809139438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72c0e206ff20fff7010464b29786e8fad1de35f59ed254cbcaecf3a720b232bb
Date: Sun, 28 Apr 2024 20:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714335742
