Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7DC280309
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789270834; cv=none; b=QM8Ru8yeXbki0s5S7uMk5YXGgjtgVBWtmAO1YIq6Jr03X11yvwZECfGLwH+90pnCwwhXE5UllwmKnktWjvkBwXhFC+WMkw/om0j3gn5CRygynK6iJsnEjMw/y5VikEXV1Dog322QezcDEGlYv/Eg9cDB/a1aDQ9LM95TGPGhlQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789270834; c=relaxed/simple;
	bh=+k/fwtIrq2K+M6NtVVVljdZrO0EkBhcvBb4CqWS3udM=;
	h=To:Subject:From:Message-Id:Date; b=lR6miRsFFS97rrjjrSSB7bARx77lIeDs3PWrN0+JWuU2AN+tdttekCeqxyyksP4FBTvRy4v873tflfSYhHd0orsCUWbX4DL546+KjHdethf1DIwWXXnf+wZ8HaXS8yqLy9sFPAVJQoK8I3sN4zF1wtZd3yQqEgJcMs3Qi1L+TVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OodDamsj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OodDamsj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F82C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789270833;
	bh=+k/fwtIrq2K+M6NtVVVljdZrO0EkBhcvBb4CqWS3udM=;
	h=To:Subject:From:Date:From;
	b=OodDamsjuid9m5+Yr8gzmJuK0GsXx1KajhenW3c1IO/QKe2pnACBTvxZ6PeZFS9md
	 VjG7jKtoPcnW9JvgavZgWpTNigp+vF3bacPAmAiJi94jdqUxZlMiqyPm2oShqx76lJ
	 6GvhBs15MHRvMm/isr+t7/3A2GWmNIWneFI7uXb58BTdIOrNIyc6NZBPb6BKP9Z+57
	 AD6TmcitJ8Q4o8M7hzPl2B3+mol54WJU1RCQYSsW/vQsB/kfUwQ71hthMLknEGCkMB
	 KxYEM6LNJ0KEHbN75f9s41G81/tlm1solgh/8UcctbzJpOrRwz3dyaPNJVb3gifjHd
	 72lr2XK4FAYag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5ABC88E40
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178927083368.16181.16239427687061314792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c42bc765c39c83c1103e924da1c902337db65354449f7cd9fa1ebef9e23e3ec4
Date: Sun, 13 Sep 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789270833
