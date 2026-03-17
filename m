Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D0C3A6B79
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773743694; cv=none; b=ELYMT8uCtCtUSbXIafA/8i26N6rReP2nHTZfFoGtvyesbcruzlwtZDf6+8DLlhN9p0WglrahJf95jvQOi6H9Idx3OrRW85mSzZbS1q9S9BuePBS/kQTJ02v1WVvIfaIUcpAQDPd2NDPtHCbCbr+a756IfKybNJISQTGT1UFQBuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773743694; c=relaxed/simple;
	bh=bBfj7vbvlG5Kc1WeUaz0WpTH60yAyWShXhMAgBH0xSg=;
	h=To:Subject:From:Message-Id:Date; b=I5WjTNVw5hfM8PeayoeX5s+WwGqUcAd+j87SZzmt/xsOnoTawN1+UzHgORaulUpJVHBN/6c9TWF5K+B9GfWl230gP31eTQ9KoZDPaXmFwJvDoUVr/u3L2v9TbwSv3BHSTcsUEEQ5trWJSoveaxaKCKtcMxBHBmGX1wciWziUw0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qrpMN3q5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qrpMN3q5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5CF8C19425
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773743693;
	bh=bBfj7vbvlG5Kc1WeUaz0WpTH60yAyWShXhMAgBH0xSg=;
	h=To:Subject:From:Date:From;
	b=qrpMN3q5luXvohprWnbBdf8839/wkQRIgndBMmMVWylu6eK2JvnvHISAEY9A+QudQ
	 mYdTlaqz0YmOm2WhsrmksOzcSW0gqTghNqqzdTnh9gpuaAQNiNVQFlaqZAXloTtsq5
	 sYH2EODGIqaHa0Oors/egnE66CK7mzHbGzmWwOwYVUQzJI6VRlhIKbaNKQo7D9mfDD
	 UhZvGEh1oRtPDnZRbhjjDl3UwcCOQ4tmjyKMF/o+8jsvre0kGLE1GHbMaSbAAOK4uF
	 MTh8pA9ast1YPG1o6DmOMiVmYwn1OlZziVZa6qdyVezmEicAu82/py/tCheA7zZW/7
	 Lp/v3Iz887hjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F69BFD7076
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177374369364.13239.9124047195392307294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5009609626887a7ed7ed371b2282e81f991f9a05ee113790fada373fca51a65a
Date: Tue, 17 Mar 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773743693
