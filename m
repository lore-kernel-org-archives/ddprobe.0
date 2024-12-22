Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292701854
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734900954; cv=none; b=h8hu3wXyjtRxv98hXFFLk6LXHVDV68Gb/YA5zJ9rxJYdy2AXqa/EU2nzTxyAMr3ThSAfD/R5kNJRyr+iCPVWnIq2ad2Vmdrh3xqnCX3Ed8fiUl2S4gJFy1LdQJvUHz/KUFVZaBIgs9wkZG4fDL7uFnARR4D+5L80SnIh6eRGjoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734900954; c=relaxed/simple;
	bh=uixy0e2FOuiK3YLpCCa0qCI0BR21UyN/AI94JZa8L/c=;
	h=To:Subject:From:Message-Id:Date; b=omlkM4Di1Oa5hhqAmm4QRItGpMyqntJvXwipd5s0Qlmu9hjv/IQL0JV00CRDqoUwS3vS5NxcT0VnOeXhdC0egAJIxcH10seW66Dr4WNjLLRbZdOj8S0JcfXJW3HLDJJ8Ka61YEp7PX4j+0pwxZSJc4or4n/2dXTT723pvEv8jSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZVGFC5A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZVGFC5A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7162C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734900953;
	bh=uixy0e2FOuiK3YLpCCa0qCI0BR21UyN/AI94JZa8L/c=;
	h=To:Subject:From:Date:From;
	b=bZVGFC5Acq0IlmZFSgHSuGgtjfQJLKXG0w5TTbc2E+1wldfDy/8lzShRlaM1zshQV
	 1G3fwLJDOSFkuVBvUTo1pdmCYQT3sExgg2THtB2FQcG49K7EI3cz/1CKwaN178I4Tv
	 GxoPXSILwCVktQG2C6QJXEOBIDA35XCtfV2lXcRJPngyr2cQSteIVPgils2iXoZddv
	 nYjk3Vml6UNOyqralfnacE4yLMjj8QdI+QqpRDWQF98oPi2KKr7LVcWpy4GL/7SP3T
	 kdpCM57E0Z9EHP61dhbs2yemjuPU1ImqfpQ8ImWYFQTPFVvfu2/fwkaKTImYsi0meR
	 W6t7uflrhXBog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C0DE77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173490095359.29935.2491514498262413637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e949a70593c77ff63808350967a9d84995e14ceb4b0dd1ac4dc44dc76fab122
Date: Sun, 22 Dec 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734900953
