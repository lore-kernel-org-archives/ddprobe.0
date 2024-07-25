Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2454C3DBB7
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721892954; cv=none; b=E0PkERzFFt6zttDfeV3JreKJK+zl52Vc5ZKFNMorToSIQjR/H3UnOy2MPWi1jK4adLjDX0rN/yF9xLL2vwijrlWXK9BM6dgRmKUMEVnS7FkFbOHtfZOX/T2+CqEV7YYJeESnknAeX4l6x8fURsWURsX9kHnLSfLKzxGrtycz6OY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721892954; c=relaxed/simple;
	bh=OHy95XVQpP0soFuzPAa1snoupr1wHkGQaXb8DEZky20=;
	h=To:Subject:From:Message-Id:Date; b=YCq9Yel9AAMF7V6zwC9A/5AtaQv7VvxnCNIBbZ6algyNko6DhO9U/Bjs5l8bJoZ6cuZ2DG32jtttpLGGYq9Ecw9gv04+9bw1//7SboArML1EO4pobpbrdC5pOFormvGJjgpSLpYfN12zVI1wrhpJMc7XpEWXrFCYR4qm3iqlPVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7Kw+W0w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7Kw+W0w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A883DC116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721892953;
	bh=OHy95XVQpP0soFuzPAa1snoupr1wHkGQaXb8DEZky20=;
	h=To:Subject:From:Date:From;
	b=c7Kw+W0w1F68pOrXkr4UkrXcqnyvi1TPCOCR6j7zydsOWCmEgtCwkXQjnwaqBVxgU
	 RAUR9lPNAP8kutLc5Yfq4KrK4xJOxRwVzZrwacW6+4ze/ezqgQfehPogQSdjPAJDKd
	 Kwx72Zg8bPSou5cckKAS5gJD4zAyU1p1ZE2Lr7TpmD10eh8vYceDWSDK7BBnQt+d6l
	 1P0DR/NQDk7V9zzdsJ1F3SIKMxHZXth2cDUOHIeBfELOjeknRFxvBPAkq4fNlaUmmc
	 tvDD206PjXUWvMkhjuOBZSoPP3LdnDR5gIUxuOtoUc6x4aBWDo7d0pbiw0mwK0S29e
	 Qx8alFBcG3YKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9725BC3DA5D
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172189295361.30453.14289235427385360370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28123db58b749c18284012b7b9817d4f3b7b12506520de41e08f76ccaea65b4a
Date: Thu, 25 Jul 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721892953
