Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BD2847C0EE
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790086234; cv=none; b=O3M+4Z9trFU+6L2jNjQoWE2j948kiqbgCqaDLgVuCW0JRVWzCcv79fcq+IJheveCbTb8MnfZlib/qmJRO59CozJGRjkomWFyrxIdh8lywWCGCcM+DxWVmuBFICOlpJY68+Gh+/s6mKbwWSj73eAuSBz7dxdg8jmbO3wk1Pe6rbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790086234; c=relaxed/simple;
	bh=shAl6PG/mjYVF0QzuoOZEyG0LUOQIEITMoD/NPIl63Q=;
	h=To:Subject:From:Message-Id:Date; b=eeUB3BGj//V5OP6FGhyOVj0QaEi+rkokypdM8mEujR9jTHnhXY8DCt/qyjMisWve6UUkei2wvPxulwyFZ4Bd6hYQKbDCfb1DA16GGrJrIFOrIFJUj80xZKnDnhYEI62UY1SfTbYESfGwvsQJI3zSaQ9n+jFNnWA026lZjg7A2bE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gLnSeERB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gLnSeERB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6154C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790086233;
	bh=shAl6PG/mjYVF0QzuoOZEyG0LUOQIEITMoD/NPIl63Q=;
	h=To:Subject:From:Date:From;
	b=gLnSeERB10Vw5VIOltNo1OjMXWj5LhWqFKVfv10209KzkabIZhyCIolQTH6ASrPYO
	 zV2ofgYm/0YLe1Otiri410pzAkgnjEyIftbPDb3OxA9iUHw/x+TCp1YvpiMd1LICbX
	 aohuhQ6PA38HQ785dVhj9sxRoaCpMFEAHh0BecGWHAWNvVNGSuF0HvYrwkh9VGTlkv
	 1ElD2X1jgyqYrS1MFOq16kbWhGKt0iSX4SssB8SsPERzTTmQeVv6RZoBDZalUxtkT+
	 yvDtY2wQ3r+z2NIHkqLpHJk80chKfl3IEikWWqwdwv9vtze7dCtb1KepvJvax2s6gY
	 1u8zvQsZy+ZbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD5B6C982FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179008623373.13740.5493875414743054410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5837552e134411d4ab171bf4db78b1f2289aa2a3c5bd3ac64ad7a88d8306764f
Date: Tue, 22 Sep 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790086233
