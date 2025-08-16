Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0661721578F
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755325794; cv=none; b=f1ncbliLDVp/fNYr0SspzbgoTB7STCFK//laqm3uUAabcWH+ZVk7auD/3qSvz5NSlNI9s1Ho/D8k0lg/a99ELLlnLzmOlkUZvWhuiqbkD2kcwneMEo9QwtuBJdP5+vn164tyvdpb/ulD2hdZQHc1b95bxz9bxWvxDnzb8vdthJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755325794; c=relaxed/simple;
	bh=3ceD2n/hTmBjeePnY3AVxcCuXtN3REwqr8L47YCZA/4=;
	h=To:Subject:From:Message-Id:Date; b=bFwxWfEFqctpbCyTXlk4846g669WkfGcye99tszk0GCg+nGJ5s1BaOSE1mwvUODF+ltwwwf4H4HxiAsmKwBdRhYbbXddZTkWxnFumXGd4og1bldqZCB2zlSAXHxVIQpGL0V4rKG18+00L1r4zH5TOuxiJRuGcLH14CZltAPQHu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ser4Z42W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ser4Z42W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B91BC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755325793;
	bh=3ceD2n/hTmBjeePnY3AVxcCuXtN3REwqr8L47YCZA/4=;
	h=To:Subject:From:Date:From;
	b=Ser4Z42WLdHI6PbsN5y/fgZadyCG14am4RkdGv6IX4MyixYK5Yu3UxC62GCls7Vf8
	 HLnAaebJZOrfOT/bIev19CVw32mqJGRJoiZR18aMNjXMJxk3XARwpbb1YDGgJuoZok
	 TXPPjJK0Ie9qyvHpp2frmJbqEimqO6a0SbEiQE8WX0iyGo4XkkxbXl0j/fihxZOMPR
	 EY6BdWd2LYlHdxIBKnGXdU4bdAbRFtQi70Eh9VIDFFQUQgi7rf47BTsQyh4tVGFOAQ
	 01IcaeUuGPBqizasDh+c1W2cQASCCdvYuYe8jaRiWDVHgOlbyu90bCBlocvElphseH
	 xqJjdvuNrgUoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDCCCA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175532579357.3295.14004597135528134423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37aefd6cd1e119211a87c3bf0a8627e02e28e81d96985ff17a5c7197b1c09093
Date: Sat, 16 Aug 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755325793
