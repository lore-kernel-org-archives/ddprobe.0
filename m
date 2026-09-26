Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BBFD7478
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790413834; cv=none; b=VOcWM4wB4KipWzgxGANEYWPPuf5bUW5HVQt/hO6Kxxhaj//sA96BBj6O2URv7+/c+nxGKOlx2irZYgw3n4jI6tDHZIOGov9zwem0sbeXMkZA1XIAJEeVSL0ZPutQscm5iT51QuH8XSrBNTI2pJxyHlNVNh0OcUw9xhCvdBf/fg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790413834; c=relaxed/simple;
	bh=VjSQh8FcJCJDECvZ1ZiN8RLtJdseXeOaP04yFzu+zZ0=;
	h=To:Subject:From:Message-Id:Date; b=D9uShYBVWuSqXcgopHtUMtWE2vTmUCB8EcE/TE2ovoZQxTnCtHWgWn8w2h8osHVdKvxneD0Lpv2duYfHFM4eyyQBmSKnUACuTQwHaEAX9dcMOcqWzGk7sOTaAQdyJkzxVHGI2TbkMStHpXDsyobWcg1uhvRrUOMImwwKp4SDXBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EKjbHsyz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EKjbHsyz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4880C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790413833;
	bh=VjSQh8FcJCJDECvZ1ZiN8RLtJdseXeOaP04yFzu+zZ0=;
	h=To:Subject:From:Date:From;
	b=EKjbHsyzpl3Jv6vGEbQiKuT7Ape/bcciZO9pAY1eRmlNeLs57GtSB96uTWX6Z+G20
	 cl60p0qXolioNdlJBhMkYySpG9VNZouQIQSve9z/CoOoazGLAKhptGf0nUgqPyJhhX
	 kSUyY5IYzsRfSLmuFnj9mm7vvqPWUc+9sC+WOHqD21bqtUSZLNPWLpk+VyXcPVlJ1Z
	 C3M9xWLpQ86qSzMZsYpHF5xzH/wMvoPz+pg4byyQyWL5X4qboDG6FgStBOcOGm2TK0
	 GxQGYJU5n61BEeISY1ooGr1n50QV4oZTBxgQN9p0QVPEF96JISQHi8Svm2aFhMIX/K
	 YWKvPJ3Onop1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13A9C98328
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179041383369.17028.4468928982737522605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee4bf6d04e432f2774e54ba23fafe6155dd81a664ff53077f09ae5dac1387ed2
Date: Sat, 26 Sep 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790413833
