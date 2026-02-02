Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04161359705
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770075234; cv=none; b=F+vgotBCOQRCz0YxkRRW9ta13zoIV7b6m+K1ZEGfFslZuCt/IpNMpEEMDCPnR7dMBp2nKV6e1SjuTM3WWSOkVQYDxlBEtutmyJ7ngnMlZWZYNVOJg8JA4XdNH1QA0KtB1EFgfKgto3WH3ChzZ+Kgv7xs44qlDcgan8dTp2FNrZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770075234; c=relaxed/simple;
	bh=fCUD+4CQe6ArKxgfVtV9E60kYBFbbXKtesns14mYgDc=;
	h=To:Subject:From:Message-Id:Date; b=e8dAwmCPYQKotTzcmBeFGi5Yt93eGV/Ue+ENsHpXj9GRaqGgH9m5GHOA/7gHIn8f+wCO+3VArowHgw9m0jvfhahszFwqVdCoadzMCIZ0SduyRV/etLP6hnjYU8b5CC4lrXgPWPav1B18k1weei7KPLFP+fC6+Zs9mZE7H9V9/gc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HpOvJQBU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HpOvJQBU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F6FC19421
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770075233;
	bh=fCUD+4CQe6ArKxgfVtV9E60kYBFbbXKtesns14mYgDc=;
	h=To:Subject:From:Date:From;
	b=HpOvJQBUGycc1vomORUFpux/U61isiD84nVXhux8adhCNlSTg3JoKlE1+RCIhD0oW
	 y2/zDNinx/UQD/bcgUEKH35cG18B6yrvQZ+LVQpFSC906KNbICbDmSmsAeQ32xxcVY
	 YJYv5u+Sk/ytKN7O444mcwQ27YiVozfr+BHXkyZj7dQcBIqwzmMYi1AkK437aJf5Vt
	 rgjKegI3MkKlu1iGVW7xla9VWRcv4mJXxiX3qMBdxqn83PkxGHQi3S6kNDkLaOQPE9
	 qIkzVFqIuPStpsnzh36SFCg2zho1ub4YkT8nxcqCauicPGaXhOzclzkGQynQS0y9DQ
	 rWDlKC1mZ2M7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1BE9E7FDE0
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177007523364.23199.10483783617797299378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5326166b14e046f60df8fdc59ff7c3603d6da312e4edb4a904fa81fe28ea880b
Date: Mon, 02 Feb 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770075233
