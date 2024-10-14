Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D65157A5A
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728944754; cv=none; b=P3YwliiWMVIsgPp2lbfdaPkG3AX78JZ/AhjeIWKyOWEXUGzFq1QmN15G8GUgyVQiEdcVp2SjGpocTuYUzVdpfLFAAUPVsHSWF8sHNM8ajnSh7IbTVg6pKi7zT01AkoX5v9x/nf4lSs5qEZV2fG4sMKn0ed9AjmwRqjjA7Mi9xfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728944754; c=relaxed/simple;
	bh=3+cNPH2LpU4m3KpUYHZJdD8mAiMnNhDgC5yrlFyw7vU=;
	h=To:Subject:From:Message-Id:Date; b=aNp2CVsUv1tmySXGjvtpHeAGXDjPBxopjUqNuISuoJ/8U4SxRaLzYrDn9wbsKlAJs6IQ4aJTQ1DZw4c8g4sCDB5QUkhsSaV5aM2DnCWkevhQSex0MgEu5o10jJ/RR4lz4vDsOwlG9JYFNBvcBe0Im/YSTX7TlAmMk98t472Q0/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OaNt/YO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OaNt/YO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF2F0C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728944753;
	bh=3+cNPH2LpU4m3KpUYHZJdD8mAiMnNhDgC5yrlFyw7vU=;
	h=To:Subject:From:Date:From;
	b=OaNt/YO4RDtKL4uGwkU3rFy2dUNyZAevIv3yJh7WKcuOKmyNGl1fBMkuFAyhVvtQM
	 cfGGQF8BV0f4CY1EnNhC5zpgnbHUI84xcWjjB7WsOpPLY+1g7Oemq+q5ReVwxK7JZ2
	 b0OCCeC/2DfRPievxHlqLb0bBX3G6UtMYVKwcDOJKq6S06w6g8MhrhEiPyhm5cl9ko
	 lMAgqtqVL1dGaBsi++I7V2oWgMcmwmBB/cCdrYyIFukwkFJL1A7eWBbs1fn+Gl3t62
	 duZv27BVc6c6WUCdV/mhETWpLMbvkra3tLkYWq8S5TFpCMOEpJ6Q1yZRR3N5ppCdpq
	 RgvFHesj50Pow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97982D18157
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172894475359.9720.17459268905041461409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36712ce1e8c3bd56d3069f03318f8dece7fe7816926b50298ba402852573c9ce
Date: Mon, 14 Oct 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728944753
