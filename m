Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7F32DC331
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771152894; cv=none; b=uc0YowE50n2nDfD1wAEXV1FcZoXH+xXdEqggrZ9wwypNsykvMeIDXLgjeID+WMQ+okeNt8vNvh8Nyzn0p42kv+WnXVyVbQO4PY4EeaLKaQoCbz2RI0wwdBZ7XbFFsLg//oT2pGJNi6L0uH/L+kVM5uOhtRe2uB4jQoh76/d0ZB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771152894; c=relaxed/simple;
	bh=RIYwJMbiKiLu3p37i3C/yZa6b3oY85r/jvO0zMRwdZQ=;
	h=To:Subject:From:Message-Id:Date; b=IGYVmeI3daSzXXVva7jeeRoTSYHJuMpFXJQJQR/vJTL9/JWc0cbA7309KLe6KHm1/8gh42+PYdHG24CLIaKHsk8ZiVQcUFvxEL+ZRRB2q/THoJUdOxzJArX0uXyGzYns7tG+LPiam/Q02eizja6hRRvQBFhHlFyXA72bFLnJYOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mtUOOnu+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mtUOOnu+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9970C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771152893;
	bh=RIYwJMbiKiLu3p37i3C/yZa6b3oY85r/jvO0zMRwdZQ=;
	h=To:Subject:From:Date:From;
	b=mtUOOnu+8WvqLCCGxgbVvI9inCsLgSFCEuVIVYvCGaENXFp8usUVWwyDZZ8eAdCvU
	 jwe+sRnocdr6+cSt1xiZRn5MepjXT/XJSWwBUyniaRTyKz+vsLTB23EWaonGETBfDd
	 O0/wJCpfS0r07/V1HiBbOsrw4vWeZVirQddOopYsG/A/3FNNt0j/+hRRRrFyXvKqI0
	 fqzl7S3ylT0ohZXt1pW+V+yA0EnUNJewDwv4xsmbhrP40XPAqdI4bblEoOgOH8JLY8
	 BQcT8kdem+R96nWNzTWXFMrTpCeUZWgi7TZ5uaG5FqS8G3cVbnoy1DIKNadUhGndd9
	 nm969iZ0YNJ7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948F2EF5870
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177115289359.13350.8421923964118669126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10a62f7de93f449916671f5bc630d6465943b5df1cf20ad1166afd09a331d5d1
Date: Sun, 15 Feb 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771152893
