Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA7E41323A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 13:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777382254; cv=none; b=exZGMRiXBkPpeDs9VwizXDwS+NtxrYskk8tRVoSlkC7M269HXNtZ7+bQqqabC1cw/fvgHoougN9vfTOYXFxSpVWdMPSJlQJdPWOhv6ubSbc/g8KR12SghQmWFKObUKIqLO9rAncOdnCdZ/fvvXvSkLpSjuIGk/l+d6po0iuSayI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777382254; c=relaxed/simple;
	bh=spC63AJtd74oyFgVu99MURf5RJaN9dn17Lio7zmV7/8=;
	h=To:Subject:From:Message-Id:Date; b=nlpn7z7xOl5mqDdrt8dPyCgbnGyol6A+acC4oZF0H9Fz8gIYe2Eo4t5ZVnmEofU/q47jNeMbGH4scbGEVkGzhDVDu9OiLiYJfEf+AL9sCMQLxLtdX5MoOApwP2s7JctHUNTeCZYZg98VA+rlt+Irun+GEbTLQPdalREimRGe08E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sz68wtcX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sz68wtcX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4CA0C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777382253;
	bh=spC63AJtd74oyFgVu99MURf5RJaN9dn17Lio7zmV7/8=;
	h=To:Subject:From:Date:From;
	b=Sz68wtcXW1WqTW5e5Nbz/hn2aUrcubuqKYxLSOlIaa1wSD/kZNTJcZfq3XfO2E4pq
	 xKa/I506fTfMxwodlIcBrWuILCLcqt29M/XRK/Sdctz9imjPZ5OuGd4zdwyc591Lz9
	 Z/n1Be3gf1ecEGbk+89B5Q6JguruPkqY8AjiEs6eF+NmGyp2Fj5VuM8vAxiMfIx+l4
	 1diVx+3iydA5wExraVX5MVRxRE8iFqKMtaEmYFVIUyrO0SZhFD28YZYF64ZEvKTycj
	 jTG20eJ9NZ/vI3SwY0fzRwk4hVfyhdyVCaOJDQ6JygM6RPk6KAOzmjxEWPSqqfQgnx
	 1psLOz/+quukw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BDBFF885D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 13:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177738225368.14195.14893874337597125074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f51bf0ea64596b52395e2a0f50b1922b369be9247300254496d69dd04e058c1
Date: Tue, 28 Apr 2026 13:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777382253
