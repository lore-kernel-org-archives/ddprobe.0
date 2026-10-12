Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3791E51E0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791768034; cv=none; b=PwkXecmpBD6H7IQO38LCG0a77CAFOnTeZTZAHqJZFOxvkID7aLwXVWo9qM1Nw1auOAfG9HUkFuF76YtWBvZjq6ltSoFTudgoCR2iCMFZJ07L8sKWchrdCP+26sfQOw7sBgOi3f44GQ2O0ke2kfvBW599Fku+xAFfpsNdyjqOXBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791768034; c=relaxed/simple;
	bh=jbEf9ItaTwA8ZIUWJhri+LIozLM0hHuk9e9jkQsEWJc=;
	h=To:Subject:From:Message-Id:Date; b=uz5tDnbzCbuEHiSNnyOi2DEVx0uHBmeDZUYc3sErxX1EIEt67a0sNmVCTN3H76hJ6yiMtD2t+cnAzjt2Q+BZlCBg+5/AjPcSFJQ9DyRM5JGxRgzDDiK0qVwEN9vwwyweZA9lTIoR/BOeth+IM0I7S+iwKXbQrJYwi7MgcnucSMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kaEkY1y0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kaEkY1y0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC95C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791768033;
	bh=jbEf9ItaTwA8ZIUWJhri+LIozLM0hHuk9e9jkQsEWJc=;
	h=To:Subject:From:Date:From;
	b=kaEkY1y0U7GWwzQ//26vpntq3tnEF6LFgKG/tXt32EgJz0G+MRnrXper+0pZCBOjW
	 h5eNpEOkk7TS503M94M7UQy2KHEkl4BEFF+KpCUvxOWysbAHTVtsf2gLTljfxqoO9u
	 6zBQYr4UWqFn2/9++Q0g6JiJEcpHddxKh4CEb0nIIsb9j5dlyiuvZlbl/fBx/XVofj
	 iI71pWQc9aac1il1AnTMhgtielCu+JoFcr61Wec6RqBQwO6e+xbjB+uGLA/Ib5dcGY
	 1l6d0jyQhdiuahe/pEwSnlwVRRUAhWxnr6AMCMAQxvIb0Zx8fWwP+xlRm3+xEtZLqv
	 O720mjamBHfuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7A3CA9ECF
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179176803369.32516.14132560626291568963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6261e905de716e2d02598451588ec852e653cf28542e4861c025166a05e8c59
Date: Mon, 12 Oct 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791768033
