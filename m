Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0B218D
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726364754; cv=none; b=U1FlHB05Ay/l/jDqRirOJO7Olzu6BudOjnRSIVkbnGs/VklTBGjJ8WY+VXS6vLDk66kWMnQjbDNe+uHI+CJvwxtE5pKImG9QTo/A0anE6olOBtUlBUuQsI98d9s2Fk4mX+cHGuVVKmIBxm3lUzgt/lcvs2Ut3PyidV+8vcDsOBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726364754; c=relaxed/simple;
	bh=xTfeYtcU6KLnp0fhicIuLjJjDovWQEiT9bOLO0uNt88=;
	h=To:Subject:From:Message-Id:Date; b=E8iLBGNu5SYq6IpmVCSUu7BYZADa3qDPNuFRwvgi4lUusImgnZNs3LbjIKaYe9WzX8RqT2joxstAfnneGQMkA8upAn8fRgkReuiKw0UWc7uw9w+lmjsJJ5/Wz5KerOpgu3BwLL+nSYEyl3/EP8mfLWBvFTFBgTW1/x415G2QAYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFD5708e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFD5708e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE9BC4CEC0
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726364753;
	bh=xTfeYtcU6KLnp0fhicIuLjJjDovWQEiT9bOLO0uNt88=;
	h=To:Subject:From:Date:From;
	b=OFD5708eEwxVzd54jA2A4L/jSTKmXrNTAWcYx0ETD4z6GcqfASmCdK59g6hXG7m13
	 bKCgu6GXVeBIPJPCllghymf7nxHJceoI7I8Az1kfPsPXaXciYTrNVXbB5K4yU0pqbh
	 9TPXW29qCcdMjEJujjELYFGmrhgB+6Kp/MyWQarHfyP8HV5gdPS6WAaM8QfPypCY+8
	 Eq5a25yLIY4r/1kPMb/1xnLEyQXBztikExdsp+V0sYiO9sWm8K93p4RpzSxxS0Ew6P
	 Rl+zI2k/83dM3O582ePU2XttVCX+cc3cBdGY1aPnVdS6PWR5Vfdhft3UhjPsmifjHg
	 +Y+YfpfwCnNXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E7FC35FE1
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172636475359.29623.5369157890871962411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c79be5733a6907c673d2d4a9fd191b2aa50b263fb8ed69db65433bf96d4873be
Date: Sun, 15 Sep 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726364753
