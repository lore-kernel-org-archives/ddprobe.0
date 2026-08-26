Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54A621D435F
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787706634; cv=none; b=WIRJYdfyVVINDfhwCnJfotQjNfFpSQDkrM16JhlCHXyqgCM8mFE4SiUO5rnNC/yTh6MoYnDL/EobltE3cmaYFHc1xBquv8dEm2C3tyMzSHfrSuzOElS/N9qlLf7/xYVveWVsMWMhBhWCHKMaYgHJ56RAbDMfPSYVpoT65c5g+TQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787706634; c=relaxed/simple;
	bh=EEWZVE4iX96/kmeR+9lwcyfCG2IiHhw0/DucoWNZOMs=;
	h=To:Subject:From:Message-Id:Date; b=TWd+M3d/xtzJbuEorI221RF10tcwpUCAb9OCNxHH67ps+2xtaWg8B517legHXvp+71CnVc0uf9NuVN+WQez+FgVW+7kj8EucbpiPwEpUnF+BdU6II3GWJNyXMF2b9rBhiO3XLoKwkZuRnhCQpddYJc7C+Y0Rcd4iASnetjuliOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QSvPTPGj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QSvPTPGj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF8D6C2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787706634;
	bh=EEWZVE4iX96/kmeR+9lwcyfCG2IiHhw0/DucoWNZOMs=;
	h=To:Subject:From:Date:From;
	b=QSvPTPGjsl2y9pxsRkZV0HXAz1ZXZpnz0NSRbfH2bNf3J94VBR9cLirju01ptRPA9
	 yyW+vd+H0jpkB/4FB+Fi/mHNPlAdgBj9Lc6xTg8VKdhYNlOSDgNauCwLD6M9jQA7fV
	 etqZJPu1LrWD6x6xaHtb8Y6y4YdOXJkonvdTVYnE3NOIQtGCu9usvhw5XyySlfPbZI
	 gQKhn8cRIJnhqz/GdIRse6GOKr5xBHDryjkgeZXSf3RCge9y/+tZo0c0BI8uxOhho7
	 vpI6CoztUxDCHvxrYrCsIfwGGjBk+dJRoBQBPAMewN/O3/mUlVuL8DcdhQ2//qf/4S
	 HYGwrVOC+LYwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9751C61DB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178770663376.12595.17670870242048963177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62c14b6d3625e4261d99b0ba79533e2727252398b29685601bdb205fd01e3df4
Date: Wed, 26 Aug 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787706633
