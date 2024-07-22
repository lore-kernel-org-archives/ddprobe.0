Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E1216CD3B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 11:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721649355; cv=none; b=FWKRM9qEa2IZT/2oDY1WBInCoodyKMH1O5as9ylL3NOb9ZaKQniQcAPWnhOlPKZA1yfRWHvGnIXEIWwFjGdp5aQ8Y0SX3c3WV9l6rAmhhGmnUAz+3JegeIGNy2FSGZ4+mZNLAwyO8JMUOIy+mPpgwMqLn6kbfgma7At3jyr+lnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721649355; c=relaxed/simple;
	bh=1IQ+KqQF7U4ZQjhCgK3o36sUcgyAxio/K4ywnKBRviI=;
	h=To:Subject:From:Message-Id:Date; b=kchrjrI3ArH5Hh2zVMDzmj8t3PA7n4dQodycKHGpuGcvq/Z4jfHj+vicna1HBaw75g0OhtFZVD4gDEeZ6P0yP27Kr0ZztGs6bM0yLIIroM29ByjKFZPgzr8XIfZEuQG02reIfIWgwKQUspzbEXo+nxktervPLbSv88WnUySUoF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GqMUL37D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GqMUL37D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70EFC4AF0A
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721649354;
	bh=1IQ+KqQF7U4ZQjhCgK3o36sUcgyAxio/K4ywnKBRviI=;
	h=To:Subject:From:Date:From;
	b=GqMUL37D+wJBfxyQ1VoHypmNulWJTKjBmWR7KrFy4F22gRL0bGxoiH7Vix2I/vVus
	 b/Q4xUzznUxdpUVngrVHLil+0RSgpQt7nL9VVsXnKlPYpGPmx+fYKRulXaODhJD9va
	 gWUDoc9Hu7svH3xX2ocy2iozJJClmfjZbmtZjIqTgBSIQBPP/8u7pNXOixrT1UGl2T
	 9Oq3ikNB6I0JR6Zvh1sI6MLJUqaRyNXnVaZ2YZR3yzwmctcgXT3eEOkWoXUwtFQLwT
	 sJ/zMOtAo9K3Rrtj8CvlJtiQNQZ97VbBbkIzGunD9o+anGDu1ZNPvJqu/uDMKfmeAD
	 d7gWgQqFNZrIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C42C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172164935359.19285.2378137332374198788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb09bfb6dcff1fc6e6ea99c6c76d034cc1c2aa630dff1bc1efc1d5a79a6c680f
Date: Mon, 22 Jul 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721649353
