Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DD329C355
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746493794; cv=none; b=WwxJLfEvv8Btz3LQM264J4aBQSqwSJ3bUtmAhC+JfNOrcZLF5dSHuOjcEg45bJo4EvErbMV70ThOrA6O7sW7MBbXXv7TPf9bwoZrvKndSzYb3dFtSz0P6KbRVJ7tJhv03UzBdMXUJBJbgeFDejOJYh4Zn0sVLOpu2KJPSK65rh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746493794; c=relaxed/simple;
	bh=7tiHd+KBu9rzV3rz9tZQNQXwnNs0zCdXG+fBPu4VFyg=;
	h=To:Subject:From:Message-Id:Date; b=dK6k2PrltPag9nWi4iASsFxPfpGFSfwwf2VEzcRmJ5jZoUTNpcQ/mwrovywsSkLgp6f82UJ8yo1qU8vka1QrG9V9CydKCeD9w12B4o4+dAKD2Sv5kXEFB4DceTDwvcANwFCkU1o3Ng8ehMZDDMJl9Y7808JAm2Kjs2yGh5wMUkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=donWGDQX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="donWGDQX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BCAC4CEEE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746493793;
	bh=7tiHd+KBu9rzV3rz9tZQNQXwnNs0zCdXG+fBPu4VFyg=;
	h=To:Subject:From:Date:From;
	b=donWGDQXaS/yZH6wJiOvChlb4SMDWyNconaaB+C9qv5ZOF9G/VIru06PJ3T4Racf5
	 gxVPPDyo0iFNq5EgH4RiFwYRBNaNqRE6uc6F3PIlngzHK8S/yFH3C3lVLQVtGvc6Sw
	 zOozzML+P38BbUAcJC4Cy2nFu7yOLr9aNSnYdMkp7u3NGVSL3n9auKkiAJAMNX/PG8
	 iGoC/XyIg7IrFktj4R8knP3uScEpmsV7Q2vYFsZiNzUtQMeLc++Rq8PFqtW6nkzwjq
	 ydZ8fW+aRE2/WjTatcOzlWxTclTyLm1B4ryvE+byShRJhY3q40sGBKImX06ETdBylm
	 py/jnbQAm0dGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2DBC3ABBF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174649379357.29628.2627621666311205134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69ff9d167a272012a8aa0a0c10cd9f5ecca18b99c65dac580c80fcea485be36b
Date: Tue, 06 May 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746493793
