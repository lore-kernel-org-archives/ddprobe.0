Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410F0255E34
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747049394; cv=none; b=AbMctuzZlR4iOce6/6WYlTTk7f7OWk4vfRxGI2wiws6vye0nc2LPQkAbkjGXNUJT5YqWPtdSO1RZH+mNOguXkxEudFC1S0GO6J5U/ZmsyxJ7E48csRoQrx0t2R5OnMZzapIg+PQlJCLy74tTE1mAPqi3+N4GlKW6xU4PDNunsSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747049394; c=relaxed/simple;
	bh=HpewJF2h6Jf/38wN1E6+ad8Rb7PRtaeqRx5JNZsHGTU=;
	h=To:Subject:From:Message-Id:Date; b=lLmbvMfgkSV4ALRaBUnB9XA0mW18SvdSFkE//nJLBphrJJBfID1nfy5U6Cf6kGfJoNCug6o9BClJpGqF3ifTlVNdzCQOEkqupViyA4YlHGt//xggPQmc3u5b9t9MK+ey661PDvXewC+1ywaUOwbVOFhOIddnGjSnsfL/v8ehCUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qv8tTu29; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qv8tTu29"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F44C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747049393;
	bh=HpewJF2h6Jf/38wN1E6+ad8Rb7PRtaeqRx5JNZsHGTU=;
	h=To:Subject:From:Date:From;
	b=qv8tTu29mjqzkLDqZee1ooxGeTM0qoXBOQYOtrh0iOREzyEiTinHYdLWYzIIDXwU7
	 q+QgXJRK6gUiAgBMB5lfh1KeaAcOc7Sv1zCbZRZDa5MfDOcUv0b9uxEHPJu9g4cFyn
	 +ztOr8Pd3zUoCqHmvIBh2xGs0WtH946hnTG7YeSZFiD3UMXYUhwmj7WpAYh349gFPv
	 GPBOyCcME091SUVoakE5G6FzbHoBwekr7akVtewVG0dRaw9ylOXOqyTsj7dtLkBWyJ
	 0Uvmq1r+i3aR2wU06jIjsmdnAtU7Kv61kI6F+31fm1cxJ14P29cBq8VdlmSJj4+oND
	 nFvwmrndzjorg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC52C3ABD2
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174704939363.6799.10039972920439921037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dbec2ed886020fd2a2c398623484336fc0d53ed6edba78d22743dbad81a4037
Date: Mon, 12 May 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747049393
