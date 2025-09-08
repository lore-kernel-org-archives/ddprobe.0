Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C831C2E370E
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757371193; cv=none; b=eXwYUZvpY+b7GKJ06yv7VDluXpJPmWzp2TWUi2ETmie/YMqJUAlNRbgsntt1tOsde4dijySjD1Y2YnEoA5tNoUASgwMhLSsrgT/5nxUGEs5pI9TAeE/rZBsZf1aAgurQDmLUEUIi7wfO17b6jCFh/6FNG1JTk3bz7xXob7nD/cA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757371193; c=relaxed/simple;
	bh=OPgOGvYBhnRZfBxuqePX2oAAy9FVa177jv6lRl6TM0o=;
	h=To:Subject:From:Message-Id:Date; b=eZlmunDUMjtnfO4JRWPGrpiXl3QxCQB0iAyG1HmjlJmwdBIU/SfnTVLuxbgijdNVAHCIzIcezU5KC+F3YLJoZzr3LTCDFgat6B1l7eEVX4g8EC8RGl0nmUr78lv5oqPCoInFFfmrUP6hhKanvxlJEG1FGaHeVAzhgJOSSZXvWQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P3TEhexl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P3TEhexl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C46C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757371193;
	bh=OPgOGvYBhnRZfBxuqePX2oAAy9FVa177jv6lRl6TM0o=;
	h=To:Subject:From:Date:From;
	b=P3TEhexlHvzesF4GmoAclj7hcmjzovpl50q5wIb/hmHbahqRUzoBmfqJeH3zdQjd4
	 ghLghrGRvDt6Bt2k052s9mIcSF1B08UFnwJXEWPza84EoiDGhxjUNfkJFE9dg5O+S0
	 E7pN8eBXi5pHafmUwmfYLn2jB2Kv/mr/8UJ0nvqAkQjt7CkFo/kgCul+bPR0twySy9
	 4AoJpEqM/1/wC3wvrF6uZCHdbrkpUyvDOHU8AOF+vLD0AJ4KqD3I+aw2jDNQM0nHd3
	 HWZUrNBp0/b9xRzTmBWKrQOIH4XWeGDh8RylfT9dt5fjU23t9DNKqTKNBXUIV6quuI
	 nEicQbdwb+GlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9925ECAC582
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175737119360.13388.6281164403381170104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c38d912e949e4712c6fd601ced452edd7d34624fe1aff951d7e73ec11cc85c6
Date: Mon, 08 Sep 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757371193
