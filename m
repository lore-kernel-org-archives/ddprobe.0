Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2052513A409
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 21:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728507955; cv=none; b=NdIiyQrLcEoO72IGyPcG22LjfXtykdYdWr2Q046vv85y7CVDIdZbgl/Y58rw/Ou+19obpy/BQcU0VUBkp+xrHrvxg4jPHiahLKwvSD1/MdiTRo2ir1j7uMCCL8+00IOzYIfgUzQwuqQRbzDpIHnurzYJK67gAdziw9rEPg4lbwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728507955; c=relaxed/simple;
	bh=Jmzq8YGxk2Az/wqaJLsNJPhvr05NwgSZGeYeW4eIqi0=;
	h=To:Subject:From:Message-Id:Date; b=ImdluJUc9pITLwIbk52y5+fzbCiIQ3N/NcDNx8bagZEGbVTqJeO8HSLLDfiDCOe1bYp96sDKhqjgcWdVgEgM8LQG1iZkYCT6nl53l6QFc9bVo8RJyQsYnIJT8IgRkUMkllkpuVKwwkaXXpU3QDAl4LNFWV7BZgMoLYBF6Yazips=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBa8/CQE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBa8/CQE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD108C4CEC3
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728507954;
	bh=Jmzq8YGxk2Az/wqaJLsNJPhvr05NwgSZGeYeW4eIqi0=;
	h=To:Subject:From:Date:From;
	b=BBa8/CQEfHT4RUlJYER1JuyjywFpt/xqfnCz5LfkWlUrxXWb66uc7qXfw1m9f6EOY
	 4u/xso64B/nAnteyzSMVWHXRNnIpgRqCoybPZfPXjTP17bMLKHgqKaNOdsDFxCYZiS
	 2vjVWtnBOC2Hua8n771X2VTtAU0rNR50ZLcVR/G09wGp48BwWtBBEw9+8vJIKp8TRr
	 ehNiUZH+WAEdRwiXsU+XjyQAZJX7e+iKzF54S88uoplO/ygOkWNpRUa7yvNanUV8cw
	 qxBmo8HX36PQPuc/Yvdnu6PFLCcanckdG3FIRXRilmLTjHE/gUNxGihbYUjvaUwBrh
	 d7zIJkOgkM7IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99AA9CEE34D
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172850795361.3178.11325337666697928839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb0712b107c3a0d8801b2267ae97e132208abeeb9335488913367720e4df82f6
Date: Wed, 09 Oct 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728507953
