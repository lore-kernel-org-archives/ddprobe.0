Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448CD3612D
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722983154; cv=none; b=eF2m56vov/saUCvPv6BFGBA1s3zLSVW1ZsEFLd/Q27nyiKNRXJ7uzDTTF4O9Bxofd9Mims9nN2u+R+yvh/GgzqoWZPdX3kpTpdM1KovZIwW9cUPWzOD46E3qP9oKIQdEJwc5T7XHd1cY9R2RpH86NHvlLv4+NohzuwKT5446bO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722983154; c=relaxed/simple;
	bh=m/WT5jsxRQhwzN6CoyfFBK4mlwi+1v1UL9FSDhZIaeU=;
	h=To:Subject:From:Message-Id:Date; b=ZPKveWeWIYapkOhYoA9vvk+rsOd4TMECYCpvgBlwLfUVvI+uLAgWP8VQb4IcpcgB0mgET1aqA9rxD0ZuJMc5l/wP8esbmQwy2hguZKtITaoZOLukiOqCtFV3NAK3p46kldrdebgQ2Ka4/pq7cpAugkwGBn7MhmMe7mCARjzZh74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s39Dz4nw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s39Dz4nw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1711C4AF09
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722983153;
	bh=m/WT5jsxRQhwzN6CoyfFBK4mlwi+1v1UL9FSDhZIaeU=;
	h=To:Subject:From:Date:From;
	b=s39Dz4nw0KQpVw6bm0cvSnYxXzPQEmUZ26i1P2T5VdHi8R9KVfOTinTSBL/s513cB
	 JHL+yDQyLhd9WxHmQYG73zs6Etb00HnqSy+nQie90QX8XhRUlDwAvKg+BMQB0/SRO/
	 Fg4EVYwOH2CPiXTgi3BrCBn+0NZ94EpOeQOVe/XW0Xo9a2mKNRfe0MAN7XD7moCUK8
	 fY6/mfWKVW0dvQn1wjdbrF4qu3BwHbMl5/Eix+hnu0t0R6vbK5vmxQ+aOnmwm2b+Rc
	 rLfndWN7O1BAfWUCAAoMPe9EIMPcIQybCgfVwtLTah0EYePW7VWyRYeV0mMdsPe4YL
	 cCA1u/AqvL/Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88F9C49EA1
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172298315366.7166.3895116069550718849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b77aec8088556ba084b4930b3225ab8af74592a28b60f0b39e83e785263434ae
Date: Tue, 06 Aug 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722983153
