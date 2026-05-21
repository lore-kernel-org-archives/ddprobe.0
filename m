Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350031D6BB
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 01:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779325834; cv=none; b=scB80kzR/IcqvEYffz7whqqVXlmV/4lzH1P4S/tNWxY5bJ9168+OYgo5lVTPpUXsEnUHQZMAGM1KopVOKhXjpwVkAzRmnay/RAfjdlBVgbYvvG64K8FD71yiT+BNtqEp6KcJnoDEby9de4R5vsPU1kpEEbHNEikpDgvj6xIShhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779325834; c=relaxed/simple;
	bh=ztCV/xO/sTS/p3WbF0H0qiIovO0YGsoI6anwvK4P+h4=;
	h=To:Subject:From:Message-Id:Date; b=ki2+sUCy/Ag01OsbfOCe1McfzFyCjfY+3ZCsymcfNiB9U3qAloQxHLCftGSr+TzGYmDWFgK9UT7Pm5ZshMLE6ms9djH3opVCl1WlzA2BmqRnor1Tx4LzWVwEcLFzZtQKnEbEd071Z2Zy/i64MvHEiamX4k1J3hdh9TrywXAXWQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t5kthp6+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t5kthp6+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C466AC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779325833;
	bh=ztCV/xO/sTS/p3WbF0H0qiIovO0YGsoI6anwvK4P+h4=;
	h=To:Subject:From:Date:From;
	b=t5kthp6+sS+rBffJEpyXq9Y669+z1vsrYwiiQ9pXYFgSW70Zf2sTtwDt5LDF+P6EQ
	 mNWuotT7PMykPKXMdkIDDw2mXxBdgZu9+P5OdWcZ07dIzqC504B9KXszKQF4C8w2+y
	 w558DfaWPkBr94C+WrGwPPTTzZItnNUxviNYhB+Xwa6MfYBetjmmtHNwQz/LMU+ulK
	 S5aXNV8mVwDM0WkWOWZWm7k2vuXP1HrQIosYISGYLL2+vdpva7z97RCUJZM647fliw
	 Dw1mj5E5UXIHugVxyiVZ2iNgKFtZBExjrMKVZOxq27WG22gtJ9m5K2Jli9mUiySxV7
	 T+35+X43bzD7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5D7CD4F3D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177932583369.7996.1303941338898971585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fb5278b95e257e75193c7fd646ccf96812624c279c1439691f76ebcc9c6002f
Date: Thu, 21 May 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779325833
