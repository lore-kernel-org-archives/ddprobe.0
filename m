Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2A64F5E6
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 18:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712858963; cv=none; b=dznQRl9sVF1DXCvomnXNvQqiIWrEnvgMdQwOog6vsg/snmnHvTKAW2AHGBUswwQq+98TnBA7sH7hl/FXkA0bEqJQSBrKfG1Z14S0bH5inJTEer2L2fZXYUOsdvnyxwajkTnabTj1+4mXk7mDOGEJycTXIJ5hsJ9UC9szU6G0B68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712858963; c=relaxed/simple;
	bh=QOSI+1wl5Q5sAZ/ehxCHeg0QUAuPdnJWw2cn5kqfss8=;
	h=To:Subject:From:Message-Id:Date; b=dlVdogjSmAEkdIETLQF0q3GKUVGwKqCL/z5gxPa3cCgAU4cZycc2Nylrm14K/J1TuTRjhYJ6RPbSpsrVuxr3vEGhSiz21I2VhfYajAeJwIT2nAX4p7Y+3ni1liednY5QSkKxuWakSgIJAN84C3nzWvxTFGaHP9Gs3GTjfJ/h98E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LZYrYpmM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LZYrYpmM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3724C072AA
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 18:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712858962;
	bh=QOSI+1wl5Q5sAZ/ehxCHeg0QUAuPdnJWw2cn5kqfss8=;
	h=To:Subject:From:Date:From;
	b=LZYrYpmMdiLEiFy7WhnctPbMjcCIg2h+ryvQxdsAe3w96UEDzkjFIjQwmiLlFOH28
	 gjD+NwR8oSQfzxOCs2A72EkMeE7ppKqHESLVOGC+cCczQ+U9qNWsjUPmi9dz2gHwU6
	 65Dmd5D4KIYPjeENoP4a6k6FSkHvKOFNl2Vd4H+AcpRz19PY947o5HU8lligkaBvmu
	 HAvi1C6P3u/A9EQc2jGSvUSndaw5Ekw8Px0kzG0cbBDo+Ju4J1MmoxHfXH7219I9hc
	 +ImG2eBbwbFWknlnabIeDuopqO8T2M2x8VMuIM83DyTeqaB20t0XzUdme863oR2+Ph
	 AZwC22ShDsvQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB714C4345F
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 18:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171285896281.26146.6066120267339131962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 681309c80b8371ae7b94f4aca8203b7a8fe4263053bdb1cae912e3972702adb7
Date: Thu, 11 Apr 2024 18:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712858962
