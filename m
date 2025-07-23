Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3BCB23A6
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753232393; cv=none; b=s4StyMkhksHWgqYsexd8NpYakc7DV1kFYXM2HN5rlX0xwJDQ0Y9KeKH/JXnWLswaPPsV3xDlhT1NLbX+4Y1zh9zIBFG22+gYl8+MojDmr1B17NSdBSHt8tyBrnaX7CDkPCgu3wdastqQZIuFdwl0KWUf2KDvhAyvbiEgFhfBpGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753232393; c=relaxed/simple;
	bh=HBVLQq5d2UfsPPSrtNRja8qqrjZ+fpN22UED8j0eb6k=;
	h=To:Subject:From:Message-Id:Date; b=p12O7XhZnl92u0TwlZQhI+YEIQsqleSkWpNabtg1PRXJNvOs/yx3rqN8LH2WRxLS12VvPWMm8DEEQAy8OFUo0Pki9KXdHpfaUsiCkxq7ZuJ9N3HJplxFUSxeBDQHRtgKrK6s9bh+/xUPN5QKWb+uvVaSqLkS4EWMyWn0Q15cFBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OZZCmuK6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OZZCmuK6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57BCC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753232393;
	bh=HBVLQq5d2UfsPPSrtNRja8qqrjZ+fpN22UED8j0eb6k=;
	h=To:Subject:From:Date:From;
	b=OZZCmuK6qroyKLvD8Ii3cdR85dh9QymWgg3kzgN+4lYRrlf/971G4ioesAYCOisXw
	 z0DgarepVneCD1aBo/9Lkieqe2eiXU/Q7B2/yfD3XD3HQRAeNBYKW4tvSDpPaGfd6v
	 CQM1OcBwQ2GWCK1OgZ2PTwM/4wNm3ssqwSvUK+Parlu0NvXl/dWk9lZIh4ZKziRY/k
	 L41pJwV6uCEmMwhv6gK7ldcLJ+3AogBURYKvyzE5smRbRgYEXo9APKw/ftzUdPqWGl
	 UXDhxE79IyUoghv4IeAS7VBzsWgHu9r9vFd3N8EsjKFTDWXOAA57f+1Z0cJt68BXWC
	 I4ElSxZ9tXhmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BE9C83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175323239359.6899.3278751202933081288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c18caf1d9dbd0067aca5ae34177d67c9231469f6a74c5686aeb8290cfe0fb79
Date: Wed, 23 Jul 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753232393
