Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB26039734A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 06:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791960634; cv=none; b=qbpYt3uVcH2A2XIw1G4WW6O4/t9o4sj8hVKT5/oBJWLmzZwA300cGNLzxc73kkBL7JBArLwxGLPnohgTy+I3pRTlJqdVTEQiMMS4sqbY+gbR2P3YppNeH5eBHjxQ8+KHtGsrLOm508W1WGCbitKLus/JM7peAWYj8BWEoIIOQz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791960634; c=relaxed/simple;
	bh=hmQSw1V2vBxslAsln6jkW1GyKkf9GOP4rsX2bcv8Vso=;
	h=To:Subject:From:Message-Id:Date; b=IXtaJ8SYD+ny7TSz1HRGcSjJi9QjKh29pv03UaM73j8+SDyYlDUOJ5YQtjxofVzmgE9miUg+sURePRezMyPUyhK9ckxXNIEECx2QFsK+Q5MhiMkQp2xIrhATS3n4gziYBR1D8z4dxGxGrl9VvSn+EbeZdCpL5Rnyrq55/943J1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EDN1B84V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EDN1B84V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C66CCC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791960633;
	bh=hmQSw1V2vBxslAsln6jkW1GyKkf9GOP4rsX2bcv8Vso=;
	h=To:Subject:From:Date:From;
	b=EDN1B84V5JsLcP89uvzwFAw1zBvuiNRGbEe+bnE/JVW30VCb9uIpOMW1Xrwkfw1rH
	 33A7ZAMlceWQ1dpoUQTHkF4PfL6NBLNyqJdM+DKvtDFXnNQP4+Ae3/MOZciXNNtb8p
	 YlLUMEN3Pn0omlL/eWK1Adk0KtVq8OH1nMgVqOqAKFpQhtTMykgr8gsLHF4JI7xWtt
	 MEpKetBuQ2K94GAgdu2qcQh0yIujaL8/5IouWNUC9vQSvuimbBFsIpSxtdTdJDxtE+
	 ZFr8xdgafd+lynB368w1dv6E900Kt1p9reNTdJfTNzeefbXFH7ZQZlAbROB1yl5f/w
	 4Ntz4N24KASag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3C4DCC6B24
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179196063372.26646.595071737105274766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08a35818b2bb024dbf2e5e447edff3dab72c68199fa6333140ca72510a3ba277
Date: Wed, 14 Oct 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791960633
