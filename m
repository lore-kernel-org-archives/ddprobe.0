Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E25F4086A
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792287034; cv=none; b=LTfbSTK7yzIOA37RESZgrEhD1yDy/jPgzR6QAb2uHD05S5mlv/+b8ncCODsDdKO90gBzSjLG7L8e/AUSQjN3NC7fctDIqSaqoZE017vlHoqTcoPHuG0aeeK1shVcV1cPt7VoL5HjZuIUdYKY+GegqfSzETWiCiZpNYRA/2UwBIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792287034; c=relaxed/simple;
	bh=ytNFwQdmR6Vc7uHVWw86u8XwQKHW1Ob1hdasX3rqKcM=;
	h=To:Subject:From:Message-Id:Date; b=nXqNY9UIbacJcw07CMxeIsaCnRMTP/SUvryWNeEtD4gs0nlqOBTr1YFu2vD+WzpIACBneNdXZmTbbSXzKMgcUbb6BTEgMODOG/WOS+afn3Jx3P4+HglCdOtoVxlPm8HAQ7nXn07yTBnwPAk+BM0sN959UvFIupeuTSnEOIz9LTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZS0qoLte; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZS0qoLte"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4714C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792287033;
	bh=ytNFwQdmR6Vc7uHVWw86u8XwQKHW1Ob1hdasX3rqKcM=;
	h=To:Subject:From:Date:From;
	b=ZS0qoLteNyqUVA7dU3h+3iYhMfnZx+xUb1onC+r0EjrM2YQM57TkofO08FOUGBRqt
	 3qJtoRTyyeENQoCSGiOLu1xS/bIEJ/5DreNKH3APAWSNTSvX/McW9FeG15+MMphJf1
	 lwaHd4z8R2Ei6N4iVqD4jMAmzcywUsivCt4JuFkaxfUT7JdjXSkXyXv9J2tgazvKuO
	 6wK4C+TPk1gbpf3lncaVfJkZ77NyKAd30NkpYfHUZTXaxN+wlqWEgat+1rITBESnja
	 4FItbcZUG+IB8aBVxs43gH6bIyXHUKclATvvaJ80hXavFUyDFJmSxI/Ig2Ws9nuie0
	 Q11uvSnM/qZ1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6ECDCCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179228703371.10640.5104066415638369492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 327eeb4a3cc05b29b7ec732693d792bedb484fb941d17dc875e7f17c32c8f5e1
Date: Sun, 18 Oct 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792287033
