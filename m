Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419B31F4CB0
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 23:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741130934; cv=none; b=DzYUcDWYnFZlYo6hTckgRtleYFYbzaZtmD7eBkIQgSAAf3mzTHSXmPgkEoQ2GdclVnKOTVmZ2s06HOUg3Zb2G4KPtrguU7mygKZpiIN+LTCRVhSoIxfl/NKcMNk9G1hvGPYUc/Z6muhbMZnISckEeuZZsKDe0SjP3Ogh8x3uyD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741130934; c=relaxed/simple;
	bh=3YSH0TRNxUdArtwh1Y1t2LB/ZjYEUwGsnNv/E2bHS9Q=;
	h=To:Subject:From:Message-Id:Date; b=RKkwBp+pK2LpDn35ozicuiG7erxA4HRqG9FZSFDN0E4dZeqIs4wPqFGdbC50WG3Nk2Go/sTsvAk/jtWcqWgXa0p87r0KQwt+3pDGuJaLyCmEbFVxHFs6SbuB4F79YCZ3Ab2yiWjFnnesDUuNTyDIs0a7xpbWOycmK6jnl0c2ogU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h27wY0Nd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h27wY0Nd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A8DC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 23:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741130933;
	bh=3YSH0TRNxUdArtwh1Y1t2LB/ZjYEUwGsnNv/E2bHS9Q=;
	h=To:Subject:From:Date:From;
	b=h27wY0Nds+FsAIYrmHcpgk/+MZzzlqYXDU0JsnZoYWfG5JeQerYUakdwxty23ajgl
	 vPEKlDB06rB44o2aEH8KJX2FJ+WUymjC/V++zyJfANQSiGYhTMmtKdRv34rPnZ735x
	 F9KERAVFmzE4o8nHGTlsJbfu7buZqA0sQYrIcyLsSW4wdVdjBWwXEuO4l0rjKyoxsS
	 TJhyVoqTo4M2BKiQDC/IRfmgZ96No1kyL4x318ZCRSZEkuEXUmU37L09y4IrL4JW8/
	 cgzCJARYQQrBrJSEoBxWWr9YvAiVUcUaqkVkXxyxqiM9mVydliMxAn3qmJGhxK3PcY
	 UdxduR37dX9AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CACBC021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 23:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174113093360.21299.18278945914636366601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e353c002601dae43b083cd55da2052b4f39b9df1d530652fac2e8c946a22b523
Date: Tue, 04 Mar 2025 23:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741130933
