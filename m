Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1962E3806D5
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 13:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778247454; cv=none; b=ocoJO7RYls3ytvYvRYu7dBM71D69S2WhwxbPSq3+oiPnJBHFevINybiPGV2f7IH1zDWNGIymUkWLSYYNpf85rz1QF2vS8HgadOlEuZeVwt+ZyG7FAEXgywfGX8LHUqJLbMX5mHWxICXbYwHAx0weceKaZF34XMJzmcm/H2lFd3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778247454; c=relaxed/simple;
	bh=oYq2zg7eO+Kt2Pc9BpC0qAQsumUFP9AAqPUx1LKUXDg=;
	h=To:Subject:From:Message-Id:Date; b=HT2d9PwVUF6Sz+vwAY7awIRhiVoyrbRtjc+kf/f8ikum4JHe85IM01NRycLZnF9IZvikep7787jQjJnLGq+zcPtE7A4Ay37dxWsJ1AAOm/iZbJPR+fSyEMzWlWuc3mTKGDNLPGXhnRNnuVq2Re5BMJSDaq07ev++vm8bPnxH1uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A65XtsB5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A65XtsB5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B985FC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 13:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778247453;
	bh=oYq2zg7eO+Kt2Pc9BpC0qAQsumUFP9AAqPUx1LKUXDg=;
	h=To:Subject:From:Date:From;
	b=A65XtsB5GdOEPUe9YClhLoVTlIWYyUAHGY5dsw4o68C5SKyipKwUC/YwFsEfhOgYr
	 8RKFU+5HwhsnSJGs8USlSEzCc5opq4CGDd9VcGJRpyJUVVsZg+u25XVcgPJXx+at2K
	 fk1iZkfuZ+kw+lO9r0cR5LZirUuP0duZENQMSTQC7KhenTDe0x2tQKYmU777R8FYGu
	 sCjm9H+Q7bOEroykSLmcZxu3oupIfh/suy5CVpx6ETQDPnZfSAcR6nRPnTwQkXewO4
	 h6/5ESS1RRIrvqIGoZTdIwlizNo41OVgMOYFPngLgqM5Mi2XgpeHxusdEYLgsuyTM5
	 QQZ8OfgHWmYNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCE1CD3447
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 13:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177824745369.13969.394717659745687421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 398f26ede53f746a1b4f3063c29def0c1b940ed19473b1e3b1b25ea81abd6195
Date: Fri, 08 May 2026 13:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778247453
