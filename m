Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02D65354ADF
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774419894; cv=none; b=UOhElu9nq5UUaaZhEd963huqwbtVsa9v19krr0ldpCIuuYA34+iIXrCRJrUYIpYF1sm2EyZRWQHFz09DJ0wl/RPHNEXp4jggop7V6yGJV+8TWkzijTTCfHEv9XpeC3DThpnoXTJz/0Pv473m5VeCEsvURTO9gbG5rxeF8x7PfYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774419894; c=relaxed/simple;
	bh=/DIvFYD9dO4OwDEbrHW4nd5+tBYdYBfvufuVAnlDXis=;
	h=To:Subject:From:Message-Id:Date; b=IXs78n+HlPefDE9wWYA7xYyfkG1QIAIhyRQnon5MHZ33aK4s89AmYXLkVxv34yCZQaxgfrcDUMA5Xq7UCUPFlQsEbDfe7GQYm/D8vjCPiGf4Em0xuM0qFnT8hu8DGoFSNd8qI+X8aLRYLxrUT9FUjH3YxWvHv02WzKItIBHnvSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDcX0lqW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDcX0lqW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F99CC2BC9E
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774419893;
	bh=/DIvFYD9dO4OwDEbrHW4nd5+tBYdYBfvufuVAnlDXis=;
	h=To:Subject:From:Date:From;
	b=fDcX0lqWYK2cJInOYXSNsrLaQfk3fptUQCyAuRQGl73lkJ+0yGNUrdY0zQAHaNLDg
	 L8Sh52VVXXw72C5oOwk+7hpt0kuUit0Q5bv1BU12SryABWLR6Y5r4vWqg+lri5Zntj
	 jtGDIJZmJChxMbXYJj5xhjjnVAUu9/aMEiDsfUNX+f/3JFIuNnH9uGnI5fznHGRoAC
	 VCn7y4qXpgBqt1xVVikQXNJfYO++Z0Distxq2LxxFTGA7sBLxpZ/xUSG4vfdRgoPwp
	 ieeODEUNIMfpzGnq93LQrAPx1LITIcxcVsUTN8rcZQgrQxYvhh6M0tWQJMPZl0CBWy
	 14fKlMqM0QY2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909DAFEA80C
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177441989358.18582.12037937628215040300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ed48e04378d1934d7b018757c91050979220a7eb7b1c0a31d8b5fdbede3f681
Date: Wed, 25 Mar 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774419893
