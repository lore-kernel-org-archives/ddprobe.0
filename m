Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC2928506C
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 09:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763373114; cv=none; b=YQtNpd2YVA/t+wtz4Fff7LcDm4H/pK15OHXNVq9e4JtCuUnujREboyErdO5cebH9GPmNgtMdsyspddNHrBdPq28Eid1/HVyWhXCkccMSZCZnGMPFbU7HBzx5mEViY1DmbuB5z76Si71LzNBXrCscVFWTYMFkin/OmJ4b90XUcUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763373114; c=relaxed/simple;
	bh=ULhL4G/96nzG0N4er8ZCAKlnPFla7GhmFpHBvd3Gd1A=;
	h=To:Subject:From:Message-Id:Date; b=Hq1RJdkfj0CPW63CXcKaw6a84BiWNyKPcCUis/nzUZhtBXWiCvpLmqMV5BIAsIql/KDUGnU/HLtokiET67nFJjl1Oo/KnoOgbLFd8KWTpRlxDjdv0sy+5OPxS80R/TUWooumTNfNDJrimMQh3lK0SOi2vJbe29Y3en8l8y7WwuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XjclC6SV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjclC6SV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B05C0C113D0
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 09:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763373113;
	bh=ULhL4G/96nzG0N4er8ZCAKlnPFla7GhmFpHBvd3Gd1A=;
	h=To:Subject:From:Date:From;
	b=XjclC6SV8Cbz2mNGgqVbyX17Msb7cltlMXpfXvoks22ooFIA7AyRRfUam0yJTZsFg
	 S++sAwT3543MzPA0GjRVhinhP0BQOJUwBC6odGTBifWhD6PZFYIVM88xMpUC0apBAs
	 v9WDNC+MUOnCbFnO3WakT8CKgG2c6iqgSE2Q6/PaAvIbClGEtJJ06gwbvKNGSTLTkb
	 GGYGsOSoKfLer1+G4W6gjVs12q3JQh/KKgChYqxZCbe3r/OYhsHU5GIBItA0jQVX8k
	 bAKIIfLoE7JlHR1zM409FPp0tj30xF0WptM4irruVnjq38fl2Fbchy9nOM+MiQhSMk
	 W/IrZDFZmQOhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EB5CE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 09:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176337311361.22522.4087313855725908556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb0cc9a2c1d3422fede2e2369bf63de64d59b8f5f58768075121fdb7c37f525f
Date: Mon, 17 Nov 2025 09:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763373113
