Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE20223DF2
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746511794; cv=none; b=E/o5WCEbowIg+ag/+Y2qZwPEn03Blu2DP3vNRomwA550ljms02Wm/YGm/sqxGAG6quc8cGnpyRoLgE85v9yhM0kZJavhinj/JO+wnU1iOkGI6hUfbXlPeYJ2aDgeUaDco0ToAN24VA06QLmh6MNPcxEuNU/FMcw0m5RU+FwGdsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746511794; c=relaxed/simple;
	bh=itaD75M/ydTwWTGlBQPKnbBCby4brl+1k+9OFgT0Re4=;
	h=To:Subject:From:Message-Id:Date; b=fzRrTWrRagUrCs9t/QQ5a/5peyF2lvozHB5VYDDFoL3CaC9HGxH1AIp0oz8mFB0y+HxYoBNgEH4Lpq3CUbjLXAs8mav3bLa5MCcyInaRThPdq30yqLE6Gmd2mJowIm5SPgZqevg/TS7C3nArA0P76ywU33E+58yku7F2PSsd66U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gy2UQLt5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gy2UQLt5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B850BC4CEF2
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746511793;
	bh=itaD75M/ydTwWTGlBQPKnbBCby4brl+1k+9OFgT0Re4=;
	h=To:Subject:From:Date:From;
	b=Gy2UQLt58gNIIH3lALn7chIHbsPQWvDNsasdKQRDvUM0tl2sXtLnNzc6SpXjsQoK/
	 oh2AEq289+8pLl2GvvtlC2rE/mdI32WO5EZvjOUlxJnoWXgxscf4iLZqyvyrRpIhKq
	 ixidsbqEo+5eLM2aC2oKyypgX3/z/6cFHflrzy371oM9J4GY4BWekbPwydHa0JOxGv
	 jiLaZ5QncIbLnGQBGWra4KjgbKhRrquF3qp1U7EqjuUuG6ENRDPCSjbJZqVzUQld29
	 0ZCyLfrKjr2Eyhu1Xz3jDh0Pv5wPYoh/D/VvOkw432T9ejBkBWFGbri3Tuc3aOZaTT
	 2NsYPRyT+zzTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C5D1C3ABC3
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174651179363.19883.9339347293899629451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fc641bfab0403fad4572141d8ddb4fa623584ed41d0f22d6a63f296b8a126de
Date: Tue, 06 May 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746511793
