Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE721E2834
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 14:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763302854; cv=none; b=Bmu4qxZKMdUpICNibu2Z4gohFx1MLX63aNGoW2I2RpsfwULGRnenD8RyVs6+zZTX4oKk8lJ8siRyVUfQrjdL6ANZi16CtJbY0SuQHZLuNizxTsA3MZFLv3yVyYfYdtS1Wk5GFl8d5Q+ROWSWlOyOoHCtQ7HcWNsFc9jTVwBDCYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763302854; c=relaxed/simple;
	bh=H4tVbuESpGPJAJvA9nvvDNuRE26hRAtc6OGyGieanB0=;
	h=To:Subject:From:Message-Id:Date; b=QYdumT21cy7tcGuEf6rNd5EFnPM2aEwg1nD4j7e96/6RRuyYj0KBmkrUZ3T1e+Lrt2Fnnpr+tDrUL7aeFz7EWuCje5y2tEFd4s1y6k+b/sYqvVHDImz0gTTL7ACJkhWBVMiadQO7gmRvKdYDTLywE6unMmQmBbJPeUNg3oWexb4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lb+DnBnf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lb+DnBnf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2DAC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763302853;
	bh=H4tVbuESpGPJAJvA9nvvDNuRE26hRAtc6OGyGieanB0=;
	h=To:Subject:From:Date:From;
	b=Lb+DnBnfTzPmCTZ4TY8LAjY4C4YCqk0WXduBLXKUJVJMiZGhmSx7s0SUKOpePG4d9
	 Fg/dZbUNwB6Evxjy/u4fzqD40rZrVcNJFyewQduJzcShBNPaidzx2jLn/hOiQd1x9m
	 FDsOf1IU5O8fvAgI5rqYerSMX8uyvpY4siV1yx1E9bq38NFBBEd0aHOQiwfs8A+OAt
	 dyQ3WXu+EXIVLpHN2qCPiEsv3CwyK0IT8CIIzopnttxQHfuRoxHBVbPsx/701kAFif
	 rqxP/melA+oPFyeMaZjkrBArUxwK9XEji0kDDy3PgioQVCTPwZew32ib7FvsxuNf6P
	 hKZ9ERi1pRiNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C5AACD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 14:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176330285358.29563.2636791152012539618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb25c563b65d3e23e23efbf6b1aed9ed08927c58c8aa4bf3acdc6d0aaac3d124
Date: Sun, 16 Nov 2025 14:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763302853
