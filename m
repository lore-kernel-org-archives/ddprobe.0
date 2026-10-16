Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A9B3812DB
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792183234; cv=none; b=r/WByD8dmmDGrSrQE93nVONKvz3hrDtXTjoV22s/S6DCWHClAQM78b9sBs9+i6l2sXPdBCimYhsuDIUORLCzA5J07NiupWJHOKdB+6JK1TQJXrC1MfZB5ElgaPWcdyqAqF3UKM8ViuQ4A7mCpfvKgeMEN85bF30CzngNyln4kps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792183234; c=relaxed/simple;
	bh=uKXWUuSw2zsz72z9q7oLs6Hb7iMG4f5PSw6xZj8KSlU=;
	h=To:Subject:From:Message-Id:Date; b=d5l9CTMJDDRZVplM4g1Ma+kKd0GcxrtPDViezFzK7QdGpc09s7h+iCxyZWN/Btn3E8LYed+az16uZM2WXB0LPPk0Z4de/zobszZIMQPJvGzwcyC4oRxb2ryu16l3Crk+1xwZXcoF32gp3dm8JL9RQmwGI1JF2InKo4BJqN8VXb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AADRz+hE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AADRz+hE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D751FC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792183233;
	bh=uKXWUuSw2zsz72z9q7oLs6Hb7iMG4f5PSw6xZj8KSlU=;
	h=To:Subject:From:Date:From;
	b=AADRz+hE4uWAEbDrWsqaHBrdF8103j7XhA17baReJ2h7Hsh5U70Ygh2rWr2lt4HNg
	 IVeHQZG+HzgNRQrbYWtfQd0Nw1XTiYwbnQVzb3pWunEoZpGMKmYA7NFTn8pdLqcB/g
	 uXCrZhlDbVNFfzGkUImb1jmuup2Cu6MCLxlFJTW1M/8oflf2t019SB0hiIl8KAJenV
	 a+Ky5M59tEhDpb5YFFLkToSlN2U7c3Q8xPk/UHqbgSZvEJlshHJs6S8gBTniZqifXn
	 KEYyBnc/LUsBdrdFbfLz7SSzk5X+J57hJY8CJgY3tIR2rKpD0I2rsjFL7aSs2E/79p
	 1pjZ2Ezwjcmmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AD8CCF2C4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179218323369.4312.12947389787264559524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 942f28abc54621bda75511051bd81c2341921883d122791473a35c3d9df009d8
Date: Fri, 16 Oct 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792183233
