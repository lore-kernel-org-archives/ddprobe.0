Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05C17500947
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768327434; cv=none; b=oOW1iPa757Ex303VO0o6paS0cqZ/hueh1nSBH/lx8z3P1fE8+lDPL41dmi9WIH+Tzy24nLI5e3vlJMu0cVpclJEkXQ+xtpS+K2Sdyes/rm7lbdt3VsGpFl+HPLiwjo8vrQZzMQDDxN7lMOznLAp+t/IJiQCKMnv34ydRLdUnjQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768327434; c=relaxed/simple;
	bh=lhnVpymTrg/gPkJrHhWuqf5pXUwUa3llXx1RL3k8i1o=;
	h=To:Subject:From:Message-Id:Date; b=pHeW70xUetexWKKoSExA2YplAesYk/ZRRiL2Lo9TJy9543Tf9BZtR6WjmrCUy7oNmVMm9YSoaowTYcd/XJ4OY+qsvoOegs+A5ggAlslauFecks9gdTI02Jni8cX10CaJmnYRRIb1/RdEWwD5QfMnaIZN/pEsOtq3PDthA4o2xTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AD1iKYPH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AD1iKYPH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1639C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768327433;
	bh=lhnVpymTrg/gPkJrHhWuqf5pXUwUa3llXx1RL3k8i1o=;
	h=To:Subject:From:Date:From;
	b=AD1iKYPHcoPjac9IytaXyHpEecuSwGtSqtkDBtbSDp+y8ttvBm96FnGpK9Xe38jDc
	 cGaJaThbEpEFArNrqN2SteXexGiRxiIyFoZlz62DSXfYUuCJ6hU+zkVsp5m0w3YU5o
	 w0zFbgV9qE+hKpVx6wKMYHvQDB4LwiVooMh1POQMKu6a3ALUoNkp6C4G3uPeF89VtA
	 3uSRl8FGq3QgrPvGyi09uMtqzWEi/q1JFHGjePZ/Rc7QKBYYM7OOHHoVc5xyTLqAXx
	 OSdxgJR7EFtsTH/V2PIjtyDXPHFwoC6UkDuLEAPTfoVNL/1eZ0dyk9rdD1rwC0yT0n
	 8pD8IGudi9j3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AD9D2F34C
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176832743358.7192.13107190603241267859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c59ced9b3790bae747e908c39370c1bd4caaa2ec71df67412c046b8d54cff41c
Date: Tue, 13 Jan 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768327433
