Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D74D3A1E6D
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767654234; cv=none; b=lehz+wggFtJwIjjHnAe3QRV4O5pvFmS0dIXnUL1g8Zowv7yS1J5h7eop8josUuxVmMXRum6OvVPAbX4TtjQLjsPHwcOsRSi15vuQz8eIIbdHEaCrfrUmVfNLd9TLZZITKumVXs02g/AppiySzVOJJBPyBJP8nF+1GtoglNTUFuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767654234; c=relaxed/simple;
	bh=icuDokgtoLo3/vsJQ/pFW8uhr+TEHqn8t2oy+6JQ8lM=;
	h=To:Subject:From:Message-Id:Date; b=BxNXYgRz6XWCAh+1SYtwwGuZpMS11wZhnsaEmlKZoEjduwVBXvJPhx6hcG7Ty3CwibiaHPLOgBEcsUwI36zYyk8tUCErMxO8x2mWp6KK5RW5wlGH/MVEVPmYkVaMrKiuc585tPk75xuZX1zq6Yd+BDZKKljIHdqRWZMRXmFkk7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kwANe1cQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kwANe1cQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E0CC116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767654233;
	bh=icuDokgtoLo3/vsJQ/pFW8uhr+TEHqn8t2oy+6JQ8lM=;
	h=To:Subject:From:Date:From;
	b=kwANe1cQZIC1dcmprtO2TxUozq7UoHBUA1msVH69Ie1kHrwzzgMxIAu968uEMPQTu
	 a0fKJEunJwQgJXAFg0VuWshmfR0o3h0e9Dp2DhJZxzoPBLyysR5NBf7UIYICGmNTG7
	 tZldgTyTdOXGXfBMiyXL79VDJ8r+3lmtBQDJQgW1gXmzx2v+TY8sUBpxWw+uXpmyVD
	 AxRl5/LNCkNoGIUgI2nFXbCZXfoId/hHR/l4ZNcZoP/OqTTJmXmalkOclb5DsuhPVn
	 kUXIyYsOgpysfCzH8oeltjN+yK1RoEmaFFZPgUPJm71PKoeKE+SdhdhXE9EWEpC+q0
	 ilJMu0yp3q9+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953DCCD0422
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176765423358.32405.13232447446696093002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e515bd777610b2d0e071606a74228f7370758ed501f50b689321a5d0f3b3c99
Date: Mon, 05 Jan 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767654233
