Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BDAB14D70E
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732128954; cv=none; b=dhwCgiFojdCPopjd6axAjh99r8bHvRdtYXQB66iW6uvATRZV82q6Ut+jmZ+Q8oWb0dcFIAfa1YC0vnvuTCm9rj5xfAA6Bc50uVMS6lAB7ivAbc/HzwHRRmbSbsVh3f1oclZZ4rwIBmULxSxbiLepGps5mDbxQIWc6o3mlE+jx7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732128954; c=relaxed/simple;
	bh=86bUomGVVOHpgRZM5rvunl3oqR2mS0Xf0wnFhco01lQ=;
	h=To:Subject:From:Message-Id:Date; b=NdrBO8R/iacebqEm8oWt7VqK6lzFoRPqEUlrwkmydHgDKFIYHYLD+yPxEf53rjfqeKTdyolZ0FFnJS0EORxZrtzx0XVmd8I0hPVTXOyhEv0x9wpblZIInbOaxHEsyNpRIDFsXI98WXNv5rHQJMHwYV/T9jm+A39DMNlMsV5tiHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r7MhICJV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r7MhICJV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4698C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732128953;
	bh=86bUomGVVOHpgRZM5rvunl3oqR2mS0Xf0wnFhco01lQ=;
	h=To:Subject:From:Date:From;
	b=r7MhICJVFXdHGf2goQvzSWIW6J69qsNuq9B8lSdv6Z77h5J/jZy3B+eAw2PMYwzY6
	 fBgCOPBFhm8CCU1jhgVXuJ2wHCWmct+WTeCXFZahQNQ+Oja2TFFa4d731g3b8YYtjR
	 WUDwpA/AxzncZTZstutaKsE/Yv7wp1q56XRJ+sQvYqnZJFP25rX6yu/MJYTYiZ33y0
	 RHhLczz1gqNk//bnQXjYQlDJjloplCtaZrcKxvK6uJy2uIccFDcztrsxB87NW4H4ub
	 ao1pkgngmWhn9UbSveYwZcsioFUEhoO40q4PKoyHMDCPXnFXcrM9yBJRm5kGUxTJKL
	 I8a1BvmCSy/+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9456AD711DF
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173212895359.32722.4595819633025010714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e2ee7655c63fa5fc5caab418cd867d82f4723be09efcd00d553cb5e2e6d22c7
Date: Wed, 20 Nov 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732128953
