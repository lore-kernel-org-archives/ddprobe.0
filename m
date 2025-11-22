Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3210D2853F7
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 10:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763808114; cv=none; b=TnHjpPwDAjsGUhFIC9BvlCc5TbFD5HV0ZS1zNAwyXuCM3hkEsLxBqfEeERwJSnLIq3pw3uoXPoJfpCDX/nVnOKyVag5FgWJUnEkoYtDK0g8Vk3epnv3i/gEeDv0oVGXr8ZfnPX+MoCPurSra+jVmljQ0IHW4dMOyxsrsI5K7MgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763808114; c=relaxed/simple;
	bh=BvBUXs1rR0O5ixDrZRjBL5+RSRmHnjo6UAkln3P9jH0=;
	h=To:Subject:From:Message-Id:Date; b=R08QdB9tKv4mZ5UfPbLY7HJYGa+yoGBcV+2i6nWylREUhKHC0faVd12Txq0bMFalP8KDmhgNm5XWMWPu5eaj3nFOiUaXXE5AAihpvC0WhivXtIBSYzIUZ/J8plb3Cf+xAfrGDKe1P0Qg9OVGt+F/qeF6bu/UEqNmmPr5rVR8QMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=onZAnvog; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="onZAnvog"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAA1C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 10:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763808113;
	bh=BvBUXs1rR0O5ixDrZRjBL5+RSRmHnjo6UAkln3P9jH0=;
	h=To:Subject:From:Date:From;
	b=onZAnvog+h6CCdEae153e8Mz0Iat8ul2o5Hpd5YqukVBjspJgwcNaFHUmpoHXL1M4
	 I7/5r5iNnSXMva4Axg79YxwM9+OK9IbfASD585p0CjFFRR3pR57sXVNd0RCb/DpvRe
	 5s3+R4mvzqdNXXnUCtWkDvf+wNXVMMvME9tM5gnSBGCrFjev1xm216UHHhfRisVweg
	 guCX3pbGP7AV5SMWJCViPn/mfhtXPYTTT5kWPGvDFfE4tOuC985rX5Xfa7P1dd36F3
	 06c+NWRd5jD9B5062uVLC746Eq7hQeDWvzxiFYXPwajUG9iUim9BfHrW+vcbTEPQ83
	 +R4wf8lW3ppWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EBDCF64B1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 10:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176380811358.14937.9480356422948533067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b75a49ad1493f9480b466bfd2dccc0fac3526d1ff6e4e704dff791e5c92ff4de
Date: Sat, 22 Nov 2025 10:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763808113
