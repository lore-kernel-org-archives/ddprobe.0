Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDD21EE014
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750610394; cv=none; b=u7tylzCY2fo/9jHqHmbebFiqQDiNQmKQWS/tUCQ7eNClUKLa9wnBFxssnzuHgts4n+TQnp+nLRwXpE4rixC0GiIrkIdP9Cez/eINX+U6DepSSZ8wUabf6AeN+G8wJhvEqF6e0PMSjUAHKHl6/36z6sUnSZUyCi7w1n36D0SAryU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750610394; c=relaxed/simple;
	bh=wk5CIHrkjrf7fKSKrYVB57GnoO5e/9ExOEjRGNNwB30=;
	h=To:Subject:From:Message-Id:Date; b=RNGAE+ekawcCXMrrxHs1ajH/A5VM7tLR/vmaxLUXlAqlelufaove7xfxJXuGbCQP0d3uDKCemKLeYC+EbZckcYN36fVw/QqG2yG8Ehz8J/LpDfkCikbQtGrw3Jg+QMmwZAeGAtW/0jcF4zki/MzN57EtcqL8A3KIWqVCPNo/MBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PlYU4sc0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PlYU4sc0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4068C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750610393;
	bh=wk5CIHrkjrf7fKSKrYVB57GnoO5e/9ExOEjRGNNwB30=;
	h=To:Subject:From:Date:From;
	b=PlYU4sc01Nk6lQLJrWryOyR8ec7pQXnswtEjlB4rAtrF8hbdKd9ZQPur4nkpQ84dc
	 S7td4xP/H7s8qzXlH1qi0gv+btOIEJMjcNX9UDbJwhdsplYyc0vm2S/KHM5i26zu8h
	 z8j9pgUMiAZt/P7y9JfvJWeaaWTgEVOWKYs9EeclfxaYCOePwIwGXUpTjmzsQqMq/S
	 L6fU+1EGgFvwAf/4fQEYO0lE0HX+6JjVasjHsPhPKT4FMTp45kJVq4QqNT25ZeZZjX
	 wnqdWPiUKlBWK+eK++X+DoYtKUUbBLtbEzZOZLw0mh3Q1ILf+1MlmkZeliemhMaz7t
	 ei1Sp+EvFjYbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D58C7115D
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175061039357.28116.514491919682801033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edb2f8b67987eb63d0f6392329fed4b534f5ef4f288bf82e58e62882304ec97f
Date: Sun, 22 Jun 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750610393
