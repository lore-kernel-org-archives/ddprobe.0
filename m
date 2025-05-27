Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369C6194A67
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748365196; cv=none; b=WM4Hku82y0CYZvEbfURDUsXq+5yjev6gsYoWPHoeiyugg20MOLijH0FVg/5vPOjQDnN9HxXanOv0qosX/+L0ZN4sLiwzgFJ2RQSHW6lX94IWO4J34A4z4gR+Z9ez0wl8FiPTBP1YRRQJLpckQm1Mzz6BVnakUl3qaTDNA0RwSCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748365196; c=relaxed/simple;
	bh=1EiBSHp4TXjS5MsKOGy62L4loS9PcazZ0oF8By7ftFs=;
	h=To:Subject:From:Message-Id:Date; b=mYPILKCU1g0inc+NR48T8u6GWBLvW9xdBb4Is/Y/3jiTtxhDMAuW0Gf7IVjAPMw+1Po5I9xrLiiJ2+cGSIEZZa3aXvROEXiQrMhMnOprBx4pCM7ViUqSlsARz+xCe2YdnRea2ugTKEfgCW8wAu/oZi7YIrTIiP9HAfE7hxBbE18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSUdVwe3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSUdVwe3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEEBC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748365193;
	bh=1EiBSHp4TXjS5MsKOGy62L4loS9PcazZ0oF8By7ftFs=;
	h=To:Subject:From:Date:From;
	b=cSUdVwe3P0t1p/G873s1XUa5hRlqIpllokoTTEc3Kt3tA3Hso2dOo28Rh2sAsJcsV
	 kahtSmjUnP+9P7oHHFS0t1JDBY6AXm/7p/BzVFuE99YDzx+cs1padAEzXoUzBVUYKg
	 US3Q+m0vrOkdrWO4eLM+cvGi+8oyqKMesPOdWnSYiG6ucfdQNsTjhI6L7ODjLCKxlP
	 s3lBE+8xvtMXXeGJqdq30Ml3rNxk9kv2eI7DHXTWlWlZY0d8kA+eWvsQd6FhVy6sdm
	 wOIMEYwqYACe6CozXu/I9BSLxEt8QWvLkz9gojq7ckQ6Mb6eVh/KodUMfkuvFGXhT0
	 3QdL7sjRCTVvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F084C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174836519357.13317.14061828118164944662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2de6b3411c29f9eb1ea02296bcb58fc98a8693ecaea869abb329d0ed2f93b21
Date: Tue, 27 May 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748365193
