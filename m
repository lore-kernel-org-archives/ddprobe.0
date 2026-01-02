Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D0A262FFC
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767347634; cv=none; b=G6e4PlTGLgEPOwtacASIza2krMslUgVTpyfUQpq/4YR7POsZQQQf6OQ/1Olg6tTivAtYanXPG4KIka+dsZcsxGyDOBlnFsY18H43EU0CpIxz/NW8hxCzvBitKz/9/RQ1Mtuw15euIrJI0WZfyfs2V6mYDUabv0bhNdh4C+fO+R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767347634; c=relaxed/simple;
	bh=HfJYlg5SsHl79fVkln0oIEO465EhODhHRa/VuxxTOas=;
	h=To:Subject:From:Message-Id:Date; b=qkFDVQLdy1/NABIo6Q8wfkXc7vnj1Yk0ylX2NAaRsut6bTvVgsIQ5y2DMY1+u/Kp+v+Jl+SNG2/ebzRgE9+n0SSlryOHYSu2cuD6x8kgMcxvz9FEle4y7XmFSgrX8vmugV9DuO0LCPYS5WJHdQ6XXiEdjURIg89wdQG0+ZaWCBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NMMVYK57; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NMMVYK57"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5ECAC116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767347633;
	bh=HfJYlg5SsHl79fVkln0oIEO465EhODhHRa/VuxxTOas=;
	h=To:Subject:From:Date:From;
	b=NMMVYK57YIDJjRVpB02tgvsVD3g9nCGWRQfmVID13nl9CJXISUaSWhqkSDWBXD8+k
	 Sz3YTqfJALjaaFac2+ceqbH8+oOGzNYqPznJGcdoi7TynXqQ3iK1+8ZcJjHQnwVMjd
	 16ZI7l40z2P3hXfE8pXua0H/ogcKUna6E0zgVYxPi8FkGAB7ek9ErYKUqy0QXpKOe0
	 E0d6YCYwTgLYIMmVEBeTZBittyEEvkjd62WURGl4OluOmZBcgMJ67d1QI3DxEN3sLZ
	 1scGYPtaAX7xV9g+UuS5t5vApsLrZapT94covNWU/hXN6STpZ3yURNM4oa1TWK1l4C
	 scWFXuWvkjitA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C73EEB57A
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176734763358.20108.14515611161108494430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8b19d1c560e55bbe3547d046431b755aca7ae7c9c90e19c33162bce51c7fcb4
Date: Fri, 02 Jan 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767347633
