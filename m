Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9474330D35
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761655193; cv=none; b=lymnYgCzkQ/8Ar+bxoqFauLp30OuVvBk3gBDR3VZ2vplJDhWyw2jonukITt00I7lrrhI0/MiaZbJYXM3BgMoQYwtLUFZvRHaDr0bDq00YrMuucqIL4Gh28U7qThKSQGG/7iK0b5ae+GxEFH2Qck7qi6a+s4CbBnuiEQJh6GNmls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761655193; c=relaxed/simple;
	bh=2XU1WabM2RIvPqYbLnUT9yIcpI9aCez/6DRostjujLI=;
	h=To:Subject:From:Message-Id:Date; b=u/Rv00c6bkB4JpaSMbs1m8QB7LuPrcBuVjfQhjBciC7KCExY58/B83nzvGWqb/UOGKpJad4lLhG//KmEnB/nAVLIJjNW1IZsGhecrkJSEBrqpsSVm5FmHBVsGOghAvCgGNjsdbICo71jCyaGbtjXNerd+Nx+EPSQFrf3bmuvsOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KBCXBQEL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBCXBQEL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A225AC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761655193;
	bh=2XU1WabM2RIvPqYbLnUT9yIcpI9aCez/6DRostjujLI=;
	h=To:Subject:From:Date:From;
	b=KBCXBQELyBYZlLuOyN7V8toaLpJFOxQiCvuy2u0zuYRLgzOvQArDFBftEIn5+vN3g
	 9wYGODeI9Lden/ftzasqeH9QH5YNGC42ycswYb8EsMTDbJitLe6kVKjjv/cpu9PjOG
	 RpznzaZ8LG8M0z3H8WeVgFRCHow7kh+O4yUhdmEeWL0FzeGd/s++/D4o3wQp0M5BFD
	 IeTj3Vp2AtxrYfO/gVSqo5yS9ITEBnZMoXj7qpi7H7vs48WOKJZjryu3Y/vWntIqUT
	 CmjGdmlcTnQJUTZ+I0kQJFzq9aZrrh+gkJ+eXPVesGbHwOtRDtzo9mMw3QC7Gzf26U
	 Me8cRvZ51ctaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9131BCCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176165519358.12305.17446855825932590681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e48a7af2d84f3d7db9b6c2f9ae6d1bbc77c79f63f1461771eaf2b0a9f19d94b8
Date: Tue, 28 Oct 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761655193
