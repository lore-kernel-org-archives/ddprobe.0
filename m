Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325FB29408
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746221994; cv=none; b=rt4pa9l4wBLOtimAOgN8msaMjN473x/8XPxAYciGUVdxsrri2y9UJFUULIbpmm3cndHmDy0vRuH1GsfluIMmnUicFOkBsIqaxlyHAJj7wBzaMXPVDYRUpcfwfaUDqmS21LDtzQvchznm3+69LuUh2TbkVMi/qqIRT5wxvMMw328=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746221994; c=relaxed/simple;
	bh=zb2iDwD4Iw19wFez7prxXaQF4nqrh61P8qYEPb5flXU=;
	h=To:Subject:From:Message-Id:Date; b=hj+O7hauNkdrfBGdF2eXj8Jxr2rNjDf1qDPeATLfQhRbuMR+Bhy5NPMtdtHEPfzTS1mTwlWZg/Z20pcklD7p9sK6NzoWNSjUqrV6d0W7gebifDUpGmTTiRXT8/oZblFVUdJsQy+zNwozqqC1/bGO3OhNOdVBGctC/P8Fgz+IA1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uEEivTAB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uEEivTAB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3095C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746221993;
	bh=zb2iDwD4Iw19wFez7prxXaQF4nqrh61P8qYEPb5flXU=;
	h=To:Subject:From:Date:From;
	b=uEEivTABn0OBAP87BdobM5Xffy3kZ+X/eZtPd/TS5BMGGK0cxJvFifdvep+mrrdZd
	 x9uzZhjdcQfRNejRBZKv7PnRqGQuHjCwE46Anz8tzbrD36cYhXMFZhoHp4fVT3q55R
	 jCShnzxxbvWy7jpg8xJ6diQRWAO/Xe2mIe5zCk4jiAVG2vMMsYBwy9/L3ScCse3bAI
	 eMuc8RmJQc1pK0bSTqyChm6wvuOduUJ54OMWAxfaXUGVQNymAAhZzzaBD0x8IYZIie
	 1jOUzY0Yaiu1BjmKV4xyAlE/9gLS28/GoF8ODkxG8laSDnOdednID4A3f2zxiuI7bm
	 tnZqk5/UuEOZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F260C3ABAC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174622199357.26282.126224440516347286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35c26d000a966a9e2fc81fa4a993706e5cba33538da2656f2962636befaa3e0d
Date: Fri, 02 May 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746221993
