Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49C7339CCFB
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788076834; cv=none; b=SyUzsr6/cM1AQbsG1B2W6jX/GoeDG3R2dCIDZS8/mKFXW8jT4rd83cFM02xqzSk1IB4pZnxnGTzfy02midzqIoLP0cZsuxLsBNQSv8iymi06EGHO/ZCriR5TYle1K6ICw0nCO81tkIxSzFl+rlX2QmBuwdSxtvfRe4AmO+JkrMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788076834; c=relaxed/simple;
	bh=yPc852NvmKxKbGjOPUz8xC0un6h3nkjDbl6ozBwIBGU=;
	h=To:Subject:From:Message-Id:Date; b=YND+XoVsiNcf5OupAeVb3cCh/kjO1itBClvN4QTn16Fm6PS/M0oVdt0qfofh3Kl0uREWNC9SmdhE8Yc1RjOehstACEheawcGGRXn2FaeIf28TqcfM3Vo1pceCIRC09jOmIUlWL5jUSf2Ujum6GUNJZxlgZZfF2N7oDA/8X4BFcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+CUsmim; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+CUsmim"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD825C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788076833;
	bh=yPc852NvmKxKbGjOPUz8xC0un6h3nkjDbl6ozBwIBGU=;
	h=To:Subject:From:Date:From;
	b=V+CUsmim5jJjRQwgXQvLjxjMdRo0lhdC6kJCUEWkBRZo0W2fKBi2SQpJYrKbEEW3F
	 DZxNnrck8p25e5XF3/mMrIK/eZHaW8O6FwviJwg0YPmzT47tqF9Nv4kCRQihrx/mLw
	 nqCXsAyAkd1/Ssf9kJClom8I/Dx5LDZeK7pPn6udLsXV+SGuwYbLmmRtAYmTGvsi4i
	 dRdWUQ61gNnDCY+vZzfHmXEIq9MddiYX0QcCooxsU+ucScH+YydR3ggtRcZX4xjuIs
	 UAWFMtMh7Cdv4YYr2YUHBxVDudUmJRD1NmLiDIUevUyTiHAO1HaULP+6VnSCDS46td
	 GwACUbqS9auCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D2AC61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178807683368.25787.3424839209386047361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fc313c39a7bdd1bca886a89e1bea7781e62ca730fcc58c22412677eb0d6af1b
Date: Sun, 30 Aug 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788076833
