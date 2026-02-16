Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4EC242D89
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771224894; cv=none; b=kHIPuWTmZ5SozRvgnNmFSal6JrpWmxuB9i+1tL43CAYWFxy/wRx6G4Sd9qQ0wBg41hxnYMSrEIXn5Elk9Ngyal9xVjroc+XDQqCLYHORyPz4VlM9HxJyLBX1QDJMK6cDEc98N8ixpvN3u3lf0wSEY/n9qyEkvRJDVKSNk5Y9xZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771224894; c=relaxed/simple;
	bh=6D7cOmP1VNI99SBtm0dzk4N2BqH4r7Dan4gIWI01QLQ=;
	h=To:Subject:From:Message-Id:Date; b=MC+qd7a+MCB0XYjR844sMFWBv7F8nugNQjz3oKiWAhksDjjrdzIHcGo1qulGnXfEkjyOOHjOcXgGIqjxUx17sVDNlGlxwoeieDbhDhMAwE9m80j+AkLmNGhg8+jyUi8mB8JsjrawHGK+uDWiJ/2ko7z80XO/w3HSb7RnDc6tHJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SDivJE7c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SDivJE7c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B18AEC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771224893;
	bh=6D7cOmP1VNI99SBtm0dzk4N2BqH4r7Dan4gIWI01QLQ=;
	h=To:Subject:From:Date:From;
	b=SDivJE7cFZDZ+Rfoeyc16g1EP+gielkAAkvDkXhXzUeDZdjCgKgUzXwSKRpM1Hser
	 3+V1XHpl06ZxPk3xh5arOos7BbzRItPfgS9QOZf9uNSR0c0t1PK1h4k2H6TMYGCw+W
	 2eQO7JYSYI1tyfgmUlhDCPDhfhn33P7wNplmWcIWae36wTmjqinVMDzKmWTv0Q8im/
	 fhdCY3kI7/tkRutr5cFW6RltIqKEUlRVO8K4SvGCimQ2GfgLWQRelwGDzBBb8cdZdg
	 qCYBxDnoQxtBtSMtOsUwmsO2100fTIZGZSAtwMRk3Na7Ndv+rNSb2J0K3nl8k08D96
	 egH2sSBKrvwgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C947E63F31
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177122489360.25916.2660341443442131950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9df057b330b91cb2f70328c0f4ee9f5a7e7d8e01ecc40325a1c19b3ed098721e
Date: Mon, 16 Feb 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771224893
