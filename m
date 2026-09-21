Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588601990C7
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789953034; cv=none; b=J/1iAsrGiQz7bQTI3DteXCksULxM5ZA5NdfzRHc6ouFp9tJcUkDwOKDRi2B2u/4dCOo70SITVlkIZWz88x7q2ZqNzMcIN1CJitiltSLUK1RHv2U/b38Axj+PtK4GvYmLkxVWDEuiFevMCSjC3YpxASc5AzVEu5ae8wichS8vc4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789953034; c=relaxed/simple;
	bh=Xan32pVzH/8qppenkAjkuUNpKgcKIKx8qGQygKqdtQQ=;
	h=To:Subject:From:Message-Id:Date; b=bk6HmeCn126Buv4zV4Kng2s4rvyPKvcxu+Ebgyb1BHryaHwlV7/+OCU2vvBUmTnrsWj38EUkYhqWZ/goEbBwkUzsG26Rf0klhiQw/MZUD3J99opi8jxN2BUxBLrnYuY/EjeFK8enIR0WHVJ2aqGLaeNmgFUFt+A6OorDmplMFVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TCDdLHYh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TCDdLHYh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA997C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789953033;
	bh=Xan32pVzH/8qppenkAjkuUNpKgcKIKx8qGQygKqdtQQ=;
	h=To:Subject:From:Date:From;
	b=TCDdLHYh+wJ205mSld7ijlklHTIn+xpXe/QKcGq5ognibS58TSS/zN5ej6eJTV1WC
	 deQGLeC5ZQ1CcJF+z4jMgum+SW7YTqVLdao60D+spAIeMZGj5jFk4zzuJfUzPkEJGO
	 oCF9kvvMrKXgQEJAXUYL7h0AlRJDMaMahAj0sTKGOn7vmJBslya81zDIgd/tRSfOhk
	 a7ggAQd9cWb0RfP+bu9YMJRIcn8uCtLffDHKSE/7N9sO+7Bjy+DEUpqwKFQy28uxLe
	 L1pO5vyQ24RotmBGT1uPbRxaWxzKfUjty1G5kv0YNRABSLNRGYyP6nbAWbIsB+Pu/z
	 c1CNeXW1uOkkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07F0C982DA
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178995303369.27861.14913524203922224143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0f9341550696f873d9e544a325b27579599ae54f2a3cb9031c687a34368492f
Date: Mon, 21 Sep 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789953033
