Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55EC935C69B
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790575834; cv=none; b=AZqa6Ujt3+PErIUD17qe1TdqfOYgfHVQN7DZXKqh2NRD1aCsM/I1PB3rtcv/dfLfqa3MkekzHRx+fjnp2NuAEOqF7hINYQMae7rv7jA63Alk13yfho/a8X06k4skT9pu3lUAXrnxHWUJpD9JmS/Gj4kn9BTm5/2xDs33U93nIKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790575834; c=relaxed/simple;
	bh=wRk7JGSp9DU5dWB2S8F3F0BrDbARRCiJLaarvqARVas=;
	h=To:Subject:From:Message-Id:Date; b=FbBu8AGGziqBkwrQUueBsoyz3sfE8k17cXVazJUrkl7m9GjluXVFuiL5A1WdYhHVMevfOM1MjAvU+rLhyDDGW+f+ihQCupg1/+0JeDpMKE24K88JL/qC8LCustsVSyPyL2coegTSd6ySOoqAZJFqT6c2bpb3CjqJO9384kCkmCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WktOsHBX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WktOsHBX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFADC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790575833;
	bh=wRk7JGSp9DU5dWB2S8F3F0BrDbARRCiJLaarvqARVas=;
	h=To:Subject:From:Date:From;
	b=WktOsHBXjMh9MLlbFJcenmeruF7VbPe54tr0c+nFZc0WV1xEgLwfOlNGaHACC9Ed8
	 CSyjuuvpGfTNOmOmI4m6lB3kI2clqxMi7JjGLDv4A9AUGcsm5RX4MoTXTHn2E4GExY
	 fRJu1qofS9aoL4u2j2OZAMPnxoq4IzeNFkY/KWDbrPIp2RpUCGZ3IpKeqCsmGusG2m
	 yE8vwWR5f5YNpciVYFvC5RrWUj/XI2e2JymDmz72u9KLxl1qmMAAbqxLv5HUWUFJwx
	 ll0DwDkuf5Z3fKbjFPsLndcgM6H0X0eoAka7nwZIZ2n0Dg/52LQ7RhnsiZpzjRbwKC
	 YZCOQqYCf+UUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB36AC98328
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179057583369.2492.7508753074091417247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcf4579295ab2264cc794104029df7d0371b75dee7ca66d0fe116e5d252321db
Date: Mon, 28 Sep 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790575833
