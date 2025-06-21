Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B45DC2F2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750487394; cv=none; b=HqD2SIl8xL4kttFygM7SCwC3KKX5IfvRyI88Vyulf9trprqYQXFBw8qXPrKFx8ZzgXPvVuYCLWH+uxyuFpNCuCbk7XCe/Qz++ykKp72fjA97ssd0CAqGWVm1bxgMQM+MbXs38Jw5lTf1Yrn4ehITl5eck8NTWUTtYnp0NgAy2FI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750487394; c=relaxed/simple;
	bh=5awJJJCX3NA9kxFR8pIQRu/BHuhaeDRxk94ZhouRu9s=;
	h=To:Subject:From:Message-Id:Date; b=rr7tqHjoa088diu66D8xpK7y3H/5ImR9Gee9nd7rC4wbI3tIXAGgqvKLNaPL61xMKSdKxAZ3xUGsNnGaTAhKdsRFyNWeV59U87vS61dGp+T1+FKxXmRXEvhXwtCr7Q81MA0hDAx5bQ4Z2GIFHKzEwYE02FoxkBmLjeAx0DRR8N4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdgANIlP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdgANIlP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BFBC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750487393;
	bh=5awJJJCX3NA9kxFR8pIQRu/BHuhaeDRxk94ZhouRu9s=;
	h=To:Subject:From:Date:From;
	b=gdgANIlPcu+xIWoZJIqd0TsQr97rptHQeyw9dwGQgJrgYcv9PPyxHaJ8uCk2xUF5w
	 Y4w19BgBTmPAI/TQnvV0N/STy7y5Eo90ygMdQbK2tLj0v/683+RGEwZGGBw97sHL1G
	 BGddsvJE7Si20C0Sbzf83Sc1gETkcR0EzUrYhVcSvHFJUu6DsBGgNrks2apmXB2ESP
	 GRDP4iw00ZzaMzPk/RnL7zf7gtQ0egIsSJ6Cz3yoh9oqhIhy9kZHbaofmKC2EItO8A
	 SkZAeiF9SB/cSVm5Ne+J36K23WEQLtNcWa9a6NDxTm3TM082OmoHPJC0hskcSGPLUP
	 MN3jMLcgHzHWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D33C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175048739357.13234.628609513812333307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec871c20944400f3325cb70fb9530470fc793b000d23926c4dfe4ad973ac4dd3
Date: Sat, 21 Jun 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750487393
