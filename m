Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DAE26B75B
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 18:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778437834; cv=none; b=e0WwJJlj879ptL4gre+wnof5ycbGlE8MbbuOAxY8rPUUGaG+A3XJvVQL3n7IFm0lZ6VuBFlcR0YfTTbjBKpMryi3WOW5W4tVSRPuvPso/j6ZW/noQUhNecO+Lef3Tedr9EUnVc0G/4BkqzvG1rv9Ji+iGzRS7voTPl/N1q3/r9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778437834; c=relaxed/simple;
	bh=s2xUjE8OZRKJNWZlT6pv7Pg5x+LerRQRTkzjbeISsGU=;
	h=To:Subject:From:Message-Id:Date; b=bTQgy4KYgvHyLI6WNdAfDcVwTu2+oOAa/5gHAd0ba5JNGphuA7XLxN9CGnp2UWixFsZ8tumaBoPLAea3uSdiKByHw/nKZrS4PlDBFkeF0D2cVL7/mMcMxe7QHrue0nEBovwfCBPLBYhdCbZXeUpBR47d/86UnV7Pw0SnZR2efaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ctyj18rM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctyj18rM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3E7AC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778437833;
	bh=s2xUjE8OZRKJNWZlT6pv7Pg5x+LerRQRTkzjbeISsGU=;
	h=To:Subject:From:Date:From;
	b=ctyj18rM3gVSDy4CHwvwqRDNkIxGuxsYn5Bp3X8lWXeDyDiJtXvAdyXSRyHlhEEbh
	 82Ct4/uEguqqsms2C1588xQ0ec4mFtZlDi7Bg7vg3cPWfYws4LbatcXppoYgAGG/nC
	 koH9y/llh7a8I/1hBd2jclJXUeGH0wfalfQoKKbizbL1lo1mSRzphX+crIZskOO3Jw
	 AhWov3oRmP0daBe2uxChCuxhxhfqP07WqKGKykWp1g/qWDMKkPxqdd1/6cKYjzaLrf
	 RDG4bzID7oU0f6x0uNi1FUhAVT23XtNcrndeD2Eng6qCu/4w81+CxcAKGGtQL8Mh35
	 Ps9yVEvxtFOlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADDCACD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177843783369.5441.1948317475529392497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa96cdad1eb6e3e7975f5672597ac31c0e3395c17753c23ad4598a9dccb0afd8
Date: Sun, 10 May 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778437833
