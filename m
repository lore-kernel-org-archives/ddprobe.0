Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6384B1280
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790596234; cv=none; b=STDmoqZeF8wu90n7elAU/V6hGiQl8cCXkxe8EfV+8ZQ07xziMwfaZf6IsczpRljC10W37TDa4z2j3M8VXZbtR8daTQK5D1IRRdKuATilshOdjBFEKM5JBtJ6bHCDI5tjKLJk2ZAmnlBC40nWdHK8APoM4UR+0F0BRmURyQ+Uejc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790596234; c=relaxed/simple;
	bh=EsBFQYZbVhgpMpixnrorOH72QWD9Ip7Z2MIEd5cd8L4=;
	h=To:Subject:From:Message-Id:Date; b=ii35zXpgA290wesABZKDG6prKPt+akQfNvMe4ve124lodqdlytWObK6N9Kj5UELHbjF0sNFGmXwtc3cHZ+qNu6EgNmIpcXe0QKBY8LFq2pk079Zzi1bejjO1nkiEJRdmg8qd0gWZDPc4tuRo8/AXpwSAIUTR6cfaBf0WkOTR2ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=azrjipn8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="azrjipn8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE164C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790596233;
	bh=EsBFQYZbVhgpMpixnrorOH72QWD9Ip7Z2MIEd5cd8L4=;
	h=To:Subject:From:Date:From;
	b=azrjipn85cmTJbvLGvSdTCvsTrPaAsUsHSFYjS0alpVWatAHnpV8WnX4dDpzy8tkT
	 xhQ3m8JLgsUtRgqyrJq49enomHhGKzimHpyA5KsE+npte/6dkOk+jAx9U8JGGa8t+9
	 1BUdt5Hp5Z20Y5Blvm3RjTQ4Q01nx5ugSz1UGtehvmBQaRSLcSNcfXQY8vkyotwys4
	 rU2+lBky/CbCR+hYPofrZqXH4jboEskzhr7n0LdMv0dNyu8dc3ur0qzpHS16LbLS+w
	 c3euqA/DfTZN52TgFcpBD+0I5ni98tANIvcQLIolWyUm6KO0rks8D/fknX7b/qX4Ql
	 vDa1qvZVjJyzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0D2C9833F
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179059623369.25392.10019820409425744328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffdd75744e2c072d788cd610e23bf361962c77085955cd2ecedd0d9c5e5d8cea
Date: Mon, 28 Sep 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790596233
