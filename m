Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EAB232395
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 16:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777913254; cv=none; b=VhtqgV9VTcZfn0r+YEtBxoDZkHYhU3leSzePcIljQjNSR7WrQDJ7JL2OpSRsxNx1aHndM2/U2z/93SqwJep75heCncckjk5Pml4GIIazuA7eNW+2knv0Wb4CGo4TJNScNZo6OkRII23CKgHM5xNigHJPGpHnao6s3SMmqDQXoRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777913254; c=relaxed/simple;
	bh=PR3g3ME3ASixQupBgKLtfdq7xONORRZedD6DzycWxTQ=;
	h=To:Subject:From:Message-Id:Date; b=NR5YEEC80QrZ/6mmmJvwq7OlKM81bsLgzJLgkVUCfoMp5LjMFzySMAofDPaH/Oq9pgUNZ8tLg+Xy7R/V2+zeRbF6+CYl8r4Zc07J5sOHBxwcZKzcwQsMbnqlACjz4Y7G1EyIpeMltKmr/FDzdYv33CyjC29N6Hr8lHvXq4MgRRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7dF5ItI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7dF5ItI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9951C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777913253;
	bh=PR3g3ME3ASixQupBgKLtfdq7xONORRZedD6DzycWxTQ=;
	h=To:Subject:From:Date:From;
	b=N7dF5ItIYQNd5DGqdJpONdVDiMNqtdszgFIhsaf/y58gU7BWnFp8TIs6CiIlkH0Vh
	 SkKNRcTgOtGwqIINO6OD5A7+kDLr2+3qXz8J5L9Yudxi6vApLQKbovFdHgfGLWtp2+
	 hvufKUV9CLKVx6AcS6vTCsG54fY/QnvVBlgSoMdi5Z3+f4hpJ6leL7uGlIx27d6eJv
	 zfYcUdRyaelgVESaGzLL/01/Urpnrbj80/4BLtZNlRy9a8l+vE00xRimADi0DwGFag
	 zHD04xwrNraqiANi7T9fLyD7v0KiEqjSZ9QgQZ3+8yGJMfLlEiUMDtc5s3W5LpvWV/
	 znn4a3dSQ+U5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE7BCD3427
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 16:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177791325369.21475.175568963461950508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce04490864e71b14ebc487d7958051764afced500998c946f93560dd751cb0bc
Date: Mon, 04 May 2026 16:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777913253
