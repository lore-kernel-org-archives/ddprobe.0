Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAD43624AE
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785579634; cv=none; b=dtNSoxWGbODuf2nsMU9Got0XJPJ6LQZdm+Vy61s2b614UAOfiXDuXmz1zywzRmMuEhv/VkOczpthPipJVMRdADwyaHC5Qda3KAaCMw/8Va3LKVAqMMSIhJ+rTDH6yd7j+ToM1v8uhFCqVagYPY9FUPaa5resZ6jgx/kwDWb33vE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785579634; c=relaxed/simple;
	bh=UvqdWr0YCYIf/wXovTQv0MbHuXso525Tro4ZtUXlO+Q=;
	h=To:Subject:From:Message-Id:Date; b=Ol+ELv6kevDyZGlJ7etcE/rHnXG+s8cyZI9axH7qMe851KliTbQXeX81Zqn2a5eHbZQGR2IrsYpiOWUOn5IytziXywir2DcIE4yFuv8b7j5sN1EEA8a1Xtfx0xoCF1yxJOOqOc+0C7wU8E5fRn17aL0AJ/gmGKgZGsmmoMoEqDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t0KUy68m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t0KUy68m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD88EC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785579633;
	bh=UvqdWr0YCYIf/wXovTQv0MbHuXso525Tro4ZtUXlO+Q=;
	h=To:Subject:From:Date:From;
	b=t0KUy68mUo2UoRJMYg1nqaRY/PDXuoisfbWZROjZioYxdXFUDrYl36NPx3RYzwRLw
	 +B/gLc2kAFBkBdsgvj1iwLQyFO7SFDzdwkq5hY0pIA55qnfwA0ur+2qm9KeJZAxv1D
	 txL6NoGfdZvrUKMhEBS6+JOeT1+tgUhbOA4kFJc4y8Nj7ZHtagla8vcB39rZwc2uRL
	 ZGg2kbNJnFoXeqEiEHQFNeKv0Dt+7lPuzkWzVT/yagIFCwfROKV9m7LCxTSQBDij+P
	 YTmIZ5G1n7HUPvWIyY4PBGdJoRADWhQPA/MeNS3YcIgy4EnbVbFsia4i+3VPw3IIuQ
	 3E09EDskOdiIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA61C55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178557963368.29320.17603155822029775707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52cf7522f83a6b035b76c574192919d2fff8ace3406934b88b8d50f050821ee7
Date: Sat, 01 Aug 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785579633
