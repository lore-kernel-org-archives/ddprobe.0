Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FD52DEA84
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751985594; cv=none; b=bVNdxacF1mS+0mWqQ3Xc2QXNm3x8O3s+Idcs6l5OFXXxALqzjcsAbg/AHGujaQP7laDpXfx7kFDYGv6SJGvEwE+L5XzUbOHTJlw8Io6pkakIHbaV28dTBCYzkhO42n9YqBatDtXhpGuZRTc6FW0m7Pia+upvxtpCjFXIBvASRi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751985594; c=relaxed/simple;
	bh=iBrYMNuO9Q1k8uqAaLQ0yf5KJzcnQq9URAVRNIgxAfg=;
	h=To:Subject:From:Message-Id:Date; b=GCwd1VoD8jDsS2RzpM0maHAO5PfiJfplWKTr5PZaNEIz8uULcjUBcBqQkcVx7x4DAtVGYmqPgDlU9KHrqmdhXacq5vm7kvBUlmWZ6hyfG/pbOCHxXz2IDT/zBU5L7LcoRDTdnd0NZc8bxhQZGhCes+QcBaxD/7e5t3W8sC3mc0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ADPoc3D8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ADPoc3D8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCE7C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751985593;
	bh=iBrYMNuO9Q1k8uqAaLQ0yf5KJzcnQq9URAVRNIgxAfg=;
	h=To:Subject:From:Date:From;
	b=ADPoc3D8/DZG0qd/xmRLpVgSPeHIduxVD5/BDhcdI7ClPlYIILdiqmM3yE06u06Dk
	 2jQRM0dYb2GYuUspjvu7kuD1PZCV+TOYlNQB+Ta+Uh0tQFxUz/Upw8tCnNV8H03XeQ
	 trk4L/rTUQJDMhuKSdQJm4TtYl8JuitoYkbk5yyqPf65cCkEO14JNJ8JlY4+/q4Oow
	 0cAD2hy1Tb/AVbHgRr8UQ18vPOcysrwWVa8fVuVAoj2j+h1ccFuS3wZWCBMi7rSZ++
	 /E/+Xk9tGofTm0Ri91lBCRKTXbFhArcdyG0K9UvtGJ7NVaXc/xzbSMTh1CD8TTlkq3
	 YogxY+cLSiGrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3C8C8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175198559357.23678.12615824399116500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c03b3eba434cba0918683b6d5135259f0fbd44ef06c061e9c402bf17675347c3
Date: Tue, 08 Jul 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751985593
