Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62A0F38F251
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787250034; cv=none; b=A+Hx65J5bbw+gfirGe7a3ac9LuaFm8xJBKNxJ8DD1SpSNoUfB8iL84QutxMn+FFcmH5eFSJegVvtckNJo1/ixBWhAqaop5P/yy+pGAYkoEPM60weepuaKnFQUYLyfBKHwi3yndfyLWazbB/FXG0NuToXnkwMaz1Z/wj0mKgVkIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787250034; c=relaxed/simple;
	bh=dAlqpfUOWRMH+XaAZqkXtiiiQg8zvj2zS8g89K4wiKw=;
	h=To:Subject:From:Message-Id:Date; b=VTmGLnTtEPxw+DLcrF7mSr7a/VX+vYl0ZO8hEQ+CMTiaN5lbjl+6XRuBZiNpUIvAEVx6zON8PjUHS8WGblyhks3SCu4A7RxCmqQQLaksY+wajZOF+5LDtFJvyeFPjpsjXIMMpl13Xt2so9Y2BwZxe9dpdZG3boSHoQ2dt5klm2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DPrmPJXB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DPrmPJXB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3C7DC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787250033;
	bh=dAlqpfUOWRMH+XaAZqkXtiiiQg8zvj2zS8g89K4wiKw=;
	h=To:Subject:From:Date:From;
	b=DPrmPJXBlbAntxLofN361YKXA8Hd+Cb5VhtZ11UvVYPUNRXbXCVMOSRf7qDl3E8xD
	 8+QvXLxJO3D8UH3GGmyHuyut4XMtqD9kxhzEJFNWrN/BvTWNYJ8N+USZWKdMmtuUFM
	 JWsxsNTJ2H0BmKCGFQxkT+I+7w8A3uvVLf6JMGqd0S9csVUkrk78BO8GL4nH03AKeh
	 5tw0sS3DHTdV5pywzkL0wnnc2zS9MLGKcJfkDgmvAfK9e7fvbK6FHEWpcpBxsoSO7D
	 /xnj6mlli/IUEK2yoRKWEGcZvWgB+jZPxQJWE4u4aQRk7J6PuCjdDLi19bKJsnJwj8
	 vMZSHjy/t4SZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7F8C5DF82
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178725003368.13639.12920956960005114687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de3f5aebd769b2f4ba390ef8c87cb0c77ff83b794a09d2a1d0a47ab5edb1d266
Date: Thu, 20 Aug 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787250033
