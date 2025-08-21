Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7AF1805E
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755747594; cv=none; b=idhaMf1nydNg4HXrolDJTXttoMJvwBRsRrCqohZB+BetZ3kjI91+xo9wLATIQ1IyzTkxXxUhFFDt0XXOfW55HArbubSlSKiQbGU42rJpEJWqdWgyNW6E5gYiwiVMZF6lrITbDX+gsC4AXKeX5B3qTvqUAMUUF3s8KUQPyhZPKV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755747594; c=relaxed/simple;
	bh=STdZYNP7+vkYd/L3npl7I3Gb3fVxRt7OK99RKpuWqQs=;
	h=To:Subject:From:Message-Id:Date; b=YkpweMKPSLjEvITvlk7thp7GPI0AmxYUV30J0x5beuCIzbqDjEf/zjsGIRNf6QqDPnJvCQAqBY547GefzOEEW8Kdr78UCWJcguhgEaOCcDXbL+rbUzUCoBFVaLZgH++FgB/eYivgfZPjcihxnsVC2cT5OY1Td8s2nJ2MMcBDqoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GrFfatsp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GrFfatsp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDE7C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755747593;
	bh=STdZYNP7+vkYd/L3npl7I3Gb3fVxRt7OK99RKpuWqQs=;
	h=To:Subject:From:Date:From;
	b=GrFfatspUN7lHhSwOUglWPI7RUFa+ytBqzzOJ46gCo6klrlKyA6zsygBqtBzhCLxP
	 4ZjxIpjcTP9Ggftk2lFBPn0IoyYTeVVAEHM/ADtzx5ZzF53UG5+0xTAeRzJZ8MdPfK
	 rOjD008BezNarZmN0Be0IiJ2JjXx4+YNelG0hiV082Svkzi1K1YJxnTodXVBOVOANa
	 1DWCSrjZgwjmeLnnQs17ZT8/5Ik3oUu5a5cAclbje0fGW0AGHzLloLEpAIwWPAlK7s
	 ve87Cl7ldkmbQ07hFJhQ5UxouClOaPnfppZzfWcP4L3jx7XRhGrUTZGf/YQwgUCRg9
	 vUiKev7oFgeEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED2BCA0EE6
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175574759357.5051.1860429475375840020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72b05cceb4d2600f6631ae90b5658aaa3a9a07d5b31f5de4c7a790e4efbea224
Date: Thu, 21 Aug 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755747593
