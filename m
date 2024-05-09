Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51C7A1A2C37
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 07:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715238743; cv=none; b=MfpStIqKMu5bR8kuXYt/KMpWcLpQMByztFgoPoGcV++p920WK9eBmmMdC75bZNA64TgKpQjYKAdiSkiaLEYc0RTSA9WsLzLtPJSZIFHVJu8zYFK1F/F5KeRILsRmZC/Q+HNjT8FI3zNaqszGpwSZmWu5+BhQL/+2B5mwweus0UM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715238743; c=relaxed/simple;
	bh=JJTC4vIDEgqZb0NRpV2QqneF4hGxepFFXevT/tZfeJI=;
	h=To:Subject:From:Message-Id:Date; b=LzsBwAF3nFI4TPn4pBRsjXr8FdJV4GODl2BbqlWRdoZZsr7ZMnZVOnY91OLGaAUBdPK4QO2eM6f+z/CxrRVOs41NRBKjiLFBrF/sTdErtHkW3LqxN93Oio6bfTdUvEY8zVN9s97TjnHxUOxegr7isyw7r7Yl5vTOGthXOjJ+v7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ha73lH6i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ha73lH6i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9937C2BBFC
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 07:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715238742;
	bh=JJTC4vIDEgqZb0NRpV2QqneF4hGxepFFXevT/tZfeJI=;
	h=To:Subject:From:Date:From;
	b=ha73lH6itnMEay0xkowCGxiccKt49ORaSOoNnoNmmJyVY5pyXWXXEwJox9SyHagfP
	 XR1edwUEIW6+rPzZtfkSTSR/Ay/ZIYuAmf+zBbfhKY6+03yYOBZh897U77VO5FK2cG
	 bATmR8BX28twbrYB1SsqNWJKuu7lLQsvVy7en+INEqut3pKSacFX4AttQ7v7EO2fme
	 duAC/GnIixcCns7XMFcxrI1LdOU413psHWmk+Y17IA7zWcfUQG/nweLCX/eRZInT9x
	 L2xEEBj1b04yt2HQYCXaEJkzgBE6uaCIvwcjC7ASyOZ5bslQq+kQJMMff+4Jmkg8dG
	 7z7gTVPSMDwiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C30F6C10F1A
	for <ddprobe@lists.linux.dev>; Thu,  9 May 2024 07:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171523874278.2171.10165467687549557133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fa9977092d80a629be25fdc779161b1005ddd9ac337ae217ad01c867d3e3a83
Date: Thu, 09 May 2024 07:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715238742
