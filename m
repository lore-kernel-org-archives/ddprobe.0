Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ECE4396B84
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785669034; cv=none; b=oY9kBbstWS9Apm3f5YG0y+Wxkh+3XNGxc69MghMNLd4XrTTvCA82GZhVT0BUX7dmeiZBDQW4Wl1tkO3svWC7L0cLNG2MZdQ+WKQuL+i+1mILRIjfijezmSawJVBAmqpaIdeD+ujZSi7AJBH8LBv3NIkZhjZSw0PQyO8FENeKxgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785669034; c=relaxed/simple;
	bh=l0M8e+oBVMsB8M+6vrV+f16leJrdWB+kDaCXlfTquDU=;
	h=To:Subject:From:Message-Id:Date; b=UTCNiyrwDmcLw0RKY0cnYiFoqaPKW2VNcJZZxbWlYiFAang3NdmDJF5QhQVx3CfZ7ji9av94T/8y3jt7kOKxVLVStID6t011wtqTjKeS1A5S9JQKmWsaNyhJUfKoFwhBtQJQO2nME25OU3EF5v2HIOqgGZ7mBFgOLQXNC5KvL8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qeSy+8z9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qeSy+8z9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0649C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785669033;
	bh=l0M8e+oBVMsB8M+6vrV+f16leJrdWB+kDaCXlfTquDU=;
	h=To:Subject:From:Date:From;
	b=qeSy+8z92mtXB+UPfmXPN6Ot/FDfv5w1fzPmLB9cQuQD6I8BVVIyQEvV57Apw6nER
	 Gr8YKr7L4pkS4Jki/yppRJCKlaO2jwwRGKXhdNHSJuA/7w3FLBcFP/v4AnK3z4+cl9
	 KwcvtkOW9YW7NnTqu+bC6orZny3f60VNVbqxNuzJDZ80gGFnMuDv/M3KwenlPfF5zn
	 p5D+Jo0WiDdqwONm2DEEGwI+1Yhzzd20zFjQocT4aaiq7K4RK1u2wsBcYbc6gLnQmY
	 GMwh2SJAUNuD7PJun2rMWfzX3lliPwdY6F9y2f+R4a2DZLUEbIduAuO+sPpFE1hEhz
	 FzlFgMdXUL2+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB63C55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178566903368.9824.3691516225801602384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81f5c038d3a140bace040edcebd6194c1e075324b58ec6ab93f0a0432e74da4a
Date: Sun, 02 Aug 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785669033
