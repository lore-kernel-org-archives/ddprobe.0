Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD69A85C74
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 22:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710975497; cv=none; b=jxFPm0+srxqZvUGUftXLkwxk3kq3uwqrXvf/kfP7Vbu8Kc5UaofKUzUKI4GRh3h/cjJZiVQjBFUPyQs0Pa8v23DnYLy/MsQNZBo0edVairkmRhfPpOWX7j9JbEKGhqMvzd//7WRHXq8PLlbd4QXpBkMMjb2MSjkvDEZNXbQxa1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710975497; c=relaxed/simple;
	bh=S/uLkQqVXjT2nwnHMF0HwPdkZvH56BwQ3V/FNhe3Vvw=;
	h=To:Subject:From:Message-Id:Date; b=gPbpnQ41islrYFttopWdokWidUQ1c/fQU15BzkIDZmkVWo8tFDri52XM+npIax1fDhziarzsFoXEMh2dl9Zo3ig+t2tJulNXiUo+6fiWlm3PneLtwtSY1mCa9zYRlkzRShBo77Y4CNWCQHYQemLB7lNeau7e1Cfj9Gplcs7/qBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CoKUiSOQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CoKUiSOQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CB57C43390
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 22:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710975496;
	bh=S/uLkQqVXjT2nwnHMF0HwPdkZvH56BwQ3V/FNhe3Vvw=;
	h=To:Subject:From:Date:From;
	b=CoKUiSOQr/Fr7Zr1ldII3JzP5dSoDAI1qOtbyBuYhoVwdU14O0zvvny5xSxUzyds1
	 CcgoKGeuuGXfpSEsKbM09xQILIR0wfL0tucOB7kcHUQ6bx/FAcnJYarbVXKW4G5Pd0
	 /oIr3PWFgELnIQlSDU0VZXWM+tjdcB5Dc8yEagOT2MmnF/5y+07E6CVubuE6okaqCu
	 lA78mVivmgwy+8NP7D7QjaZ7e5/pMy77RcMf3DtKGO68HgZL3JTbTH96RaDwgNEMlK
	 0aZnuSExSJvRdvc6rvpJb/RDiW4zakNLIMc2zKko9E2TbT9BCcKVVFn6pGbF2/Edq0
	 pGtGtDnIZqzHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60F12C54E67
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 22:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171097549636.16148.89403514984388648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22cf32f445436d15a275d108259205a3e5f75d5656fce218061757f0f14007fb
Date: Wed, 20 Mar 2024 22:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710975496
