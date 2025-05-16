Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C58323373B
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747391994; cv=none; b=Hyzi2HiCwE7klQUqJ4FCucjKy0vu4vtJCKkRWDTwCqAHJ008DjYsyMzxN81dEYQKmXIVkeNPaaV4VUF1X+cBI+HQlBU2AcM4tBu9c1FNwbd9pfoIC8BkDCxjeCeH1e+HKzXNWrQfmtfdnfMEwit0mLYPNoGeDJZMDOV1FoXuEx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747391994; c=relaxed/simple;
	bh=8YM83+EXcABuugZ1MKBT4cIN8N8bA16E1fTaEIn77jw=;
	h=To:Subject:From:Message-Id:Date; b=VWwcSacPtkI+ebZW4rBY+Q4wGWmlz/Z3VwrnLoDzMSE6CgW+0t/anDi0XCFi+12fxsbaYuyDQ3SJgJ8gx8lr2+S5kCHFlfK+RRJVvIWh7kuOmp9l0P/VPDIIi7iCIM6KnN8WGXR2F34latjOqhyR9BQ+dRSbTfUwna5rrcTjQ2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DrfK4wIN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DrfK4wIN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E22C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747391993;
	bh=8YM83+EXcABuugZ1MKBT4cIN8N8bA16E1fTaEIn77jw=;
	h=To:Subject:From:Date:From;
	b=DrfK4wIN6ejIU3vpTX2owxnxKKaiODosNkF16Uj48oO2UmWp4cYij7WOF4Gcv7OHl
	 xo+sF/8BSKyLIjtzjSGWcaMy7rGijDO1S/e4WdXm/BewlO+AjB9cMjfjwkC1OBSzqN
	 Ef2BLcvYLLdlXLmnS6n3fPwgLWuLFjv2uKQ8MBggvAfMmha3hR4M5JdIhaXq3qbRQN
	 l0SrnYilbub5pc5HfyjxfuC42koyoBG7Z7/20cSSN/YBYNQ/XGIZlFrYd+ys1I9DOU
	 PUxLhhtwWXsvyBZSycrjYdsC6G3M7xJ+XRQmJbs1JdeiFhzED0nzFaUoDxIeucfzrX
	 ltUCwTnUGcREw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961EBC3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174739199357.5794.9563599344923347759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b771edfc612e1ed8770eb4ba3fd0bae813413c34424e0275cecc29e97d38b081
Date: Fri, 16 May 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747391993
