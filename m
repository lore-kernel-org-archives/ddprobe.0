Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A8F23F36D
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 08:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740989934; cv=none; b=LvNoVB2jRm05LCJYf+jvq+g7mBQYmuuYCgOodE7swgdU5wxfeBBKtJ6iaAhvdJLAlQShU1Vwmq+fsWqFgNzVwfswSn7WzwBjDssRPZtdqzs+AvJMfNVYS058QIMTX5Vrrj3T95jfKG9CunafYQiK0CXFmXuo2f32pGHhE/XpZz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740989934; c=relaxed/simple;
	bh=CJj0vGQA22HwzuhbjtVB4UMXWOvwey1gplco1AW8AD4=;
	h=To:Subject:From:Message-Id:Date; b=Tt0odX92P7ulXbGeM6uBVozoUpR0lrYTR4rEnpPACKa4LNq1VfLdxWFcpEs3dPU0LDX4WOcRP3UUDsjtPe4qaGVYpZcSwA8sfzhO/6N7L9DMqlpWZO4CVVG+fjTaY/J3uSzVkWnFRrCO2lGHGxNgP0jQz9YYPyKKxCX9vkthNI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFvH0OGO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFvH0OGO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB4DC4CED6
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 08:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740989933;
	bh=CJj0vGQA22HwzuhbjtVB4UMXWOvwey1gplco1AW8AD4=;
	h=To:Subject:From:Date:From;
	b=IFvH0OGOpQQMDYz/3tWgpsPn/qfPIKAWDm7vyR6rUBZakeCeXmoOoLzlnyZPe32Iv
	 kAO9xNUcNWW9ymYeqQJ3DqV75LwBAouaNgWsFOfrf3p5iimb64jWaQ27sDAh94ivzl
	 FB3QUlrEUtzRdcr3MhXD+TqJ/wC/noDpYO9AzbdUM7qjG2kXkfEqtpxqIeq72Bbi2K
	 tB3T0bwOxvwaTDbJgnGWPhfZoQFxy0lQ+SPzGr1B9sJpw81ZkNSXHDWI3iqxxcVQjV
	 A/S0VYNBvh3OJTe/q9Sgea8wtzc+jjh6E2ftChMmIvUnJ8LbM1Fi3aS4hZYovt1vsK
	 dWttcuaEeDGqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90091C282C5
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 08:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174098993357.31897.15515471867993078781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e21a8cf2b0e46abf83552c724029404949b57f15bb6ffc32c5461c3c5a162598
Date: Mon, 03 Mar 2025 08:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740989933
