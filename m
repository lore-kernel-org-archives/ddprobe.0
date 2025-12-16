Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D52338905
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 07:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765869774; cv=none; b=B9wuNthF+d6t1h69atW7v4MJ8C/kaH04Is5ifMb/FcdtusqeyZKSrfK+SdNF9OEwi6BAOYYHrjkdRQbASl8YA9D4ZMc2QgotCWmgXtL15wxlcJ0SsOoTKC3k05HWgkv7aUBvknDBOA4+52GGr8eNMmT5fBwZRxvW6O3umdx5TyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765869774; c=relaxed/simple;
	bh=lnz9MByXoekzhX/AVdIN4FG8T0wk0YZa+nWnMxiNvuw=;
	h=To:Subject:From:Message-Id:Date; b=fPWdm82ytuTcXjRZerLWv2pZzYpfL6SKysB2bV6Ry1Yul1XphnScW472fNi4wfK0I62Z245XhHy3cvOpIYyVp1kT8FZSdEdDteMDwrPU7UdQuPE9Vu14GVn3JOBa2exPtz9TXu12qjG1/yhYpK1sqf1j/P3z5xUeB+YSGb5pCL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t8G728n6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t8G728n6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A393DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 07:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765869773;
	bh=lnz9MByXoekzhX/AVdIN4FG8T0wk0YZa+nWnMxiNvuw=;
	h=To:Subject:From:Date:From;
	b=t8G728n6ySdtQlOLETnu2+P/clTuqIawJCgwuVrcriSKuw+Q/XAMEu17O1lA5Ldxr
	 oh2S9hlkDgQvxU4F5Ur3IW/WGVknJ0bKWkaeIxgwE7EZ+ZKdBNFMyJwvlTZ+iPGnGu
	 1Qi+1WinD9x6KwQJHT1J7scdZUowmSb+jElvPt3Es7QDmNfAw1eGTPE/gUk1q4g6GJ
	 GDV8YUNiV2Z+UVqVeHcFfDV+k7iPHfDsaBFXMsUZezTHw1O6AP+HVC7XpXL1QnTDpz
	 JYFmKIoZyQjMlrgVrqjc6FqjcsD2BTxLSbGCP2eAMGGhApASRzy3pLsBq1Y2skzcxF
	 WL4cr78aqdybg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91469D5B87C
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 07:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176586977358.9190.3768153894723374672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2627d62b521392bdbf7f46b83de7c9f53f909b1cb6f6f0511d018769b51363ba
Date: Tue, 16 Dec 2025 07:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765869773
