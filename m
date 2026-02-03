Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 334D827BF7C
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770154434; cv=none; b=pmoliTufIwmqZwCEIXQEdCBmyhpzZZtsNSG15MOyfGwAoT5tBUX3gepNFFD4rmIOZglc+vLH4rQBqAbitNLOOUDh2xpdLHj2XaIHG2b1gnV+nlpsFjrw+mL04rnmSZIpXlaXOV5FIj98r5UeCrP3zJhZfD9MGKEwB6UgJi7NPm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770154434; c=relaxed/simple;
	bh=1ELGHOaLdQkT8WG3dT1zZN58GsAQStPUqDUkIYO2o9E=;
	h=To:Subject:From:Message-Id:Date; b=UhU6sNCd05ldMzNWefAp+WVRsQbhNdh98LnKfmvuZEoCuOSQoLRU9gejXDHfG/MYMrN0SOerJZxXuI9hzski6V4662UXFCnZ73uy0D8HSdi3pF0aNt658XtJjS7PjpD3ZppthqMqPXB1mzR2VgF1Oh9aMDxD3NieoLSUgJUvG6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZD46rM1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZD46rM1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B377FC116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770154433;
	bh=1ELGHOaLdQkT8WG3dT1zZN58GsAQStPUqDUkIYO2o9E=;
	h=To:Subject:From:Date:From;
	b=jZD46rM1djlzUl/aecwSKdrjPTU5pqK7DDTeEV9OeZbBwUIGQqE7SlPc7go2ZBwBF
	 iodRC68fHgw6ZGBnClnpBAXyG+yJeszJLKA14qdO5ABgu3n6BHFXvCt70FnyeBfjxT
	 cW2oEZjiV8P4SiP3AeNWnLfC5GQ1lRtZcgXhaeR0uT6+z+ojkyYhDTZJtvUj5H3nFy
	 0hMid4uGDYUY9iQHpzcMsl0SzNI0c0Gn9pccUpIrjKbBjSgfafOYQJTvmrZwTNuXSc
	 bWGzCYd5V5IRS+JBY+OGEonvD/JFZ0Bp5UJiqiInOM4pD02NAwKtB+3Oo9qFqFvyYA
	 Th5HeaFX1s3SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C805E8B365
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177015443362.24789.8425743296292326526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c027cd1eeb2419c85ba32a05b317c23b8f1e3e4acc3546c05624d947766cdf01
Date: Tue, 03 Feb 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770154433
