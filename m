Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0F90302CD5
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772330093; cv=none; b=JbS4ILdZR0+OY+mfs0o5cB4XKVvn/3+mJoKgAT9v+huJ8arxcdOMmVoLcyZpiNLy0cPkR1M0dfLH8DfAaZSEJqRYx/tRUHUMzxtEVuvd/yHDYKlCbodCHiTfbmVO8la+YI/V+GoF66v2TCJIe4EYTpKH/KrPMKO16D//fTE0Ylg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772330093; c=relaxed/simple;
	bh=IDnQhZb59jAlGjb8eFO3EwvL8TV3WaqVk4UK3daeKSI=;
	h=To:Subject:From:Message-Id:Date; b=hFvAjqW4UW86ueAgHnVd7Bxqc6q8YdJZRln/DqRiZT3uAE9xCJXwj/zqiWNquwfynAfsq49vvusKVKsEq4r0eSL05VGNUs0wL2a33U6KiNIFbFWl1TWCsVqF+dy25G6JNxf++Op6EaIhHtcd8TDCFf283QOHAo2QAx1Vie/WHgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YAkLvsRS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YAkLvsRS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5368C19424
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772330093;
	bh=IDnQhZb59jAlGjb8eFO3EwvL8TV3WaqVk4UK3daeKSI=;
	h=To:Subject:From:Date:From;
	b=YAkLvsRS8UO9+1H7f7Im9N/Et8eBXoaQxcItupVnDQxGTwBmltKPnxa3y8ok0MKx1
	 SGUOrs9H3GYOLF+i3m3KO4SoeGlnRbZeuDRgF7+/9s5wRtVow2p3RD9pJMQhjk8cti
	 066tm6q1wJ9GQWEVg6w2rScQo42BIP60h54R3R7ops7h1R/aegngFgvxzZdPhTkPgm
	 doxfbzeiguu3TCYwCj2qvKG6SqMEOMSpeVu0vnflwZWJz4y8lXI0PIRGuX3FbYskCx
	 oeMSREgVi9MVinPo4aPCcaK5RQ/6z9r+TAtXiofxCKuLfD3YZPpThKfU9PpXyxwSjU
	 PJat6vM7ydd/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B5CFD0048
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177233009360.30363.8850546494358177458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24fecc9037b9f4f619a364b1f723b9a45bcdfe873952487b33183144346dddb5
Date: Sun, 01 Mar 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772330093
