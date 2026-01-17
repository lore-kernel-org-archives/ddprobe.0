Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A7F0288D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768661634; cv=none; b=fSayPEIYwwfS2bcIV6ms/RV+veOiIdECGdZUO7UFPyxRJTUKok4+0Ye+lDCU1P+wIsMBLPpQ7kQVi0UcvBmiHibjRLzCHkjySxFzCT9Q5fuzAa7xfyHIoExWCgvMKoIDJOahBj1Iu8/Eb0vwQmnh5GnEw3CVx0alcJdJRG8yC8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768661634; c=relaxed/simple;
	bh=y1LO8IPa7OmbglNHVCl9QpVjbR6sIMKwrpWNwqNEO24=;
	h=To:Subject:From:Message-Id:Date; b=EzE3KtwMFCzsK5lhU38vYWuRJ9c9D/4IYh40TECUaRtt2HbwYq+FaW0NAF/mJoyJfrbIe/LBumPAyXqRxV+JKXp0sMjcybzvEgw89QKiwwhpz1F3MIJTSfLZMUYijO5xxMyYjCLqCdDddx8aKR4pfd+3EBnEKihsfT6dqH2BR+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bd45OTTY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bd45OTTY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6803C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768661633;
	bh=y1LO8IPa7OmbglNHVCl9QpVjbR6sIMKwrpWNwqNEO24=;
	h=To:Subject:From:Date:From;
	b=bd45OTTY5R0+dXNXxPzvrggA0BK33KqFeh8JLIHfVUEHexXd2Y/6O+uz+KLbVyJDJ
	 cs46oePqfhUJOovvEjT7+bFkyx5wN7XwvfL2QqHK4brMfmoyH1kvNeW6YItRpWg2Un
	 dVzKYQghAzF5yJ218rgXLe30bbnOR+XEP1eDDSyqj+xjr2qyopbmGKEoXGjqEYgO6J
	 u7zzPAnFhUjZxs1zskjWuRtKpdYpThx3qmuMYtlJEXXSbE3Qj73gG0o38TxrJEFAgg
	 xJCORmdKZtSJW3Zj5EcHRXKvUgCF5y97szLjDZcWkOukKVX1eHspT1IwCxG4mMbF5U
	 yqGisHiYAaRPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9322FC98327
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176866163358.27870.16644019317584203320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4a35e170f73ea0f8b898da258e53d75934c80f07c5e5eb9d7ea447b7f856012
Date: Sat, 17 Jan 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768661633
