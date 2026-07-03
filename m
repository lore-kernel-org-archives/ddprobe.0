Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2833130AAA9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 16:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783097914; cv=none; b=PrgHeQVb5ftGZSfsaySv5fdyf6wvOB33RrxOPSzqbaS8INDG9A86mrIS/F1NYJSCL5ceyRsy7mHsp2OXGLzYKL6VPWAxUp9HmH7Io2Xo3aV+vpf79oQFleAAxfxBoGqA8ZuA39d7ihO85SRTeSHo6BV+qmtAs14S51aTb/v8bjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783097914; c=relaxed/simple;
	bh=A63q469BpkBTOeovN1wlllDpunLesPVmpjVlbWhq0PI=;
	h=To:Subject:From:Message-Id:Date; b=rB1xW7dk94PLWeDZv/tkcRUYohWVVeD6I/QXOYrjeW0Xvdo8l2r5wMpUnTz22xNWJlRVjxuTddlS2QLPr+HEQ2MNvSn9cK4+q70U+qeL/zcdhHLxnkAUtnP+pbuE3oZZsw1knIYtDivfm7OUezC6WsBfHpQf2hsI5h51ehSj6NE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zwj7wpTz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zwj7wpTz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB9E3C2BCC6
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 16:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783097913;
	bh=A63q469BpkBTOeovN1wlllDpunLesPVmpjVlbWhq0PI=;
	h=To:Subject:From:Date:From;
	b=Zwj7wpTzP3zhRXaNtvTC+bocPIyrOlvWhMQ/+UomJ7wUX8EU2n2NMvN/6+ipPMmk6
	 L8IQW/VIZ7B+sYyWLeHexvEJZUOkO4SyxuxglSLwgdVmEt1yOPT8I83yZteww9MTXI
	 kHs/TKuPRMV9PWTADhKAwe3l7H5l0nPsddtt8w9onlk6mEH3L8tG2sYA0mTKr3HIkg
	 fTS+QCr39bwCpRS/psUFez85kHz/rfEsOBE4n4bstDjXlyYuiG3cjVZYMkbtupm829
	 qHPTB5kXstTxadBGXKR07NDlhuZFocDFA+uH/AHUT/qq/ce8d0rDaG43f+FokZOpIm
	 E4bVnU6uRVDDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9974C44500
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 16:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178309791368.18500.8152552311993782470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dd484543b9ef07650179c8a102333bee8be47aad61ca14ec6a2148eadd58751
Date: Fri, 03 Jul 2026 16:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783097913
