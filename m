Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4794732B126
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 21:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781904394; cv=none; b=hcBqzq4oSXzPmBdTXrGcIFlr04p/ite5W5//cbIf8GPwzW+Gvk51yDFi58y0vtLB4B8dGQyuPxYKU4meQhiW9R9AJxhxUbRg71/nMGXV9XxwqAMLAHDH8eBJVW0KKve0k4r37fT59H+4DKm93MoG35icHIQVDMYKTW6IUu5Dq90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781904394; c=relaxed/simple;
	bh=mFk1lEbSvAWCeLt6tekKOfy9HkdJOPUAHntZTfBiA4k=;
	h=To:Subject:From:Message-Id:Date; b=LflCSFTVVRbTaQPeEMsISHx3Wxc9LHmOZ7bmkaTDyZKETPF3xP0ahDGJfxLvhMbYxTe3X6TMjsrVsaC1TjoUffsASJSyX7ERONXjnT0DUV0meBK5dYwH7Nd6iR9y+yg64T7ptJVD7sFF62oKMV3ov6XbMAbmETwtCuA1v5ZmrkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DXEIV1/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXEIV1/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40A7C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 21:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781904393;
	bh=mFk1lEbSvAWCeLt6tekKOfy9HkdJOPUAHntZTfBiA4k=;
	h=To:Subject:From:Date:From;
	b=DXEIV1/82z0wRtEwBKMInR5r6gBQjC6LMZ9nma2ZP2I37fFrYDv+a/T+5jsV3BfdC
	 8ZAdw992UwIQ375DRAI6ZgVjZ6YJo82CvFpnEgfxG6Dv6wEPgOBE6GYOx1YC0WzKf5
	 BeOjoVB9HM47Mb+1OBbx4JfT3Tly1yQJf330o7elgFbTKQg26xNxt0wuAEMgxzc2Xx
	 m7VNxLHLbnyeYGUEOMKJaesrisGy6b2p6D1FFxqds5BI6fk2gC0iRraS7p0Xps4/i5
	 J2KfZ6nPCHX1PUEnlPVPb3E0TuOl2wq6VNM5Eaoyvop4N13yExqhYOS7cT21Jphn1K
	 4LsBUd8PBg7aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A53CD98F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 21:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178190439370.14617.9956932289375494555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53cbc1e14254fb6f04d3425e0ba6a3114f80ebcb011947472394cca34ec8fd84
Date: Fri, 19 Jun 2026 21:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781904393
