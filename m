Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 538AF24EF8B
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744759794; cv=none; b=Jkfa4r/T/TqBtEJqrwXHe8dxF/CyV4Env2UuLN4ScPuqwo2Bcm2CLkcE3p0RDn21qOLWA7iZ/NkKcv+j6lqoTOFC1J1Fw19Jw7QuvM/OKUpwQEvaRH7oaIAN8JofvejkzpqXxhMs7H0omSjQgOwvLwN3hLu+EoKb5xaQwR/Zzu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744759794; c=relaxed/simple;
	bh=a5IBW0eMxrRc8BkgRlMgwOew6rY63TgwDeRkjrimz1s=;
	h=To:Subject:From:Message-Id:Date; b=EoN8ez81wOf8xnrqJgU1RFNARFfOgkWQ34psFZhpb09SKOk281H76ZfWe0hsFWSvbaWFwBwaL3rxjgoumjH5l1kC2xm+sQkzJQ3ro0eif04qDOjjPko1B3MOdx3LiTcdGtkuUFl6d2yPtf9Ol5xcIghOsHQMI8bpoxGedaHiYlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oIfZkLgj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oIfZkLgj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED88C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744759793;
	bh=a5IBW0eMxrRc8BkgRlMgwOew6rY63TgwDeRkjrimz1s=;
	h=To:Subject:From:Date:From;
	b=oIfZkLgjOtRxRTC6UfeCuN8nH3+PIXmIaDEmzWurgKMPyDnMvhis51Hffj+Vg24O5
	 H/jR0NLnR+HRwthvMoMvpclvdnAaCd4exM30Uxnds88Jq18X5jtTOmUEgZhrb5R4/Q
	 mMowjr53rjVD/PrGjkjpHmo/js6UwcxXwwv9CpQ/Q9xHvPSzLKkLnWlwG3FZZ1nlwa
	 pkO9wvFjM/xwa604W190xh5E7eZ59hIMlZTSUcXC2c4y6KlKmZpHsI+xjYGMS2VAUc
	 CQNIcedNcNPiGlmziH7acSodnX8dKBdXPPmGMuo9o9X3DvMLpiJjNMz0kuUzGh0gFI
	 7ZR1T3gDygDHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A921FC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174475979364.28176.13442957770872999857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b1ba65408a94d3ed8449920335935ddcbc3a93d80f61a7ba3b73889d4891f37
Date: Tue, 15 Apr 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744759793
