Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233F32E65D
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 23:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765237374; cv=none; b=KTikI8NWXSbz+UrjxHmM5iKAvjJU2V26fQZVcJsaRJHSuBN1mMB41Wi2y73VVXL+mN/6LD8ygDZ5ihU9xXovB284v+4OXXyefyn9lTDOadspK8mdvqA7S5UGEKYglWv2ACTlTVE4RXruL80ejl8Nk/7rbuHdtbQBdLA5AIq0o8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765237374; c=relaxed/simple;
	bh=MSEhmyNGJU6WgJM1DjywD4VeqLA9tOndpk0NQXScMUI=;
	h=To:Subject:From:Message-Id:Date; b=Zlx4IaxC4q0Eq8kUMHTZ/tjxEeQQiBMej93WGFs5TN2bJYEihSOOGgtTyDy6BnjUU6+34P6e7ADhkIzgE8f0YsOUJv1QHuanYSb8TdwQS+Tw4lhaRHJanVgwkOTFXOJ6bPziVFyZcpSNS/ma9pEWfORsLlmaVgX3bM6VGYB1EQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cUHBfCv5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cUHBfCv5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1CAC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 23:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765237373;
	bh=MSEhmyNGJU6WgJM1DjywD4VeqLA9tOndpk0NQXScMUI=;
	h=To:Subject:From:Date:From;
	b=cUHBfCv5qj8tlSogpsOUfM8ng+cHDyIRCTvFWIBEEr1ALgPApQM6VsuACFKynX812
	 s3S4wgyIqwLw2QucZIiju/I32X3K+8UHzuoH1agjDdh+92jF7ZlMq37KkYMu6kGdr4
	 sukFmaxMolbQIUxh5Z/kURUdV41S1/kxRh472ppVXEOqjTM6ar4CewNKLguKkVEPFa
	 DRfFu1KkAAJxdP/Tw/xLLo0DRTd0r6AZjhIOUBvNWLaw0TG5j82xgFm3akVrIjvaUs
	 w4OpicQX922zS3lHOKUmd1lKap4fY76WCd3mePW3pRqu7giPVLOXTcdkICJwE76+hG
	 SVA7s666hj+0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F39D3B7E2
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 23:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176523737358.28342.7477575451035175389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45437c688f4bb1c402aa1a8ba99344eb41954eef0ac5d8e519640b0a94d6d3e3
Date: Mon, 08 Dec 2025 23:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765237373
