Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EAA376BC5
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 22:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778453434; cv=none; b=oFxj6GCFzTaVeWMkbuN2r5/jZ9t3ENV1c/RP/HxBlAUGu4kQv78kvuhou2VtJFZqe7VlCg0voKd/uFsrPP5h4W161gBgzqBcqI8+5Jui6pDrfYcpgAYYTVybmpvQQxdvRkCyu/j+HqA3eXau5KxD9cs/GtsQ2PbbWiQP66uHFLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778453434; c=relaxed/simple;
	bh=Q3rtsQvttCMIoU8NwkmW32yy4n5V0e6Gdg/JG5UkeIs=;
	h=To:Subject:From:Message-Id:Date; b=ICeeQwXY7yEIXaKtne+sfNp1Q8JK7rJfmlRsWogw9TrqCjF79wItHQXB1TsJmzS3OJi2mEPlf/Wnnxv8ZwtWy3qBqiEvA+I2WA92D7orwqHFCDEEuPbK0X9jJ2090PQdu4A4oIsl61wU72Cdd8QCtxMfI53iFpFUd3OoZLRoG08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=miZgdssF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="miZgdssF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCA77C2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778453433;
	bh=Q3rtsQvttCMIoU8NwkmW32yy4n5V0e6Gdg/JG5UkeIs=;
	h=To:Subject:From:Date:From;
	b=miZgdssFE18ScE0DvmlVj9su9uVCVRvuvnd+P5wslVcgpAgG4CQZQKMCT4hClJuxu
	 ycW6he+iCWRWHgz6g1fuF/w1CJn+PW3NYrDg6HBlcB4v1xUeK36joV7t+GYgfD3YpN
	 8JxSWyNFTaDkn4GQaLhiF4CfBRs1tuJ+gsYoRLUysil2exK0w49O/eoYFKz98MaPRM
	 lx6BupCIEQrgYRZz+6c/a3U1RetAJuuu+I7cbCmrvMfR6OCwrF1uvJreeVq2yKVz43
	 qI5BC+So2Jb5IYXsSGJ6GLyIcsrUfusDZuPNUlRgkid5ye8LpdVJ1sF4HcRF222V8+
	 rsFui/o/XS18w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAE9ECD37B2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177845343369.5943.5563937537301737885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc20314405e29c57b132a6564e9805d0fa0461dd93c06854f1fafb098f4d4244
Date: Sun, 10 May 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778453433
