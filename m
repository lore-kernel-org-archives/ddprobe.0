Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385B55674E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744585794; cv=none; b=iqDRqccr3K9BkfqJsjx2Ep8hDRNKm7Vt2iyygrunCAua1AQel87vivO1qO+auhpvoFTeQ2IfOSzotKYVEOWQzsaCrrRc2SCQzs3d+qgqFBIAgUYwwr6FUoKUV0PxdyPSIdxhy3+HLjodm16TipNwrCFATD2CtvloDmothdsybuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744585794; c=relaxed/simple;
	bh=Hd1GENUzWIYC+2UtiIBmnjQWRdl22h8+Hh2nZBDOFhI=;
	h=To:Subject:From:Message-Id:Date; b=GPSuaP0J3pglGzJJ46r2sHJQD7Ofmxnu8uuQhZE9OszDIJrqkFQu8LRok58PbFEdNvjYPo4vr64gGJB7XlQ8B3QuD60E0529dxX0iieK2+KR51erYDXFO5/pk+yBobQ22LELXqbRDhITFPj3NvsiviejMBZTYDMj5kNd5Yv+N3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hLom+lfU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLom+lfU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D80C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744585793;
	bh=Hd1GENUzWIYC+2UtiIBmnjQWRdl22h8+Hh2nZBDOFhI=;
	h=To:Subject:From:Date:From;
	b=hLom+lfUHwBnynQvipI4OSrWG8NBRig6n0E6ovKoysGgjpTqIDbTkq1YW2JJoGimq
	 S8wAuRwX4Y5o1vrcPkw0kp1mpMS92LIuwPfgs6k9aPlEIjlp8a6msviO8w6/eGRj+5
	 Hm85qxZGvgZa1YjbC0oEclcx7RnzgzPch2COFzU0ZbK1KjwPPOM3bxD+Soykru87kE
	 xDQK1qRyxvCjGwdo/tabc94c71prU8l1NCEYHvkTYbmUgeq5SFvOsG1a5ow6ysf2HF
	 CYtaX/LiCSVWXkKnQBUOT7ccoGxIZWnOZTVRrmqp51E5mCru3S6nA3NklUQ8gvK6hh
	 mADYnbOotlWFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9531BC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174458579360.14105.14513642267064700699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c80d02f172c9362d5fee56fbf23635ffdca04f8665f6f14100b208c918614fa6
Date: Sun, 13 Apr 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744585793
