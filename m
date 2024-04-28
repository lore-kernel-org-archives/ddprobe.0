Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BC764A
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 00:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714264343; cv=none; b=JvEqOjZqWGB2KZpYe6r7qc6v/xiQF5ZWaHAHxVHsUNhKcPeT2whGzznj+lEb9uFy6JaOpasdlX7D9tPzhco3EMQi6BwbFBsaDebWm9IiC+5xwGCSkb32szfdePH5QNZsq66rxot8I69Y0CqSxVBdqQYqfV5V5+ShJg+Or76ol1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714264343; c=relaxed/simple;
	bh=iBMSjdBuZm2jurF8swmUAeBjDUQB8FNOIHk9loR0oxE=;
	h=To:Subject:From:Message-Id:Date; b=PbG9qrTGp23k/SZ4+PrHB5/l1bfb9yjXnyYo5U7Ys/pL327VU3+X/tkypdfkrTklTbxSaXfJNW2oBmFXGP30TnmaXlAnZibhFYzjLH1U1pkFbOu2KqgUlUgV1N7ssexp2Wwyr7g+ZCmScxqRIzW7rWq2QmjgFVdV3cbHKXywiAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WDvaX1gn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WDvaX1gn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08B9C113CE
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 00:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714264342;
	bh=iBMSjdBuZm2jurF8swmUAeBjDUQB8FNOIHk9loR0oxE=;
	h=To:Subject:From:Date:From;
	b=WDvaX1gnff7RWsepfFVajCL6Jvh6Y2ixHpoJHZFbGXJdWJsMSA8ltYtVNlFRLrdHP
	 MTxrPI3f9xIapCDuvvfXlGGa2bmt4UH+S++EcUT2GyHPLggx+Rn/HOr+Gu70ATE/Nz
	 7r7trQEbtXTVg2e+sTonkN/3UY15Nb3mZ7IAVlxwJS84fSW4XlxnYKlpvICdtqf6HS
	 WAae61RbQU+wj2c9foC1u3zCu8mCZ0uSL7DdKMMOHsGagBB0IFqYDn6uAhzUZ4vB7I
	 G/IwTzc+Bz/iKJ/+n1YmN4vK7+3nhHX8YGRR1uI+4gv/pBwoQGyn17kY8B1KNWtiSy
	 B0RYYUyNxjEWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB465C10F16
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 00:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171426434275.24835.11953027646522975708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71706a4ff57186a08b2d6471b2a6bb94be732abd9a970e3e6c900c5b754a33df
Date: Sun, 28 Apr 2024 00:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714264342
