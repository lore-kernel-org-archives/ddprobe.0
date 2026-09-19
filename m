Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A242A1F16B
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789787434; cv=none; b=m2q2sWZG8lzmiQlb2gIsst44ZTwAmFt3TjKfev5RdGFGzxXnGs6UNFewex7tKEBgGkjI+xP419pEKUxuI1a3TT0RZGmgrxY+7Eog6u2kesugqr1okQfCAKNe3/wFMqK8oC9qYd7qrVFBOAET8xknVd6KxCqbcX2Fa21ar1+lC5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789787434; c=relaxed/simple;
	bh=oPxLxfn4g13zbCZK2W15MwWas56V2vzUV2oI/1yTzZw=;
	h=To:Subject:From:Message-Id:Date; b=qVX/TGESEITA7E4lIUcbeEdO3wHIkggr4xxd8EidKHtwqaxU171tayatsZEm78Xs6meXy0ZN0tZSvMry1kDh2CRLCImj8jVeCVNmPjFtafFrWbTfHQHC973n8q3BQjgPDIE9g0RLAyfp5yygwnDz9vW4NMF6rOGn7xD88gYfAaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OTvX2F9+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OTvX2F9+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D76C2C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789787433;
	bh=oPxLxfn4g13zbCZK2W15MwWas56V2vzUV2oI/1yTzZw=;
	h=To:Subject:From:Date:From;
	b=OTvX2F9+WUyuIjQNmtxfkq7CDy7rTSgAc2F8K6/kOrIy9X7csQbBR7nSCpNkeNo9Z
	 2KgIu9J4+A1w+P3OH1AFXnxgLhBd3GT3Cmf2CYygx+hCySDgJLzAEdsfNKpUjzNjew
	 aaVFuvuZvxkLvPpHCBlBPuaUPgVZryQ51YrHysOX8+etb/HwWRLohICP7GWHcppHwT
	 BPEsjS1nD4KYWdIfhSJePNDio21rHnVk/LPAwlu2UtwF8Wb9tJaRyPidu6o1YLcpC8
	 tmTgrOlm6ardtBPGs/T6UTJAxqfYnO4jZ5JII0yXQH+0+KVqNIl1WTFnB0s8CvClCf
	 EGCeJEswmAJBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2CF8C982DE
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178978743369.31481.13279326472406250104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45c58f1bd20d1864c8c72075dc2337c980f2eeaaaa6942c08c1a2e08df8a43dc
Date: Sat, 19 Sep 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789787433
