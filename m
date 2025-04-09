Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7F38F49
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744164594; cv=none; b=X2Tzzi7jo4n2EzsVnVxyo0GaT/8OD7IuUYmRQWgn9SWgRvaYRc3Rtsy4xEEplzdeVrq5Yr2TuYQaKNeOCSQ5eqBNUEpIhKZUjjd+hGmfvK8iYhu8t3F6hKqNUMYRFIzOLPzbWVSr9BpPQV/BniHSPkZfopR2W1cGi1SWm+zxRUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744164594; c=relaxed/simple;
	bh=OT/jRTKORLnupCdSmUEqkZ3MWw9SX0NMCYblEo70qOo=;
	h=To:Subject:From:Message-Id:Date; b=ntKZ7Gr66abomgQV3VE6gYwg7+xSxRiVd7eqjscEjBDzV5OpmSoCqCGyFGO+Dj4Mk9GPogi9motpCtxbCRHAD0qcP9YeIEFPXUWSJKZ2VejfrMEJwgjJ4+dr4MJPFPW30IkFn+ruNk5cPp5Sqn14El8CjagNmlGJ+jE3Ae0OiZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oXYTW1G3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oXYTW1G3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD35CC4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744164593;
	bh=OT/jRTKORLnupCdSmUEqkZ3MWw9SX0NMCYblEo70qOo=;
	h=To:Subject:From:Date:From;
	b=oXYTW1G3Uom+Lt1+2HK6oydbWVq5WhbW/AecusQ70Z9sNO9yH3nrrwO4tD87T8B+H
	 RQLEhGMkWeaki4iMrQQeCW+fSRcNBTjP5VsCrQ+cY4WdtaQCwRwhxHr4Oo6nTq4qNl
	 zDfotfkliBDXVTqX3fEVoTD6hYXF7TyNAf+L6bDjdy5J+AmTo5mXh3ycAOYMRk1Nt8
	 yvwcEe/NmTYf7eESEEoGalMtvprtZfPGXdXDu/v6IcBLMWC6Icxfjpsyr9imRwgdZf
	 e20cau4+pG7lfMc0CpJ2bPp7Tc9KK29/Us5lfaEaligWdFVRzskwoalhSBhL0gj4jk
	 obwowwnTmUuLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9815BC36010
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174416459361.11035.4058042621778184427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36fbe824bfdcf67dfb701c6077789a62db930b6b1296b68ef5a7cb88d1daf1b2
Date: Wed, 09 Apr 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744164593
