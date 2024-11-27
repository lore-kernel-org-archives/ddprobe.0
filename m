Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367B71FCF6B
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732713954; cv=none; b=msTUv2fIecPp+Mecw11U7aWf8MwKFpAmD7P3DC1LwmmWKkO658ZBsb8PFLl3iRz5q+4c2jmKp6Y4iVC9PWmMHLT/m3PaAn+SUl+GPMgujhkhOdvTUm5Dc9D418PKtxTzC2zpM0PPfNpmf/PQx+Znw9hV+HWl7phOa89GnbCO99c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732713954; c=relaxed/simple;
	bh=j48o0uo+1kwUFT7DxJSqk1jD3paHi4abL45uyTK4GSg=;
	h=To:Subject:From:Message-Id:Date; b=gChGh2FPBv7rhD+RYZioNMIh35BjW3gl9vbD/rjv7uc3OofwktzLhK3vP5+8r3wBdw2hamMcH/vzjb/oq9ymoxivohFQXGS9I2VclBcKwIfYWVUuzwgMn94uHxI8yUwtrESWMC+Q9+m5qh8o6aIqLcWAEQJyzfQU1/j9TFqvtZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fXASZQvR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fXASZQvR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA05C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732713953;
	bh=j48o0uo+1kwUFT7DxJSqk1jD3paHi4abL45uyTK4GSg=;
	h=To:Subject:From:Date:From;
	b=fXASZQvRjdpAmzSYwK9wzz6Iy75PYeew/7yLLXB5ik3aOHvtbViWbnAXYj0Pwp0m6
	 coHKaeieAb/QHxxz8qPkGaRm1IjLEpOGbeFi603GLTsp+TuavEfnmR2355kKg2NccT
	 8eqrDgygBfjq3NCN16Gm8pq0ceDw6AMxrAE+kApuayvXN/vaNZutsz6tozf4UJuVFr
	 +3DG70D+Rzq9AF9qjJV4UoaZeSaS3wBAsxPp/7bfmuT9aL2+A23+AiEB3b8f3OZ3Y4
	 61RaExqvpEiNrGOXcrN1oK/ikrgD0EtZXk0GytaD03TJAN8Ayt2wbqy/wlR1Ag5bmq
	 n3ID7NreM7t1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A263FD6ACCE
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173271395365.22881.3464705521937668995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 535be1a0991ebd33847d088016082bf03f764b9b1f5572199535c230e306d78f
Date: Wed, 27 Nov 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732713953
