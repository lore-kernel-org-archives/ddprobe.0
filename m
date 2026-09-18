Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 649095208C0
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789765234; cv=none; b=iS3mKB8KnnfMjdXuCMhUKr6FAwxq0q8mQld9VvkWLaNGl9P71Zj/8g+JxV+NTZ58JDVX53aoqWTOy6/pwK6w0JwkHb2oYIgoFyolhS097lMHAJnQhTnhNtEkPXg7yQrtQZX6xslM/t98QyeIrugruHmpEV0eHirh6F9kr0TWK2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789765234; c=relaxed/simple;
	bh=u3p8iNP6gIqy6Z/Egz1KGWedR204yq0IeeROAxUK2HI=;
	h=To:Subject:From:Message-Id:Date; b=k7HW/B9sTEef7gcFMBiwigVhWRTcRC0vLXWgMXNQD16IId6/DOHqAAtSo4ZpZ3OdNGm6P+FKRnmqUtOgCiUjKpco/4sL3d1858qdRwLjHYKiQAKCBVDwmYRZOTqWFErO3Wg3a6hOLFzrRnCVnWFIGtxytlxSlpE4bi7/BsAXQQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=emjbBVep; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="emjbBVep"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD297C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789765233;
	bh=u3p8iNP6gIqy6Z/Egz1KGWedR204yq0IeeROAxUK2HI=;
	h=To:Subject:From:Date:From;
	b=emjbBVepGbuha3A8Zi3CstOflIfWuFbR6n5G2oNyKU2hSaS+6GlqvIG95suaIHfdr
	 OcVVge0Hkj8djR+tK1nRLi4tU3F7Ee3SqYiztdJF4zx3MQWtfD/ZB3sAx05WnDEfV+
	 PGAvZhyWEVrOeXrWw8Ykn0zv8i8GXjibFAm8UMmRBpnr+KfC1E6aYRo02uXh+pqZsn
	 M0KHtijvbT5to05NwqAoZOJ43AoEZw3QsnJfYONlk/KKlrCnyYVZ8tglF5hTVSPcL5
	 VcYlkKCMh5PQTs6A68UwQJFD54NcGuWpuxxFsaJvYog6fYkVRDq8EMh9vldtdoQqtb
	 FlZ3DUfmqDQFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0608C982D8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178976523368.6610.14990379310811168792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2daed39538be546c5ffeb08e2afc132b2cc4a5a5c650eb6a2788fec3f0647c63
Date: Fri, 18 Sep 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789765233
