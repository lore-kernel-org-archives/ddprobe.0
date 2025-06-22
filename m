Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35BFE1ADFFB
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750588794; cv=none; b=tFKvRVDpwAPw005EiP24puBJMu3jJmJSJ2uy/Bw465ArXg+qiET29n2aOEHkFmZ90ITqvx+aDzoFWVp7/PQwQkd0gMakJFtJ7ckwzANhIusC+DQeN8Y2vb0aw46kvZvKBWI1eQvuXzAviKrDu5EL81ihxfRwe55ybohfU7tbhaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750588794; c=relaxed/simple;
	bh=jhnGWF5SY9RYlgBUup0xlqMrr05dVnr81lsVEzCh0R0=;
	h=To:Subject:From:Message-Id:Date; b=Yk16cf405Q3R+3ZlNgjgmxPUwYgHV2qqbAyqAo+jUZfcqaxJWoFDv679Ud+vJVgTOjXsywv5QS3btTtjf3kmpa+s087m4rsznSn22AGsXyolMyf+iU8hWM0o6v47p7KvcqytUf0PV+w9CUR0vTLedg1VEg0Z1AjO/oWKIdj5obg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awn1o8Q7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awn1o8Q7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67A8C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750588793;
	bh=jhnGWF5SY9RYlgBUup0xlqMrr05dVnr81lsVEzCh0R0=;
	h=To:Subject:From:Date:From;
	b=awn1o8Q7dvAZ3/Frnyi+f6zy54V0i10oiyktpxK4sRZQQsxI1Sowq3NGOYNiQxyBb
	 XW3QXILDYdv8N6D07+NHvcfvfYMVDhM+qRz6MnKM1gDCElKf0re2CknmnCjkRoHUh2
	 WXvhvWmSREbwxxeBQEeImLuZ5K6YU8adwSV50G9VCq4mthMG+T/kcF+Asqsn2andNV
	 2t9XnEGwoObxM5GAC240wsvbM3DZ86FiDo+HTxfcXrmBZjIpbS/eUckPB1wpRqy6X+
	 lDrskpUXNPMrPrp2mOLMimhWIu0+BmPskNDNfM72E8JPzToOw/qzunHl11hNS3jMH/
	 9fNZSRohVSCmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94837C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175058879357.6354.6666792081928215011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d32f55d6ba240538af3aa89838763a6a4084ca3f041008058be3d64cf32d7ad
Date: Sun, 22 Jun 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750588793
