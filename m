Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEC9F126C02
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788737434; cv=none; b=kyoGuJxEOT2ev6tjMaSoRDV9bAwFyeYxNFSbbrzZfxWfJGl/lnTSD3ki2ChiUbnRUf1iuIY6G7Gcj9fdPMXuohY/fPH2bs6fNle+ecaE3qiIY0AOg9+3cVI1YFclMmnD/zIYxpbIkOtv2HmllX4mB8C8I7wiLhNBz+3Yrgi1scs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788737434; c=relaxed/simple;
	bh=ZVvwwuYpfQje7cGg2ET0Gs2t+IXBJCNECqF8F680deo=;
	h=To:Subject:From:Message-Id:Date; b=mz/+4B3Y7/a7y9aGzhdes7ieg4hk+4AAIp0DQkk+YztJZ2VrDQJfXjQAgdcj562Q9OD+0Re6gBF+UhS+Lxi0P1gIWfHfSdVzmof/mom/BnJKrwLPKRZlFK6qFzVo4+FC3ZHt3a6zcdac6V1JuNsM4zTvMzShfmYcXKbQFM4iNUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YMuoUU3Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YMuoUU3Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9FBFC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788737433;
	bh=ZVvwwuYpfQje7cGg2ET0Gs2t+IXBJCNECqF8F680deo=;
	h=To:Subject:From:Date:From;
	b=YMuoUU3Yh+jPDZdacYJNyxSJkv6DRmHwzL5y74TBJexfulAOrQlz3MBnGZl8js7X0
	 FdkjzmmVzE8yBXuon8KTC9YJM2c3msRFT8JQOjdIS4idlMkMGAX3J+fCxYfNEdXcYK
	 G/5IvRdXhDHuvmyDuRo/gl7xeCAuduc4lTVwXQrdIPFy66fhZuseFKhX8CbBgrjYRs
	 mJ12OpgMHIgly5Wvv/hwcwR+LdbC6y34xmOLWAErBZ6oqgsIVU/X/fFqdCYYJgs+LK
	 xQAwAOpsfuOZjBaiJgDVhHBWqUkBfm1UPFjepOzFplTyn+N1fvX1drAVrvZafs0w3L
	 PYjZvMm3Y7sPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5E0DC79F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178873743370.23033.11428534354063923086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 902d7c7db431dd05c5aae6faad686346e00f9f85c60eeab85c6432695e5d8238
Date: Sun, 06 Sep 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788737433
