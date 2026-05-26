Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E823FBB67
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 17:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779816154; cv=none; b=H6q3vIi+LFWwLE2TsEuzBR6+dcEpys7ortXBhHo/683foV3QWhmCAtih2ak66K0xNXKReKasOLtTWBEowDRiEydrHkDkrL4YHTm7hw5V5UDFStrEkSWmPlDOsFhFsjO6NjTh4WxpPl9SmLUsMx1gLUkVEx9UDg4paFsd6ApEX0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779816154; c=relaxed/simple;
	bh=W4oFSRbXwXFp51Ww/8Gug8lOxNHDApsQBP9IcEDXYw8=;
	h=To:Subject:From:Message-Id:Date; b=Bh9XvSXtE4Gd0W8Bd2b7G/6q1Q+9nhRlPaIIqu76u/wsTD+W1oiVnqoxox+T2ekUu3J+q68odvF9INxBcMi/u7Pmt5X2xdI8WALDki5H0GBffLMnw52EVMgjxDFofTRuZJX4GdHmY//tioKCgReXh/g7SihGbmyygxiQ6ZosSJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gNzHd5tW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gNzHd5tW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF104C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 17:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779816153;
	bh=W4oFSRbXwXFp51Ww/8Gug8lOxNHDApsQBP9IcEDXYw8=;
	h=To:Subject:From:Date:From;
	b=gNzHd5tWpwHJ2wNa/NvM0gyYLf5HEwkA8Hp2y9Sss9mFM+gdG45VfStXrafklkadm
	 94j90W3d/Z6IvRtrjjOZktrFJ9chtlVZ+JjtTzDO+hLyOa6NJClERAmS5aut8nP+Wc
	 8qkCz91OR1oUopIZQEr4yXu7So1jX7C/eQNhWGAxMaPtAzIYRm4/aC7XQWYWVvM4OE
	 NW21lcTEjNf+7TDWKLIzew3ofh3Dt/N3aqUIq7viLPK6h+KbwhoLcaDMbrrMeIyW7/
	 HyGTS4uKnb0Ywl+UDkKTXCY8ujDdZhQpUcQUXgaoI9kxjUZYmGCZfpXeWGZ68cPuZc
	 gsvbDz9I3oS2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7E8FCD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 17:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177981615374.3766.7194929585561578179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a1dd91ca4f80503840ce3ad1119800bb19b193fb05f3cb86c103e00af37b3d9
Date: Tue, 26 May 2026 17:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779816153
