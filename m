Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2829B219E8F
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749292794; cv=none; b=m5hv4Pjo28SE1HSo02hBFo5NKvsbL70B0CqJw1Yfh4pZKXeV2N/JYI3m3XGjQNZdB2KaULnRbdxRSsDUfliruy0FnzOKk5Y5/muiECavW+30lPeYzUmXrrkcJuEQc5ioTDJtvQgHMzquLQ65ImzRHzVJ18YjoqJshdvccQ4WL3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749292794; c=relaxed/simple;
	bh=l5+iu9hWFIHEKKG06iO7sbzaXgM7lUxM9aQwpvxd0vI=;
	h=To:Subject:From:Message-Id:Date; b=Y+b9xUzuEKjTsQiWeSPul/6vxL0An12ckcSJnSKpezhew+rzTY8/9U1RBbSgLhA1zleZh6Q2mbbZ+7+mmSOqk1oHMC1u9AZhlE6R/ULwBuUjkVjd4RZ/jWgmwx+Sjkmwz7BskageCuvIR+b2paOO+4C1UsRp9E/Xscpq6tHSZAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fo7RFmKa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fo7RFmKa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1346C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749292793;
	bh=l5+iu9hWFIHEKKG06iO7sbzaXgM7lUxM9aQwpvxd0vI=;
	h=To:Subject:From:Date:From;
	b=fo7RFmKaQDHk7Bw95a9waLzyBIfRq0J6dxyO9pZpxhN8jR85NGK3eDyhIqsyc0kma
	 1mnBZ0L2bqNtwTbKl+3FJcUJVjW9NL86TpniAtN3SYczeTdenHlDuBnoUpmdJTKKR4
	 1PdX5eXKXisdetak/Hq3ph6IZ3PO6rwONDpn2tjBIgkZzdryVatkkHHKabSwB9CcCY
	 yaPOmkihV/xm0/Uq4JoRUW8OwpQlqqSqYBHy6AmA9ES7gV8ulja/ZBon1WEZ/nZcGb
	 xa+XeiyLU1PifkFzbp0cobMiVluZBgXIaqTux4oCzt28T+c9CbUaju2q9BEdNyaX9Z
	 TU4ZPQbphVqnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DA0EC5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174929279357.28310.9527922022243060868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b872684ce35f9f7392e2f9bc8063f39995e0a9bf061d6b359c755c253651adc4
Date: Sat, 07 Jun 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749292793
