Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1783FB06B
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 12:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781094934; cv=none; b=cr9JjuMNxZjZ7H5d2CwGQYyEDCnI+jwxrf0AZrTfFnjV9a0aTaCp7WNfmPPV9YGjUMuM+v5MD6XvhRiX+2I/tNn8kfUHbUXLnlpg30sEOIvzHTkJt8XKkqWm8ogZx409gk3ZIH0QVtn63qTdaw3AUoXx4C8hurwtqKmK3f4Yugw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781094934; c=relaxed/simple;
	bh=iDR8Ev8YKCiCQ9b3RIQduAmfK2XzC7DoscwM0U6n4MQ=;
	h=To:Subject:From:Message-Id:Date; b=jeiL5yPelYQNTaB+1oV8Yjv9xgS34RaNHgduRaINYmNGQ82m6JM6oVujk9lrjes4k7hZ29EDHHPSlNYEpaaa81VakoDweVDI5sP6gA9QNnZCbSMrt2n+bupdx7GDKa0P/STdHqmDdcNw1XlN8mk5Yr+HtsiABp6dLKMgoUXcejE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gwciQQjk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gwciQQjk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C21C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 12:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781094933;
	bh=iDR8Ev8YKCiCQ9b3RIQduAmfK2XzC7DoscwM0U6n4MQ=;
	h=To:Subject:From:Date:From;
	b=gwciQQjkXWQraozfswHj28A9pDkbKsOofR7+A++5X9LR9kBU2An/Gii/UlXW6/oI9
	 8DNkQI4ZiNpfMW4BdMPgCsi9zOJZIiYR222l/fhzqX+PrZG/lfmMe+26T2wF7MtMaM
	 Z8uPod4zBg5ot3lwRW/D1JSzJSC8XckhmfTzwj3k51cnq6i0okMQZGSJMBzonL2SXQ
	 729/qovO2BvvnNhOCh658DshJuOhA8TV5wiDZ6jIYs4q2uBRiujTB91/4fgincSCCL
	 pBrgae/vl7kSS6ZZ0lh6XhL3kvNjYWwwRGtlRrh9txlkJdUar1jhv/AM8rVWTmU/aY
	 LXFdVYbgiz2aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D91CD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 12:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178109493368.7528.5506633209104472179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc7cca1300d10cf3410ae2620703fcef46166995292be703b0c262cb4713a321
Date: Wed, 10 Jun 2026 12:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781094933
