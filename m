Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F24A1346E70
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 13:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775653534; cv=none; b=L81z8qiFMoGqbF0NCFOv+p7SfCfMuSeyzwXos+ILt0DyzYkeuWY0SHepiQ2fj2oEw5988HtiKSRgm1K0fZ01IUQLQkYIh7HKvURmFrjFAtzIX8dgoOyq0oy+x6Oysj0DwlLVvz6W9TUMhU+itL6tXHYSV9bPE++2sd3jZcFdZuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775653534; c=relaxed/simple;
	bh=YN9r1HRCA0gLEMm+GKwpqwUbovJBU2RGsiFDEMjME3A=;
	h=To:Subject:From:Message-Id:Date; b=E/TAhp5z4TQ9un9MLX4lCZ5w2UVO8PbZUlEMAXAOh0ZeMajLWz5DP4QG9sc4hrb6YMYmpIZTJaJyKll3nUr4KWhIpPdNBB1zWv5M7rW1oFS53q9jXRyLVGWtr1xTZ1VFdKMvi6MH9qag5TYKgn+exH+ppodB2SvVnXSYeyV74pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f1oLj5tx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f1oLj5tx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB681C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 13:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775653533;
	bh=YN9r1HRCA0gLEMm+GKwpqwUbovJBU2RGsiFDEMjME3A=;
	h=To:Subject:From:Date:From;
	b=f1oLj5tx01Jn/Xp43HdSJY8dzj+3Asm89/hxcAGPf7nb8xG+qHnd2K3z++yXcPAy8
	 nyd3/BUPvj4QLBtSc474rAUNgtwEZHA4gr10f64wjZ6arYoIkyx6zs66lduWRPeUdF
	 9U8424nYKYUqFBK6Ym6CqIRIIJLiB35v8frEIKiBWruk8Q3xjzWNl742tXBosHqDP1
	 NTf9Y8HZA9p3EZUBlT4bIKiQCAXVR6z3DKAYDmhc/yElqe/1rmBC8Qg0L8JhV/gbuO
	 reVMdXB/Ux+Xs2dK2ByFgORPNMn8RkVfHIMVeGSjWWRwmN4pKfWKvdwWDQc1RfZHbC
	 TwIRxcecsRcmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB97D1073CAE
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 13:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177565353369.25871.16339419174837815233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0938c8db2a45153179c29a0f7b8f2a1b4515faa619ea04aeb7ea62c7549e1fd0
Date: Wed, 08 Apr 2026 13:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775653533
