Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B0A8635D
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744446594; cv=none; b=o5JizXMzB7DszYVuCzbJGLO25pFtbt0GsVN1c8VNzhKyuQ7zCWhmoRWxwrbajwvYPUMdcCplxQNMdw6HSxndS4rP+li/b/zoqAbbeLBUBsiV1uGco1kjeV/TdEtJs3C9qgtgKaJBpZPrMrAQNhWC7d9eb7VD9zTNwqSqRSKf0D8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744446594; c=relaxed/simple;
	bh=ey1vOaa5lP4LJkG+vONoakpppGqeBY3dQCKKSx1dNIs=;
	h=To:Subject:From:Message-Id:Date; b=K1xKHRA9UY9c6c2tLc08d1RsbP2DBZ18WG6wy5a+s0qQrfxoz0+W/35lnVmOcchiwn9a9cFpRzvUceBkdKeOCCxy+FDO0nMzbh2ayhpCmxTI+jH6QIRTDSlwS0PSsW9jdOmH15596GGnC2HAPp/Sq6HHWZnhfM4gMT+PmQIuFAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hdAiBszI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hdAiBszI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA6EEC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744446593;
	bh=ey1vOaa5lP4LJkG+vONoakpppGqeBY3dQCKKSx1dNIs=;
	h=To:Subject:From:Date:From;
	b=hdAiBszIDVc0YI2x2fh7D6I58hroHmJtp7YXUe/vlz6S6ZoZ/dEQ+H/4XkobYzigR
	 dSxVlr39XUTfJM4OtDWrvfXMADgB5pOzoyx0wttAYMSw/5QwZpk2xC/fHM7XP6cHLU
	 FlYCpSQfzALzkwzG9fJH8IOv4gomx8/R3X5RVYqLsNUb5CcSEgTHHNrN6/pD5h/4sy
	 tR72ENKliuSTmslokh+TmRkKFBfOckVZn2ME3xljTopTT29VymywbhaWKXMQDl0ozw
	 8BdXBKBnsZfh7d0v3EqOfNxbeQ9UzcAc4iNd/HNgcYvkDLvloT5K7psxaHYffcndix
	 HVJLta46MA9jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4FCCC369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174444659365.6775.6580940335098224194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e04d5b63c6099ad27b60dce3899bc1f3ccc2f7d7e49856024cd9ece660247ca
Date: Sat, 12 Apr 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744446593
