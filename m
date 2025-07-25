Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 064CA1D6194
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753469395; cv=none; b=a8pFu0I++3yf3l4nWQd43dp8IfnGpOsfndWY2WX0x4JfGGZRqg+xGB4noQANbx52ddCz4Iq8V+1sFH7dP8Uh60E+95UX60nBOCGurJk9Xq1adb5+Hu0+ykUh8UB+d+c6l87Pjfx0LXg7naXNrTzG3GgSsCw/9klKbig2nNtob8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753469395; c=relaxed/simple;
	bh=Gh/wKvVQtY5p5ZEhinmzj+pVZCd3D9xAm58pLmuU72s=;
	h=To:Subject:From:Message-Id:Date; b=UCpTCahfeuJiOux12pmcOQTwjB0Ius6wDdA854MpVM5H1sO1tEKhAEmjbThSibrWxuyBQpGB+fI1U2bB+WqhK+sz8YmqMYUobG3EC/kA7KQ1SX+/HSHMGJ5mdUfVxwobND+R4M0xGAUczfadKToiQxO8CcarF9ReTkYkdAIxIu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Boyv0yEQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Boyv0yEQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F995C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753469393;
	bh=Gh/wKvVQtY5p5ZEhinmzj+pVZCd3D9xAm58pLmuU72s=;
	h=To:Subject:From:Date:From;
	b=Boyv0yEQxiju+ZivtdXRIP/sF8viLUOUFZ1NF19UCLGbz/Ge8RwBA9PZjXvxCeAE/
	 ApGjP76I7Q4OKsi5/yHh58mY3K4xJrG5CVurqokRlL8OXzQutsKjFh3UutgGWVypO9
	 JT0ASh1LzNMYv7uNHjL4Zt93nOJi/YPuWq2lhiwmUmnzU7/2+pPZXVsFAz0xDkLid0
	 WQPFops4I8CxgjLLyFfxJXcssUWqSSQiwwHS03zW3fhCPBmhvDOphIqCD1Ae/t/as/
	 mEwtp9U8rcb16Z9isZNSioRSMgQ73CrpCsgy81ed1PYga1b2lGFHLOpf4Rh/dLKZSs
	 ZBcgbjA+qckSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F908C87FCA
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175346939357.19219.6455165487808890329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 190a22fc51db03dc21dc63498ce5b60224cab30cc9d78ccd48b44e9b9ba72811
Date: Fri, 25 Jul 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753469393
