Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6BC248F4F
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757793594; cv=none; b=h/skDAgvqvYUYTnnTSMi2WMCp63kmJulJ3xpwIEhiof3/6kZqKCpqyBha/na0kdMePaW9xE6FH8LBFmBR8JyTBLy74zB52G9i+JBZSnGXZcpN8DTjVQzrqqR2WUM/l2POr9iJtaKz9ZUfw1LqsUlyGNFQCzGTKOOi30i4iYJY4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757793594; c=relaxed/simple;
	bh=LOCJj8wDzfG4feuFjr5d/PR0lknJbhmPs7Dw+sKHVrc=;
	h=To:Subject:From:Message-Id:Date; b=WaONApLEj2jAodKIITw8A1rBJ1lM88m30oz4lUKKVT2TpcjURBR1cv7xuChhprGk9E4Lddr9kdadBpZvqg06hkTs+6eJuvxBwCIvhcuNO6SNLkA3GaSGYvNjMG3MIc0gorzOTFAa3UGp7c3OKZYCZPRVbGjhCSkNlKaoDDkQ1QY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=emlUnPUg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="emlUnPUg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A465DC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757793593;
	bh=LOCJj8wDzfG4feuFjr5d/PR0lknJbhmPs7Dw+sKHVrc=;
	h=To:Subject:From:Date:From;
	b=emlUnPUgafPJDFuiS1pwioGltFPue8x5QrX6Q7X7uBoC7xzuH6C0mzy9zW4kjEDjp
	 bolWbmTNQPb+5LINRQwLHkLJP3H7aMl3LA4NSgE43ffuwxDSaHyXDHfiwyYrvfVqiE
	 RvWR9dQhhrhdX+Q9jFRfzVLmK8CQY1DODoxxoaROFhJ3a0iYgTfRhDC+y6OZ2KfJSy
	 Z0Y+dnyPA9JyP0KdWGP8IHT01jG3qbCC1qdzLpWOdha/E+fmHzDYsOvSgADc93x0Rb
	 C5HqNGlRMv3rsF9mURn80lwhow7bzfFnI5o4rT6lnLx0NEzKegFSuYbjZ0VetJztRW
	 XPszibra5u0Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9111DCAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175779359357.14719.427008569610224653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48b4fdc3782a1cf951a05fca6fbc629547783fac5c82f1ac4025379020d797da
Date: Sat, 13 Sep 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757793593
