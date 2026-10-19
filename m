Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691DF33AD8B
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792382434; cv=none; b=kRPaGn9+k8kGb2lzROs3+4MGBgHDPLytNyU8JQVy9lZAyH6i3PdYb4R1TihFVPM5gC/j3/qs4h48stPm9F5YVek7ZHf7K213UuQASw6o+Sg4OGePvIz8TycYdMdluEtsFemj9aPVGMHo7FBjHn6+uv3O8cQMp3voMCtlwsZz0sA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792382434; c=relaxed/simple;
	bh=Ncv62+P78VCwgeIqHRZdLMJVJbTRqEq0qD/lvn6RpNA=;
	h=To:Subject:From:Message-Id:Date; b=d/dmCn5L9CGcVM7RZIxMK+m/QoBrZ1Rg9D9C+yS2GuAvfPtqxkZ3p3IVhE7IVNIsq22DCsUTjkLI4lYvf92BYIzh6vwwOY8dH6RXMu2okyyVHvRDFCrja1AAQCDqaYSgrQYsloY0lmeb+OIueRhG2EpKexatrni6ZeP/LDUM86E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uoUlIcvF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uoUlIcvF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D727FC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792382433;
	bh=Ncv62+P78VCwgeIqHRZdLMJVJbTRqEq0qD/lvn6RpNA=;
	h=To:Subject:From:Date:From;
	b=uoUlIcvF10KZPzp2jeAWQygiXPwM9Zg7GVfk9Bitn2uckani8Xl7YgMVIZohpDjyy
	 H3w02RbO5hNIQ8OpD8o4KRV0PtV4iU7ixPLh00PjKdkqwJGX2PaeATcePaihuCTYdC
	 5/Z1sbD/qyd1sbkcaAIL6+09U2g1MXJFdHOa8mmNHqCCYToRVYjC9mpLHP8BHLdxD7
	 sGUP7GlOwpNCxYs2YKWm3vCq8VeBVRuQlHhqaQHg7e30+mWx9js1EmlIDt6+vpsWHA
	 iMiLkkqj6EVOwER9QXkauDl1+yVDul5bj0rGN7PEQ0bdrRzau4h97Ox51arcsfiU4i
	 IKtHwd6ntvUDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE71ACCA46C
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179238243369.21967.6133653249826480813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89519e75c77728b89a7cb0fdafd167e9c63b029584271d5784b8de8991f19871
Date: Mon, 19 Oct 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792382433
