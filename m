Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F383B4EA2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 16:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781885194; cv=none; b=aHWh3L4G2tpmzvnEGnC/2MlFxqeUeyl1RCsQ7GrMbDLWYC/uS1XSYLnmO20LRtpOTqVGKZ13qokUfkDspA8i6JS75iJL86c+Afo9liZrbWl3LwagzVe/4Fm4dOoKGBr0BkBpsMTbRA9SexE+abI8a0poUOtV8dPaA223ZbeQJr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781885194; c=relaxed/simple;
	bh=i+qaBly8P6J9xGojWeQJE6aTBJHVaDU2FXty4+rfMG4=;
	h=To:Subject:From:Message-Id:Date; b=qeOPb+EInkJfFSXheMnADt8Eb3ctf5wAsiIws/IGBeOe6OvCUIa8mZtX/cd9llLlSIO8F1BEpVJYdpDJjfbKNbnP+hrlweZfatBJmggPyiq1PoaRa5dpx3nB++Zr7prRHaByIaNz45i7dyDEr5z29T7T0JanFeCeEsSKU4vtwuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OG1J6DJ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OG1J6DJ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4241C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 16:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781885193;
	bh=i+qaBly8P6J9xGojWeQJE6aTBJHVaDU2FXty4+rfMG4=;
	h=To:Subject:From:Date:From;
	b=OG1J6DJ+r90RhXk1BfJZHVeQs59lGi9XeWmQiUmVnSGlsmCPukp613/t8aSR+E0tI
	 6riYb3TTndNiM+uQYzxUcRc6TfT7J3jhQDB9+ZgTFHTfIFpD43mfFA9DEwTsbQl93x
	 ZrmopuxS/YjpstN2mXON5uWPOwKINnspN1yqrMCTLaYyZHf++kO34M8TpPLhSanzrV
	 1CHhXK4I4BtzBeD28reS16Ih1XAtTHsfS5J5b/r5C9PyZcrHmAGIyVS7dQrs8yZHp1
	 Pu2djX1ZvI4flx4SZlVLHVQgopN9oiJlrO12UZqaqNwL6dbjvLU/bVkTtAIkDP3A7T
	 SiBFR390A99lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE50CD98F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 16:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178188519369.28404.16198892992792225245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43c93e932d83d43ddc576aa232029d618f2a3ab55c4edcfd431d01eadcefc5fa
Date: Fri, 19 Jun 2026 16:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781885193
