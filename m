Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47AAB379EE6
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 12:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775995654; cv=none; b=uaCISvm0m3reuGxMR4LLiG33169dUB+qZgW5CzRRBA+V39zKzFCJLOiXtNJbXwvrZldCDYCzm78HxrilYPj7O5s9rEgWPolfLMDvALiIS5GMv5a4u9WTRMURYezFcA+n+SuZIy2MN6tHg7B1aEvEAqAcOhfZ4KRpUjTlvT78ygA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775995654; c=relaxed/simple;
	bh=2zRUiLN9cuiYjvTp3drL151YP8S/JroW4Sg3JvVurDQ=;
	h=To:Subject:From:Message-Id:Date; b=hAFX0VXhhbr/5wzK9FpY14pA/CyeQ85Mb2iGuefbppkegnZBGCDEtfMdH/jeDfKazgjk5fWr+PyGiqKbL8KgXxl5RYSXYJUHvGCrkQ2PO+GtTjk4WyVUY/gzk/tXheKIV5pbihx9X3IUs7MJbPmbasXKOY6hVTJeCuOgBQcQTPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fxozlzo4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fxozlzo4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC6C5C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 12:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775995653;
	bh=2zRUiLN9cuiYjvTp3drL151YP8S/JroW4Sg3JvVurDQ=;
	h=To:Subject:From:Date:From;
	b=fxozlzo4s82SWatyjs1JVpnRmHNDRZnpjpjgV6zHlrNZ4jzopvLSISUrIjKrAq/RT
	 /RZKoLuUXxRGIqcMw+xqxiX7hTALO8gaZWQhuMKbcgz5Vn4AfC8Xe/GQCCzA7LQQKR
	 21edU3SPhARrS9/tQfb5u6zCARsqPubCG+eYokYDco0242zZR6h5BaB3ck3hD+r2Gz
	 pUd84lC89gZIC4GCk3FCOxnTDFOmVXAlr2SaiKTN4KdvmJs1+FcAXzE95sdU7utVEN
	 d6RWI5XtHCjcmNAyCFKLB2Hy0z9rtXtucKJrlnubVy2f/nzN98blY1K6eiNWM8o0rj
	 xya1rz0wA5Jeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA01FE937E0
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 12:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177599565368.14430.18017182188562544245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2d3578783bf0493c0ae2adadcdec27ae8128813d13d3cedbf2977c3a10bfacc
Date: Sun, 12 Apr 2026 12:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775995653
