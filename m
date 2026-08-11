Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B17E37B01A
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786426834; cv=none; b=XZKEVdNy5sPm0enCgqGbBqJ25jZYVsTjVqEdJwVC1UQtRKllJdR1SM3DhUYuX1Y+cy93jA5+qfcitkMJ0Nhkacg5TlFxpTpvVwRTaX5kuWUwFQ+e1OIm03MZ7FXRzStL2eN2gl2/EmccnEfm6jUDmREFr0JTe3kwuZp5n8AU9cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786426834; c=relaxed/simple;
	bh=1MYjQ5rLxO8I/sLlyzip+YWTrc0oW7KlNGWHbcalfN4=;
	h=To:Subject:From:Message-Id:Date; b=EriECLXIxfjX7APWWySnp8pj2yXcyEn9r7+dWlIR6oI/DiE5Xdb7mvG3W+HKWfJqsdJdB7XsHUP4AoqTg+1e+ZnqqPj8aa5f0btl8XnJmnsHNmv7PIS/x6oG1NhulKrVBub9iEO1Rgf9MPNjTPt6O6q5CI/Hrg+I1RxHpdYacGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q0U8r0VA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q0U8r0VA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB525C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786426833;
	bh=1MYjQ5rLxO8I/sLlyzip+YWTrc0oW7KlNGWHbcalfN4=;
	h=To:Subject:From:Date:From;
	b=q0U8r0VA7SwCjlR5SX6qmAE8Yzg0hpzXp1RmknZ1sGWCRur7CIDP7GQ2GyHtk/bLw
	 xnqyEWAzaC6N1Nh/BNv6b/ZOrkP7jw1smt5/8eA428KbNk5bVplYPFrzsLZd/dJpsx
	 4B4FteJh63vs7Rb2vmOQ13o1lpf32vAAKZ9L9gCT3YzR/iwztIQcerlX+z10xqQDF3
	 qph5HhQ0V735knd0i03MJDaKY8Qf0+EiRjzqrYZK5vcO3qlW0BMrJrMWM6GN7pN16o
	 yJDJ7m/NzcjeN99/AKnpS4DmNoLg4xu8qYsaw2NqA/1WB1tyz/2VxqWLsNG/hValSu
	 nAL0mdx2meqdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8822C5AD55
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178642683368.1567.549681727460510069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a28459c49676cbc38e66e7d7f560789ca8597bc7fe58cd9b1dcd612c7a8c5852
Date: Tue, 11 Aug 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786426833
