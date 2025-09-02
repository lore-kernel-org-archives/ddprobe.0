Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C4D32F77E
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756837194; cv=none; b=dlBrCqgqf/K4UVccQRxcZsfUxb3HYGFtcwZJ5D4t8WIH5eHtPLZHjRMDh98/MR23zqh/bKCdZllJXHtTQ9jxHbau/Cdy87Y3bOW7XUEWk70pwQEwB+NWgLP69TgXQdzzRLHiZA83kOvPURcfQgwjcto0SBIBlICIdA0mfuck8p0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756837194; c=relaxed/simple;
	bh=NTUiPhkoE9bvmcrudddI8NUGDxh9XvMHRDFRuL5QVsk=;
	h=To:Subject:From:Message-Id:Date; b=V5aaLg4kk3W/VQs+KI5ulkK5Cuv2z+wBHR7dKzn7R1SZciEXDMqvMknhXcrmdi7YxCDcBcOUAWrRt5oqpUuw3+gV9f4+Jc+za2a2gFdIVvP6bOSOhJxuxQONKIVodlljvoH/jlbfm7OXY16tLkgTah8e7FxfzRJNp/2i0V2shkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=if5r3Mxy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="if5r3Mxy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30B7C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756837193;
	bh=NTUiPhkoE9bvmcrudddI8NUGDxh9XvMHRDFRuL5QVsk=;
	h=To:Subject:From:Date:From;
	b=if5r3Mxy4DndQzWoB2iKvBAlTEfdWxEtMNT5dsuYIIiEgI5YPO8D590JJq0bjLbuk
	 +5LMdYStInBgAeAzed0l51p9oMujFR9zZvAvS6/dpuNLjwaFu8rwwZpxqXEvCj2JKg
	 V/f6fXiHxPRt/N+IR1CFhM/fbDzLcSgKOGd1Fnw2mneeLq2oUHVylQyjWyTdJVcf6S
	 WP9Li3xwxvXUkgEW2MBY8m27gJ2J2T4TsgDdtzTprhoY/Awi+PN0MU2jzxAtE8iRp1
	 0ousPf84yFKPwQidXE0YK/0u0MvEHayg72JOXjC2XZYbfcMNWKMI7BttSfMtzzF7AH
	 R6zYneQevm6vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE48CA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175683719357.22915.8307383133043833466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be902f0a8a51e6c21a4e8eabb7ec700abf27d3e9cbfb39d1be27ffeabdecd863
Date: Tue, 02 Sep 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756837193
