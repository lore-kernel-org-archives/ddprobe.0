Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254A44C80
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749604194; cv=none; b=gSfBOv4Qjk6EI4tMYnyJL/QRITqa/IvmgQ9HvYdo4QcXGeO4rDeu0DM/nW+9Y7DyzBDH4t0gIkdLTKxTySOKtT50kecS2wmRb773Euav+NEyHZyBKfFyLbEBZix0WEIx35skc7lZCJKHsD+zcT331/UlcMmTdc3O+mOPjuCAGfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749604194; c=relaxed/simple;
	bh=lD+wpnkLEiu8xGk+2EapM3k1ljj+GtHUMFeMh2W7Vvk=;
	h=To:Subject:From:Message-Id:Date; b=dgA1zMBzv4T4njrNgXcXxkGLYG0BBWHQF2GBFGRaMQN28ZsA7vLo6Y/GZpkP8UK1NEGExW/PbCjYhN+mdRF9/pMDzU8DBZXmLHmD71TTArJSQlkz1rKHnmHNpIgPWLesDTAVFpARvzlxDBqQtTyK4jpXPJfjElGViVeHuUEmjtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ezZn6pTQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ezZn6pTQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FC9C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749604193;
	bh=lD+wpnkLEiu8xGk+2EapM3k1ljj+GtHUMFeMh2W7Vvk=;
	h=To:Subject:From:Date:From;
	b=ezZn6pTQwW2iZvQFRxQj5rL9fNM98zMnZ7dfHq32FSS+7jg5lOUt8iiLmuuqT3Kn2
	 AkRBdOUZIur0BKQgHMiBb+tjOFMJRJhAgbrteoBYnpumP3LwM6pGIBaAxzz69JK/vt
	 Z/R5WF9jYQQlejCQYg4W0ujHlC3UemzNw07xJAn76YvDzd2IqmM5NiFglgtBoKp9A3
	 FtG75csny9msR5ClM8hHP+L8a9C64zJJ9OrTJkFmslgp1oAbsDiBVOCegVsHzDByPg
	 NXkanchfVF0PrYrJW+704rP1BQR20kNmGMhAKPmDH2m52bn8vxNaXaYhkq0MMaLnro
	 1bmX2L6XuNwXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FD4C61DB2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174960419359.24729.14013612481272210611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f6256c2cc571cbb0c70fedd1e3541f8baeb36b00d7c187c8899da5de46973bf
Date: Wed, 11 Jun 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749604193
