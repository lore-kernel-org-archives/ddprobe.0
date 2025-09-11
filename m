Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E701DDDD
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757629194; cv=none; b=t7iN0E0w1QmA6NFTnsTkhzZ6ysmhtmRMrPZ2pBz4jffAJ1w2Q9zE7GnNsS/edwJqkG/CvpOynH6Fn94hTZv+K0r301cpiu9d4s8Z928b+M+l2If/ZlEPgRGIAQvyzTYNEbWNeh7l3gdLE1Hfp/xV2Qv7zGVcRMzDkmed6c4ygnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757629194; c=relaxed/simple;
	bh=XrNeIGVsMgVBeGprzJHcyoP8XiQdaknwfnyW9yidUJk=;
	h=To:Subject:From:Message-Id:Date; b=amA9bvyQpqUYfVbllMUhilnes26L1wpSo9LGLEbe7XlqBX6pkllXLNnPU838CoHcAEn2Bl78868Psb80kSOcx8oAOMx9AjWI2N5TVVHMj5aBnq+gFjyJdTbE9gWhjTGp1aLegVhTqqpNpljDxxHO1weS0favrtnZyGnoryjmR8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GfaMjP+Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GfaMjP+Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A259DC4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757629193;
	bh=XrNeIGVsMgVBeGprzJHcyoP8XiQdaknwfnyW9yidUJk=;
	h=To:Subject:From:Date:From;
	b=GfaMjP+YkTp6XcF6BlE3SroO8+z8nTz9kKHGXAFcwGIm6zSnG3Bj3OV0Z5XSnGGMn
	 +iK0MQWYlexapIVufs3OF5RzszpKQQ5uMGJ5qQ3KCR2ahP3AU2I5ObzCPwrEvy+w1y
	 XBEbGcqFa+1qF6q8q9W66fbjzMf2ZM/7W+reGERoVqqdbu9xfkLMnA4+0P2HkVHmH7
	 YoyeMP6f9OYshuOhWpzJ8EUvPkxVXB6FnH5f6sK3Xuaf4WKPfpxH/p4rqDlfpPd3eL
	 qQa9xUCn0TWEqU39oykd6ysTdWHNpvNE7noRKAC2wXCWknDK5td6vWsLY6PKczgZXS
	 HCY4dbKi8Uawg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2BCCAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175762919357.23719.2262100328596513989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52016e7e8cd4e7c84f4d76eed6f0fc2dbd812f5b697239e651f2c801b3d01d2d
Date: Thu, 11 Sep 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757629193
