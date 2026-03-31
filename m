Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A6A43F6611
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774965294; cv=none; b=DfJbwQ/Xrh+5C8AyKSQMw4ecurMy1DTE7oRavHBnfZIgMHRGt1fDnf73+tHy0FpGZ9VrEN3kPQeAT+CKvG5Ns+oEdfb7sBjQ/u9IDonEWMHUtdeSBef8p4E68CaapkYwnpQt60gImLCzWa73q583gVXdd13le5iAShVRSfIzq+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774965294; c=relaxed/simple;
	bh=IbQ/Ckj2q1OdPCo7kvZhZW/SdjKVzcw21tURJPFv02E=;
	h=To:Subject:From:Message-Id:Date; b=WbKsJwimAAP1m3BQorbDj91S7zgaMrgiDQy1Jo2MiMEDKum5wTDpXVO3GfNYGsRddD22OqnNkwZRSPd5l1f5FfcEr6p278AFqSPLJIBpvtrC7Z+I28aXjZBN/UEWcOOyxPJdoF3gJevpAD2/yDh+gKYkZYngDzouky/zayriikE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GG4PXb2W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GG4PXb2W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D04C2BC9E
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774965293;
	bh=IbQ/Ckj2q1OdPCo7kvZhZW/SdjKVzcw21tURJPFv02E=;
	h=To:Subject:From:Date:From;
	b=GG4PXb2WUiSgx8Ibql+Xn7hHvojVH93aLHytwsioIU9+ISIz37ghZ6dYbWHDBfAZk
	 n5SCeWNtZbk95IRfrwA4n/OmY75GoeqPxB0QQKIcIcAkbIY+1x+Q0biCaL3ZebINon
	 XDfK9I3R6Hjq+gr/OkkVn14PqAGfiNdhKZZFcAYCokFV/6qNwZsgzV+xl8PQGDrCOG
	 t9vexCMO/LXELeaWX3pHi+/Y//pcPpPOyCCFTJHFyLfjaKcDqAhPQPzDmnYTJ4nVBH
	 aV580kY8IFM6l7sBxNyfNR9QhRenMXbAAX3FdkDOXKeYbo2TTSA7eGlEGNjs5dxFEa
	 Xo+izOjtyrwnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A79109B46F
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177496529358.29844.14877641437535087580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 617fe1f131c0d30a324de77be9415740fd856280ed7ce9b7e8e7412a3d9b18f4
Date: Tue, 31 Mar 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774965293
