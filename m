Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA4138E100
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 05:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774504494; cv=none; b=sg8iyxxZdPrsZ3hYylOoUtqGRLLcNRnRhI+4QA1ChNtMlAgCr11Obk0k8dGBQI8S1uEobT6kbTzqLcMSpL7y8ob0/H10srmia4taYrs5xLYNN4g3i2qcq5FBJ8ncRCQ0ErBVGm4yPiroCPch0141TrIhbHpCO6kmDN2oZaFM3Hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774504494; c=relaxed/simple;
	bh=bCauSoKCErId2opv017YQcZ1IeYWiK590j0NoA3bfjI=;
	h=To:Subject:From:Message-Id:Date; b=DZiFav/qU9kv1ZQs+1ajlGpEkgi0s0284RD+pvO/odlIHp8d9Wu3DSvvgv3VkzMRo93D7PK6AUL9Uvb/t0dGSw10Ay0j3Yp53atFrIHzizqJlA3ls9ONCAvWL1wccn53Zcwqr7YwfWD2d2FlgjO6smfgpOI2ZwRU9djc7W1aEBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YDjxLqDt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YDjxLqDt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C5AC19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 05:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774504493;
	bh=bCauSoKCErId2opv017YQcZ1IeYWiK590j0NoA3bfjI=;
	h=To:Subject:From:Date:From;
	b=YDjxLqDtbDRdQU2weVsHhYo8CxsjGsVC1uQepCzd2Z9+p4UwtZRvyg7jr24kZX5RY
	 ZikM93a9rxoNPrELZ8hSvPrcfoRFvxjuGLEGrvS+9y3HGHIyV1aDNDErQPYuj/kklH
	 8ANmJDeODz/3dMWOvlLpO9IaBfN7TlJQ8BQr97L/rPm+B+u095RpdI+D9IIIA1MviF
	 LnUdOmugKLMfrzuOb9p/lVAPFELkj6DAWGAZsr5JlPFvKAvHQ7R8Z7oVGyiWCRsD0a
	 0QK1iEoRHBXlIhBo79iOFoTIHsH9VUBsQhHYqHMV6H+MSCfGz1Du70fUne3y2H/tEt
	 7RNay3L6Hrg9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BAE109E557
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 05:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177450449361.13429.9877378204548068526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a8c7ce9c1a138df7e19a422674373a7dc58e5f1ff889149b263c0a31ba63ecc
Date: Thu, 26 Mar 2026 05:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774504493
