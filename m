Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A5F351C0B
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791049834; cv=none; b=TI14OcKFywL5H0EBjphEvcFlvbA6TRRMY0PD5fAbqxWXIzxXrHzWINAAQg/3DzBen/HdXbPzk6mnQHd3A0+xC9SVLBU3pF9btjZqcrH9SVeDTa0o/OZODRsExhPjAAo5btv8EXvRx4pMq4O6O8SKN+uC/v2BB7uurKaQlW4kFkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791049834; c=relaxed/simple;
	bh=52vir6xZ2j4e2v4DG8RxQD42kSXwIsPEBUpXufFwt7U=;
	h=To:Subject:From:Message-Id:Date; b=WKdRYhydX8mFWbBMEJpfbN3M8CqDiZp0QqnpnKTeNWcZzgvf+4JX5110G6iyABXpmqFHDYWw548g9Y7TLVTjiaOJ8hgz2GASnRJp/tXOhNY80dy7Ag+ZmSfRQG/xc19yR7zvS5ejquDYrsI0P9ZFD2PYcYfJeXEwX9zT4wNwaAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKPA5/+C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKPA5/+C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEABC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791049833;
	bh=52vir6xZ2j4e2v4DG8RxQD42kSXwIsPEBUpXufFwt7U=;
	h=To:Subject:From:Date:From;
	b=PKPA5/+CbdgZUkNSbY6SOcnarLA2gL5qk8GdQm9Vx9+AKgTp8VoVcqyQGzoYvvSXL
	 U5HigBGbvsfVBKBIBKKKDoZJ1qVbJWJ+TPoEypAejS6PWBURf11uOd3oj248u+xYvG
	 aLRmrs9I0nxmvLbObPbq7RfhB3nt4WL+Zfg2GCfwF4gZhphtFgD2487oo67CcEf51D
	 9Of4GUtaNWzzWOn/YY6C7mgIl5sFzrBtF1bNLZ1rQ1IVdkzGtFDqUmLtnlSEKN1hp2
	 HRLEJiRlRTD4W1XPPES0AEghwFykPPJBS4c2yaBKn95CFAYaiuwPA9ovkc0i+h171A
	 gRgDPbVb+zfSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FAACA5FE6
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179104983368.21770.2189487422024274743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1ac441e32276abdfb89000edbc618afbb868d4b2807bd9b4e4f8ed5640abfbd
Date: Sat, 03 Oct 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791049833
