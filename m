Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3144113B297
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724278554; cv=none; b=to8/j1HrkoaFXyiPfryPAxirsEooQ5TpW3NvEwo+gCy+libMu6RHzJMB/N3J9VTod77hAGaUcWDq8yppa19SROFzYwKnNPma7TB69iXOp3F0v/wwmO4XRQOXuv6XPf0z1aev1d1UJA/nUtjgV+ccMmYmylmQqfI5THmnJqNKZnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724278554; c=relaxed/simple;
	bh=TlKhR0h0Ji4DvmollmaOUoXm9QQbNBBnyeTIIdfMDSY=;
	h=To:Subject:From:Message-Id:Date; b=oFyFWSwtGNwHt7rF7endcL9a23R9Mh7vewjBGzOyQkOa+idlSLRBhuDfPICLvlwpJIqCNfPo4E1ox0RKz6ypbRvA68JhudeLOWQLBGeeLDhZc9OwBEwu0ZCMjYel7+a2IASF4imULUykMn3bsa9Igi6IgREwRU662ZWuv8MktcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ANtVaGNW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ANtVaGNW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B802DC32781
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724278553;
	bh=TlKhR0h0Ji4DvmollmaOUoXm9QQbNBBnyeTIIdfMDSY=;
	h=To:Subject:From:Date:From;
	b=ANtVaGNWyKF4JkA7oQqpYgud5+mGFVIsBM4iAh9XIBiObkdYhhPV5kQCFvi1WVeKC
	 hOdhdKbCK/FGdlfX3Zu2gkOPsBl0nl04LxUssuKkgqwErstS+HKem7e1gBMhh/T/pt
	 HWQlPOw9xf2rdr79LQPO4iZq6rtBNFWbLBXL0qG0YKDYOZ/WJw9NX3wUvpd4p96v2h
	 C1dIc+m//KUrufXl6Yylfj+4NQcmJ6G9iLIG6KcvgqFyMP0oA+9yrdDcRJZ5tJdJje
	 ESX8vC0UuaY9Dzq7ZzKEWpYXDdPDG/x7kU1u0BKGkD74tc7LUrwr5qWgTFU/O3HH1A
	 xuSrxPmhKqRtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2FCAC52D6F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172427855364.13737.17584091923211877968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3953bb635fc249bb86cfdc6c91818cfc1c9afa26eb4dc6461e51c0c3665e64e9
Date: Wed, 21 Aug 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724278553
