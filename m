Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03458395D80
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768582434; cv=none; b=bFrO9xhBPJ/xa5w3cGzgAbBLgSsioHAY53PUXTYcjvlFICSXoZ/8x255ORPpYnQpvoF96tc+NSbBPnQe0SdHeGuSHJ9Uik77x5lKBMgvL+1Q+zLMexFvA2Rc7yTuBOTQ1eycqvVbii/t6fKuPgvtqpIra6DoscjFCJL6HjDj9J0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768582434; c=relaxed/simple;
	bh=6D0bie+1zfvWBW/SHrQCfsBNXtsGqORxcyMPjclciPA=;
	h=To:Subject:From:Message-Id:Date; b=M8P5bCzUUTI9t+lGvLkyUmTZSLNeDLk4Q2BXLC6F4p6+rVWvOr+ACCeA+b7nikuMJ1RvMuc0ItjjZVcVJXn/bBdB0HxStbtjX/v+FsW32sA/kn1RF7+D/yADVBZ+xKoeY6o/qHlWBsdG9FeFlq902MWXlPplniYwLeZYriUp+cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTm9aJTv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTm9aJTv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8FFC116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768582433;
	bh=6D0bie+1zfvWBW/SHrQCfsBNXtsGqORxcyMPjclciPA=;
	h=To:Subject:From:Date:From;
	b=tTm9aJTvhVdchsHuTdQyQmNm8O9adP6P3zzHOopzO3b1nKtMt1ItmCsmv7rjoE0IG
	 A2nrC/otzS5LNa+weJoMjsWlLaybF7VXpNeiCZmZXKciDVAObBsqrLf4cu/cuxcx59
	 UxKuDBOnBncBhC7WoAgLbZG6NMz8TJhwEuYfhZtldeNuOaYtLd0h3E+17B5oCBM037
	 SHWdy99R+1Rr8LJmtAz9/kbKUjwojEEEa96+XbKd6/nPBVWPPMFBvsNB6YVt1+ESUn
	 1TKRI5qh3ZMxzAPbBnVEej2LS/Nm8JQdPmHQbNyBTudSi/z21ydolFE5P6W2KJ3zRu
	 U2vxgLnWL8PwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFC3C982DB
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176858243358.25156.7137941705064079314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48fa9aa96f98cf06d8687c8b3b4922893ec02dc4133935771f8bfba9708f3780
Date: Fri, 16 Jan 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768582433
