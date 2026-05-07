Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BEE131F988
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 20:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778185054; cv=none; b=KPIipY4TohfSqhsvUEh4VfuKazEfmsWELS9nx8nLrgVUO1RUp6ioLDk2YmdzZCGm3D5lDQg17z6E9K2tMuOyvxv7TbhPILdykzZB1C0Gc9TvwPC7Myv96vCMTFMI4n1o3gYxceWWfAnVdV0yBRwPn/buZIx+NEwx/GcWJsis79U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778185054; c=relaxed/simple;
	bh=ibEfQBJuKSePqoPC0Pvj48el6PVfLAx9B8bXVSKu/QU=;
	h=To:Subject:From:Message-Id:Date; b=dKHuU3SsiGL+9nBDSnSzTYXIu7SevSZOwBb+eWVzv1IMBXbLXSLnhlnqwaro0y7G8UfX3CvoWq2DYlhK3L6i2//+7HAQPva5wYElBLDbHS7ScdmXxnbuLuT0tzaO9p7GBDRJZOFIOz7q6U1Wd4RXuyjuyz92j9Nhwp+j7cEpHWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tcw7tKEp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tcw7tKEp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDA62C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 20:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778185053;
	bh=ibEfQBJuKSePqoPC0Pvj48el6PVfLAx9B8bXVSKu/QU=;
	h=To:Subject:From:Date:From;
	b=tcw7tKEp02csec40dOFiyiGFBkXIX+dA18fhjFlj8kXXW2+8SlUukPQZcT1JQ0tSO
	 uBdYAnCPNAIThNinlBvfb84hA1WKFriy++fQZcrZlgNQi3CWpunR8tqJS17TaG7eYh
	 uyVlCzEmz0PRQUbiMA2dgDvwpry2AgcS/P48YsQiFvIHGBSHU0FfGkk4HOeiWffJKt
	 kAiBe9EglAEkHngiOTy3AvPxYKLllRqRtKsR27JwQHAA/1mLWrZq0IObpPgJEM7KPi
	 XxbvPxZy9Bo2ZXyLfsyA2e88gPn4nGlN7rB/vIc3ViEr1cpA0qDLybg+pRl4X0qp+D
	 w3XmsEZQG8e5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2EECD3442
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 20:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177818505370.18197.10582720323185457073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de20400561a8f03f5fbd41cea12cd91ed4a0e423ce0d1b5717fda5df8979e4b5
Date: Thu, 07 May 2026 20:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778185053
