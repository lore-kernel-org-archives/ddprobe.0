Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 027BD3033CC
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773150894; cv=none; b=UggG27ls25ewL2Gga3Qid2CKwNdP5mn0nhmnDsvzPZLTMUwjfcP4mlTyenGu2lV4Rc3C0BsK2Kvgqao98AQdEG6JT2Lb08HDz74IU6k0nqHfYN6Xq8NcKFnir4tJ8aw8UsPxjyHYSSt3AW2QZzFx6A0Np+fBeZfR3JpEISZsCPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773150894; c=relaxed/simple;
	bh=pRRXSCTHxtjwq6vgIjfr7siYuuZzdprY2Vhfrr9A/b8=;
	h=To:Subject:From:Message-Id:Date; b=oqbAgjC4LAIWJtBbYftFBzs5ixGIY7HCiw5rpx9ECejPE6zxNdF6z7WGkUT7pvB1re5mWjRC8QN+ZgP54hB1eBWBGoIGkLHTvspZFepQ5XCU4/K+j15s9YTw9y4BX2wDxU3y/BoYjXohRsrcgHXiWkZkQZyD7xka5TZVY6WHIk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mpn9LMqZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mpn9LMqZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A330DC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773150893;
	bh=pRRXSCTHxtjwq6vgIjfr7siYuuZzdprY2Vhfrr9A/b8=;
	h=To:Subject:From:Date:From;
	b=mpn9LMqZ7mYwUiWzJR6fDSHH4yxg3HsNRrKPSTyZggPAg1yedrfsUmbUDFalxRDM2
	 UJpW/9aZT7GXv7UdpxIOmyQR53RSjWgGvb78RlfhhlLvd78MvZM4n7ss7XormBDlsW
	 joDI/PsOw3UX6t1GW8UhFalmAVlZrRfWAvhCT7NKpY5YYIqZ0bg7Us6R7TkTdvhgiG
	 5bQNJ4Ml/mij6ASEFda1Wr9osGBjQybpZv5iThevOCVnr9m7rBTJLbNhB0gCI9XwEJ
	 lK16mpHVg7OIbFUA3/ex5H88Hit1bkwkTgbAdyAkxrFrOMWiQKo5fN4nrKmwap6UWI
	 pSzUlD3eKU2mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCB2FD2D98
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177315089357.28002.148530524430606485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b928a1377c08079592c380abd4caace97fdc5d67dd14a80f3af3a3d3e01aacc1
Date: Tue, 10 Mar 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773150893
