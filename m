Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D99C2EA
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 07:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763968314; cv=none; b=qDnLOQ0xsTSkvLHA/iTAjsDF7XC+zFHe8n38NTR6oEP0pK4A2FTbTOFD+rKMTcmNs/Q/3+bxfIVUmm0FIkymZtmJhmO56YX2sEP8PIFMCYUGp+c/fWR+YZNVu8Q8v2OXkRXWQFidW+ngp0NOwuC8X+mJ1LhDKz8Wht2Bv7KUoyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763968314; c=relaxed/simple;
	bh=GVvdV8qJ3PAAaZ6meFivylf507CastM8zl9LHoLYnBQ=;
	h=To:Subject:From:Message-Id:Date; b=PXnKj5AmGDM/IAmSHusB5utYftRs5gVqz3M5QeugPNbCFyegQbEWaXOII2Byg96G2DuR8t8z2ZSda//CrUYld/RTcqhFdkl7Lj3E9lLe4wtDHnezy39jTjcP+HU0BdVwc/wKT5BMtHIoPTP7ycA0Xg+0EQ96R6XkzmyDoepqvLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iNzWv87N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iNzWv87N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51A5C116D0
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 07:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763968313;
	bh=GVvdV8qJ3PAAaZ6meFivylf507CastM8zl9LHoLYnBQ=;
	h=To:Subject:From:Date:From;
	b=iNzWv87NPjRa01wVBqwspZOgQtzZo1RajYRUl5u/TgKb6P6MDrnr69WyhKEdOTAjB
	 KSy9KsNCyrdC0sLxZjLk34nUgXit/SOtLC+I3A4feZLTzsb3jWgC8HweMg9OKiVJJD
	 xGdygk4ChW4NekpApEKdpbv+O3FL6W3QFwDejb2r5eCRPBNY1Utsj0Q5tmWYmk5c2T
	 TyEJ+DVhb1dUPGCZUSbSC+yoEry1Asa7S+B6Q22AROFdD8HdNcgMAoMMSCXc84qyPf
	 psz0OBbFKX/1CU43t9j6RiARgisYRLvlNMVRd37ItVgzlrcaPxSyyGoGlANsCpMqxe
	 Ru2/AZKa5Xkzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92215CFD31C
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 07:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176396831358.18741.2777909522838234332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67a9aad2428ef9b95213e58a71b0a00959b1818ea6448b1196984225c17e46ab
Date: Mon, 24 Nov 2025 07:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763968313
