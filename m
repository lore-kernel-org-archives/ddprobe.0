Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C97C1FB3
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755999594; cv=none; b=gII1lTZ8W2LucOPvEJnUkPr4vTzIMmSs8YDG/oTqMU0NpX6AjSeWfWSf1wfuhtWYI8TaWKGANQniznlmqugM0vBc6jsiLN8Xe034bn3HpVc/LBeAJKObE1NvWBo62Ad7C4uytWJQy9rluWoKgC87uSeFN3UqKWgO9ZcD7lhgh2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755999594; c=relaxed/simple;
	bh=KQIfdniXcKMRPRonWeQ3ovbi+NhKw8K5bPWK0JvcBH8=;
	h=To:Subject:From:Message-Id:Date; b=ZnfHPXJN3fDPdljBWB5dsP9frpItTIyiKLaw/KwMjUSOOZMyjSJorTC8UuB7/oNmUDaxx5iwp+QJcRCMv5YC0ESDTPS41Z2hVH6Dri3S+1/x2RhvYnecVZ06iKj6A1u92zHFduqDf+shPdb2nFXgmTEdGwsbdSiqUlAQKXb9DiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3E9M8vI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3E9M8vI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EA3C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755999593;
	bh=KQIfdniXcKMRPRonWeQ3ovbi+NhKw8K5bPWK0JvcBH8=;
	h=To:Subject:From:Date:From;
	b=E3E9M8vIieQbsUmN0OPlVZ8A/wmJkWZJYF/Yl0ouLB1tOxUqeVITLcnYqMxzG3eic
	 y5eqH9XLNokd+1ZWTxDhGYNxlLOASBQfOEv+AVcIVt8EPlu93ZBibBxL48fHKPACkg
	 8rYCDsR/uGqDQ1sVRYKrqks7yqX0ALZGYVWxYnO6RtTA7LKZGX9MxSJ3WRFVrZDk+f
	 hinECdI06mO+2tpbtujzHxUmljUbTwmmbghqnOMAgt82VU6wTvNsJoCWJlYkn/II0R
	 g6+9/EhD4JHaL6VtHCAnZ9qGO3HtIXqxaNT+OkVo42xK+eOmTwdt2VpfpgLVAvx3uW
	 BNLWEpE/JQ3jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A5ACA0EFA
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175599959357.25830.4593899819843074432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed75e8631ff1abbf5bfeed8e9f2f75248404da0a6fdc25f07fc86f3a7070e355
Date: Sun, 24 Aug 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755999593
