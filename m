Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F57280319
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746622194; cv=none; b=DZs1tqiAUaZkEo9kt1AV7w0kRXvrgnSpiGKt13LuLczGoUo+GN235YTzP80y7R1rRbX+ucY7CGykeAKLcYrsUY1Rn5JHPA0n/kpsoyf2RXhU7SalTGdSqvfek/y7iIrqJERou6V5DdIzIAng/RpPeodv8gyeRmfRwRvGVCw8B5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746622194; c=relaxed/simple;
	bh=y7VNfSdoDQbTSDrf/EW23UY+go7nTQtjyzBW+q/QHEE=;
	h=To:Subject:From:Message-Id:Date; b=tqYgDCagSNtz3kObKeKu/j+Lx/otb+pUhs2cUb6GAOxMbhcYPo1BonDeII/xFYDhREMZWx0llDlUnUS3PHe8kOxXvPRDhmvn8NMhaxGjrQ8s9ubT20rvcls0EW+1RO9n1Tn2IuyKdvEaZ5IXxA7kboPQW7vZlpLdeQgXixeWiK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uM4iGCyk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uM4iGCyk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E35BC4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746622193;
	bh=y7VNfSdoDQbTSDrf/EW23UY+go7nTQtjyzBW+q/QHEE=;
	h=To:Subject:From:Date:From;
	b=uM4iGCykfgEto9GlamDbJ7A/PHXpN3DX0Xhh07xCtAj1ULzpZbP1htsPbguGPokgf
	 gn9N507aWObu8PUKtbrwueuc5bZ8YHLWuFvHP479lu51BdxWUoN9PrvRgcLNTc3mra
	 XkbQ3u99apqwhlMjjJYpHCicUNhHt+XMvKHlouk+9/4knXYsl6JF34YEZg40aiPn9O
	 YGE8HDUjhfDcIs3IqADHnOhyJJLYY9eO3sy7ZXlnSJpivELAeYDVnIXizZT3lJHxVj
	 8/ja03bio40/okGNDMsOeAyUuaEvgyDiodGHXHn/iuYkmRgdyTjGQCFmLi4wP5ACdr
	 vYi7rVUnlvr3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9CDC3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174662219357.22021.18374775311153271755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b970b0f8c427f14b7511a39007e45a659c04a87435513a659af15907136fd664
Date: Wed, 07 May 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746622193
