Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C87753A7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751423394; cv=none; b=VfLXRj0+EXXCIpPToAbfKPt02eosWI3+8CLFGmC5pVUgd1XxyQ0sMJyFU2n2gxlfLxFdvUOua/FyupioGoEGMSUnXwaLySrUXZC7tkEpm/sGteHeeTj+avdhPJMJVjWwpzHdyZjlwfYsAEx/ygKEMIuAajNv6f9ravy3bx6mZoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751423394; c=relaxed/simple;
	bh=pDPZPFkrNSD/QmliMX2Qcj8Xxvehrmmg/xP94+xmoB0=;
	h=To:Subject:From:Message-Id:Date; b=YjQ5TOd0ocnTtgsn/K880ronyD5YBBKL+7dboydP0fQybjV++s2DPiGEu9MudYpLmt1pLuXCZ8qvTemnIKv5jef27bx9ppmGgBPuYqWmkwvyTXh65dpqcUJXFc/1Yslo7C+6GWU+0EI//xbBQkXVwBJuCdFfm5jNGWBl/DNfioE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jvEIgwh0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jvEIgwh0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4653C4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751423393;
	bh=pDPZPFkrNSD/QmliMX2Qcj8Xxvehrmmg/xP94+xmoB0=;
	h=To:Subject:From:Date:From;
	b=jvEIgwh08TflSbYUXyFK9XXboqWobYjMUzEK/aALrVVRcHe31RpZY1Tgl2zEjnXvb
	 f1z8jMnMi4RcnUGv5cApK+NIPaUaTJt8kWL+ql8cOa3I00skMJqGe2ORUnuEQBrWtw
	 W0kGSsi+SOKS4d/UXCz9JCRorLXJZcjHKMGjTsYGg7xpjHdYnPV4rppIMpBdNjpOxD
	 YWKr0qi6LL8ZCKW7UsrYt4ItHz7QsmuZtXcR1e/UhkeoRtesan+Dj/4UfGlwM/NS7H
	 IPDeDwYX9bQCzUIIk3tTDBZLFWrsV3+LLyQ8xHGLrepYgj9S57fpnjdIkwozlrs5++
	 TTeIyfJT/R0Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FECC8303D
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175142339358.1107.14314253602777295068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 213a4792a84f15854241f743bd8fc69c7b59a4eeb9a78a1ceb4645ca8c5aa149
Date: Wed, 02 Jul 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751423393
