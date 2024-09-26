Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25AF61AAE15
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727342754; cv=none; b=PPI4W965s3+dsjA88lrkJU6L9Wt0JOVVrqI9QRm8DswCVNRuQ+JSsoC3bGTTFYecI/SjPp8oYfDHdG9llrAsKHjWkv56SKIHWMEuf480+euqsg0Suh/QUtSoc28PeJbgzSZoIjcL3/KMPXX8wWfQJVgMT00erXXHY2YLKEGkesM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727342754; c=relaxed/simple;
	bh=dLz9/yUfqjdvB62urxE5KsWbbnWeGMejZo6dSBjQbgE=;
	h=To:Subject:From:Message-Id:Date; b=inLYDhlM/FxOxLveVDITmwWgByecmhQOcOpEEjrsqjyZhiSbKC9rFr9S7IKdSY7Nj0I9+Gx7ks1jT1cSe6FkWYNlTw38ilnA19n+d9ZHIPqMiQMIx24NksB4Nst8OSvdZLiG19Q5jZ22OkHjkoeSuEapB0x7+XEPRXPxe6u3+00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBw6bmYZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBw6bmYZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E0BC4CEC9
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727342753;
	bh=dLz9/yUfqjdvB62urxE5KsWbbnWeGMejZo6dSBjQbgE=;
	h=To:Subject:From:Date:From;
	b=aBw6bmYZMLC5AQbXnILcKZSMSaNxGcQCsexQq2xM2xm6LcQvyRGgsIXeAaCYEQ+Af
	 Ug1FRxADH4NqtRQpAMQExiT2bkZ5Pni+16xGPo+PK8kLl9vG3rTgcVfITqIPg/5kH/
	 81ENAdzsya4BwMrURhpQnhkcwdxxZ9glIQRb4cArwQZmWvEAndxUF72S1PSn00lYUX
	 aN4aY29nhvQWUR7Q2hWqGTvX7quQ4ckVYGDCjkxm3aZo/BGaeyzI0cDnts13cO2ulM
	 L56q3akR1s86Dy2CV6JhEUmYSgBXI/oHWEy7gls1FzIUE9Wi26TbPRvMVhSuzuOe8B
	 AKWYa6Ljz/sfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913A1CCF9E9
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172734275358.21169.17113121792887482727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b3a8226846c3d81bf01f848492fcc6340cc073fcc64dbc57f8311785bff3876
Date: Thu, 26 Sep 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727342753
