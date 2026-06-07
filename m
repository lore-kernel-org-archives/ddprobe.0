Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F298321445
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 19:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780860874; cv=none; b=bofZgjM8KBkIjRo9ZrpRwA3wP1CnkCjR5921U2nCTFfZnCpt0a0hvyfEXAQUAS7qJ8hkLhDHLxoQOdZRght9MeZP7EOp5t5YN5jpdwY9BemvP6OL0vmsTGg0qUv6Sf8+yarxZF8ZgLOpZeufVNPenkCkl4ZhD3IwEVH/QBx2ER4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780860874; c=relaxed/simple;
	bh=D40Xa3d3gSC7PcMhvl2Fo7ic39SAi4rYGEvb6q9y83g=;
	h=To:Subject:From:Message-Id:Date; b=uvY5rVKoDgMaj6GdBWEdg+iqfhWSV6f5XKvakfuNsQmNr322kU4pEZL7yzDSwHl6msNUpC3E4w9lXT4d4QU53q/Ffw7Oc4rLha66GqLv85+5UGVyCEud+AeiDtJOZD7kM9HfdA8bCVEStpCupjH2WsCk8K0xjvSzx3iylN5sbhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uFvc8e7/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uFvc8e7/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D41C2BCC7
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 19:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780860873;
	bh=D40Xa3d3gSC7PcMhvl2Fo7ic39SAi4rYGEvb6q9y83g=;
	h=To:Subject:From:Date:From;
	b=uFvc8e7/CIxP/hqG/QiCEvpdySOCx3qpuT2roWJ75o6ZaildK1lV5NosB9LtcX8Ax
	 GP5xdK4bUKrQUBnibBMwxzSrBfaAgHREOhcC9UPkB0T4AYyHHjWTCu8JFTcC4TMYut
	 quMjyjgm7Z+ql/JOeAB+utKgatgkE9x8IwektxMQbMLE2JOKM0cxbxZbmcZeGXzMIP
	 KdLxi7aBwrlc2pmRkJwikjAvxq/bP3YSlX5FvgvVcXzS+om+sbxhtX7w+9C0/RUd0N
	 ve+oMIgL0uoxu+g2FXkZ6BBm2Sp/vouRY0yEdduq2rOSEVgA9tivBSgmSJ8vvB6fj0
	 1JqnuJTETJUWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E67CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 19:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178086087368.10005.5640983120936877591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0bd301529c16dd6bc4a15b9bca88914cb8d917e70fc57cd7478b11f2d3c194c
Date: Sun, 07 Jun 2026 19:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780860873
