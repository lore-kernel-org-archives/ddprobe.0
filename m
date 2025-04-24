Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0F331DF988
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745520593; cv=none; b=i06vJxmHLeSsyDQo58SXeFAan7Uj56eco9tTQDzCLa4/Hf2Fn2ON0KEyobdMYsY167JYYdeevSmH6ppxBVl3SeJavkchPh1AielEEQjFEE7dijyvoI/MWaw4wBwB6oaza+MCgosftQ1lEQTTee9d3bnsMzp0nBQWJ4XKQIgw1Zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745520593; c=relaxed/simple;
	bh=SJ+kWIFM89pvFnwu0mnvxqBGZhkDAK95i/EQCuevkZ8=;
	h=To:Subject:From:Message-Id:Date; b=Lcm0xFvUBlas299tEr0rV7zEh5EDWAyOCIE8sgO0gcVfMYzteehmjjgdz+06CFCK12KRd9BPYm+K+bvxpDnHCuKJLqsE0C4mA1dP8+pnZYJm+F/lRyXB1VIqM3uNqn/w6urehctbYukjQ5h68R+vLLoxrbxWceHFTlDEW6QQlNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ApLnUgqp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ApLnUgqp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D063C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745520593;
	bh=SJ+kWIFM89pvFnwu0mnvxqBGZhkDAK95i/EQCuevkZ8=;
	h=To:Subject:From:Date:From;
	b=ApLnUgqpuPOn7drnhZzTwrDY4Cpk+iJhQMR6ROIB/lryjNY53cYLcSIjfn83fJ5VI
	 1rs+mgzPD/+BvXX1c/UVuz+iUV3J/c9YTnOWqHEgvWaULZNIIMjrdGLG9iVJ+b01tX
	 ETw6D0pZYUjTlEMoVETMZ/azSDt77olrCjte1LIww42nZIeHILl2ZmX9hwYG85CsVm
	 eeeMXJGl61Dj16scQ0vrysyTej5TR56kO9AllvzYwJL43OVfEbDII10+rvVkMyHv6r
	 jAW+u4sVGI+sHbjrmZdPaHTwz+xROoFWpffoAuGRl9EBLobkrwV8xNSRKDsYfwaiNJ
	 ogYhZnL6B+//g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED5CC369D1
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174552059357.22965.2805097288686659635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8294f843e2bfe5076f89eb5ff93b45d11b5055863d28e7a487890f29786b4c77
Date: Thu, 24 Apr 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745520593
