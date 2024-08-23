Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306D71448ED
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724456154; cv=none; b=E+E0c7chcADwkisOlpNF0WSt74FJoflnWBslpeTgEUB/5BOq3Z1T8ulS91/nzgz9qo4OkC5tvwr1mHugfA6PSNouqYvT0UjJIKOMm2teBZZnTKldVifa1kiQZjLnk5Hs6d3wBSRcNx8/V3O8WKfJiCUHV2DEwMFO0ArqNvurPCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724456154; c=relaxed/simple;
	bh=XcuNFcUIM8CUO4XuzttT7nY/ydTRknoOJQ7+gT8cUSA=;
	h=To:Subject:From:Message-Id:Date; b=Vby09elJi0KbGp8xLEHlL+VtunZb+PnK3O7NnxjK8yjnvKp6hoXHOn0W0T5Xo1jAdoQSEgBssgb4UYw2Wfa52b01/aGfbhAUm40UGIsBn7gLbcvR1sn7vyh+kOGO7471/xEbEE6uXz5FnQZRK7WK41L5KHw5n0ey/xIIFh3sxVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dddBdPfZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dddBdPfZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B84C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724456153;
	bh=XcuNFcUIM8CUO4XuzttT7nY/ydTRknoOJQ7+gT8cUSA=;
	h=To:Subject:From:Date:From;
	b=dddBdPfZPfonRy55bBbGkI/0Xk6QFU2IeB8xEZ7a4I7wKpT2wCS/q4d7wYh8t7tjr
	 TDbn2oHoNl765YFJVtRfLHKphgvCj5ndYv8ItBHRq4lwIrpBTJ8RupnXLYdyoSNMFo
	 PPHlzfun+3nnO/dEaMueWgxwV3PpZ37OztM2XCa3UxOzdIBoYFFGipTbsDWdccnXHk
	 UxsrDs4UsaI7Nh0uAIIdWhRnWK/+y25Vh8OoZlPIyifBjMME0Nd3NaR8k+G2fWGr+7
	 ik+W6Zh4hrX6Ger7HIxxw85kPPqP8zF6knrOg0KfpfXi//IO3W/TMi4dQjvV+tl3Sw
	 ixSc/vMJBuWZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91594C5321E
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172445615358.17156.18101347800861114155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c240e94a673ae40945aadc4b49add0824b7cc36b53173ac64c539246e0ceac2
Date: Fri, 23 Aug 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724456153
