Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C33A81FDA83
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744043993; cv=none; b=ukF4HXgHhvX9/+IB8+/CgVgA/xO+ToIQLGV7VyTZXYuaLpcXqZ/vOX83EaZEI3sNtlV+xTShTwjMJwh1qF5VtucX1I6A8stelSue6xuIarViBFM7F9KRK2mYhn+i1c29Y1FZofdDpuMZcTFERvaX/vTXTyIt5l9oHsXzv6ltqQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744043993; c=relaxed/simple;
	bh=s0r4RNqsLU1/Sp63dTeoQztnGfMr4X0UTW/CD3J9g5w=;
	h=To:Subject:From:Message-Id:Date; b=jVPRRKsqMXWZ1eLIy2UhRsJ3r8/uq7kyCLTitwGpl3M6+BSMe/AkR0TSXnb7IJbNhAXUpOxJJzZZMKVecWA+4Y4WINok2kKAvXgI6GUy7CZJsZBQt3NzVpsQtpxr84ZV6b5LV2nvF7b0ZlR4hVtOb8HYUI15xcvg1f1Zo/SUF0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CrMOzcFb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CrMOzcFb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5154C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744043993;
	bh=s0r4RNqsLU1/Sp63dTeoQztnGfMr4X0UTW/CD3J9g5w=;
	h=To:Subject:From:Date:From;
	b=CrMOzcFbms/s2S3CCyaWKBBCPv3x5BVx+0fwWXxTTqpatEGNN8NxcKeKMJkky/E7e
	 sNgCV5o3WJQJxXN9O5JmPAH42dxNzO0Mkz9NW6ZqO3xueMJBEHXr9BEm53o9ARpegm
	 RLiUCl0aJ7SskycAzMNKwCMCfycJNgTFvNynYqEL/5vsA3H+jrRb6eFHJSqOA6S7gg
	 d7nNhYAlcW2U3t95tfKEPcGO0A8okRlZTrIpunLo6wzlqQTRcYcLuJVFavI5Q3ul9Z
	 EI8B3wLtLPsXbu/icntjcKbtOVloMZ194tyjtqeQrMey407wGwSHWSucWzG6mMqogA
	 hznzuSl7czSAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94311C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174404399359.6137.3914256393761249771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7417f25ddd02f5a10a264fa7aca004f51e4527b4dc60cba830a0f834f2dd548f
Date: Mon, 07 Apr 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744043993
