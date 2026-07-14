Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6569648123D
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 15:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784044114; cv=none; b=EepTZ+0kGcuvZccOwiKGTSX4JOLp231GoM45nWNFppL77mLebXAVlw2mTcEFhhD8kVzQyZXgUPSnHKj1V/jnZNwvAqSB2LuHvrpgbbizSTeJR0VAxlAUsQhxcjBs9vaoP8DPSouDCxEviqy/5uoa42ftK/To5w3pnh0m3vjglHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784044114; c=relaxed/simple;
	bh=GZBxot7csYG8QkIR3QAGpcp5mdfF/y0Fi15DvqPngtY=;
	h=To:Subject:From:Message-Id:Date; b=ZBDvlZaeA6fjVN2YoCgVNm1T3VDxWJQ9xlz+b44vEZIEzV2Txny/hu6r+OXxLmUw1AmDCTkBRI+KK/5OIN+QQhNfHP2P4lrQ72RPyCyV7QzIh3jXXQPHgigvKz8zTZgAtDDLvC7/6Xqrj9x9r+GbuOzyog4Q+IRWkqlRMt4lz5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tL7uigD7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tL7uigD7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF95CC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 15:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784044113;
	bh=GZBxot7csYG8QkIR3QAGpcp5mdfF/y0Fi15DvqPngtY=;
	h=To:Subject:From:Date:From;
	b=tL7uigD7EFlXF7w+qv9ZtNmnSy6qH9v4Awj56Ny0XFo+WF3nQZ9pfSuZBLYv/a7eV
	 FZqpWr2PkiclYSCt9lv312zCgudztgjd0mZ6KsU2Mm0KOAOOsO5Kyprre/K2P106xM
	 8tHLsfQOMGE+QBW8NuYM2VWHire2jzHTlp1VrMbRnYrKYLySGTtXQb9IVQlYZDO4Fq
	 p9/UwMxPX4I73R5Vg+IG8qes/yVse3hYyH6JPLRyORraG+117h4eC84cTxGsXOOJqv
	 ttk3L30j4uKVa+zaOWiHmu6mY1fMFecJMPZQ15J/MsPjnkIzzY1KdVIW2LuOK1zjl6
	 NwzEe9jDFpCiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B94E5C44501
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 15:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178404411374.422.6438277339785718463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5619cb55d4066d506b7c7025ba2087c8f12ca521c7903d29c0ee61c552d484d8
Date: Tue, 14 Jul 2026 15:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784044113
