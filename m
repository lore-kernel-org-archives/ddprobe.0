Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E052221FDA
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761253794; cv=none; b=QD20w2lL4LmMr0uBrxBhwVrqGLuQyYZz3aO8SWspbRTSesG2+EcGYxgnTZXQJ9WpmUfUmr0tT/66GLEhDdKcxXwvr2erOkR9IqyErnauSOw5zeNAw0mpj9uhkY9peGEhIcMcNHm0vdH7/41NYvQXkAq7lMg6L8VD/RU0g/pBFR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761253794; c=relaxed/simple;
	bh=bw+vyCx6WvyCrUeKs07m2cpJFDXGhovOhGb5+uWEsBk=;
	h=To:Subject:From:Message-Id:Date; b=PlODN6fmpj354JA147zp3bQV28RFeklCcWu9jIsGuLTPajgZq/S49w0U8Nql78obz0pcFQ5f+QVENtXKR5iqeCM14N6DL1sXgQRNZ6/9uYUfxnvB/MW3508Ecrwk3sWnLGVNSCWre87zCys548sg6iJsW0q6cHp6z1G3c7zh7wU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JR89odIL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JR89odIL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B795AC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761253793;
	bh=bw+vyCx6WvyCrUeKs07m2cpJFDXGhovOhGb5+uWEsBk=;
	h=To:Subject:From:Date:From;
	b=JR89odILPu09bO5nzvTR3Gz0F85aZ55FLPbHmXLkmTB/Chri+k+GFqAAnRYFeIhGl
	 m0tkbjve8+kBP4MqQQF+4XprmDEiSg0T+mCuJNRw3Wbuv0eqXAXLr75I9zuZMG3MAZ
	 xP4iMNvF2UAMt7m58MvRHstck9a+KJQHs4gQO4YhwcoKA0/0wuuegGVb31vZw7mkML
	 xyPQ1bcdyj84adPEzS8KHP2a8P9NYJovGZvm6KIDphbM04v/XOWxvFFKR3vN3eq2Bv
	 weh7kQt1INsA34cb5vPSaDwXLZ2oqEa5gN6VXp3TuVGrvsiS0+qh1U3EhDezZp9cmD
	 xC9tyZRXa2X7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A180CCCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176125379361.14373.1774459038295930044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9679ddce941b5defea9c0f25a2e4a176ec17b64cf5d8d97c0ec54f6a3fbd3d10
Date: Thu, 23 Oct 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761253793
