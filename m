Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF777E9
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748056194; cv=none; b=PQAQuCRNa7JvuXxi91z8zgVtNDH1DqobQMH9SJ8z+PLBDO6zTCJo0/INk7ycyMt4hrgqwtx0TqzG9cNg7sDWw1KGGtYBOQGOUyjRs5YdwmZHokdGIxJeJ2w0D35UnDrUUFHsw+05ur0J8yf8pMc2bbLBNOP8K+Uj/QAUWZxM07s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748056194; c=relaxed/simple;
	bh=pOM8+7SYD4STW/3X2a65v/nalzTALJ6KKYQtfG6tUpc=;
	h=To:Subject:From:Message-Id:Date; b=SUqfBGvykY39L5s6uQ6KhrGgBBMip0U4YlPKy7+4gw1RfbYVvx6SPt7lWx7/D1OkKVBjUUs9lqk1lCG5Ew9p7i71MvVMatQEp23JwawA4BTtnJ2VYzsllzC28piwuOUxcOLHeXWpJDSxW5qfryI6k/dongubJhp6cn6nKK/nf18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqCbFTw4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqCbFTw4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18DAC4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748056193;
	bh=pOM8+7SYD4STW/3X2a65v/nalzTALJ6KKYQtfG6tUpc=;
	h=To:Subject:From:Date:From;
	b=nqCbFTw4D+GE7vubOGe3+bxmFKEdoDu9/loTVLoaqXoY1wDnXVAaj1IUsPvRs50MX
	 y5713jtPNfAfrrjLcFoud1Zdr/sl7TMp3+CPyjAUJT1wPiSWyGSzmhseHjSaMGEov7
	 WUpaZftp/DC12+fIN9J2lk9kDMfrOIWwiDJq2GYHTj1F8ctPw6tmaVhd+jiNH4laqc
	 aX4pgtJaR4ttwvlWgvaEXidg1+U5jHFfMCSuKyRXksvR8Lw8gj8X80ydqD63DT9Rh0
	 UySB3qqKHp5VmS0GTRHyRUaTsuEEv1rNeX/BC2Ru4Oh/kTsoheF+gOqqjHHs2qAUuB
	 qLSXYk0JKveIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0E5C54ED0
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174805619357.12059.10116654584265774278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9c1b5ed0e779e8637e68c535008624092a80198583802d361a75a9b4d92da0b
Date: Sat, 24 May 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748056193
