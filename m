Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49FEC29345F
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745310594; cv=none; b=uFQwD9RMudm3JZCxxRzCGxW8Cl+t71btiNxXPuRW0mafhKjRngQexuqUFFXSDBJb335ASm4iK4yz3r1A4pyzb5rmHwxciSinhSn1xmgkPPaAMkW8ToNHpN7S7I85yxy4I855pJcmg1NXzytvZvUOWTzpkoSwRJxW66xgT8ls5vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745310594; c=relaxed/simple;
	bh=Ub1RtLGOvl9JV3BmLIMjwmfhZbwK0PL10JqU4ec3Pnc=;
	h=To:Subject:From:Message-Id:Date; b=CRWaU9zGrtkjDB4sz+QXkKa4wV+0JI9BKaCwfumR80iJTvgoYW6qEBwmbJ2jaJnBkDkMPWM9EaEWqpy6whWVq2jSSeKGFqt8KsSU5IKPcXZoePCijjfEUcXRo8R7Ctjqe6yQyu/0u5MLEhjRcx19glHbNyOjm43w1pSWZjLRvyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HUZwrf6U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HUZwrf6U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F43C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745310593;
	bh=Ub1RtLGOvl9JV3BmLIMjwmfhZbwK0PL10JqU4ec3Pnc=;
	h=To:Subject:From:Date:From;
	b=HUZwrf6UOYFsW6qq00veCRSBA4Spz4XfrYxgnbO6WeOKae2kiU5fpPvcl4jAYN2Yc
	 0BKkI8Dr9rVmweycF0upR3jj1B5TEzTiepEuLjyv+O88zxxVqs7ZLkGgA87s6gia3r
	 4BzVknuS6/huLzIJnr4owxCS8mDygiIXqMZYfwBhL2WRGg05a6ia+xA1qOVhpHtGOV
	 grexKQPR7JX5bvmoqCzyHbiB9WAfK6nzHHwbXbZnBJtRiF24IJqwf1StK/ufNo94Qc
	 xMKUMFJE+NDRPJtj1bnR/nAolIvVLE+XCw5p32odV13gyloCJvFc/MvaEW+oGzmMDc
	 yRPhG3qoqL3uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9760AC369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174531059360.24149.13373128059063516507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2df12aaf1b829a31298fa9a1fdf5068dcba408968856a63fdc8ac7598cc3680
Date: Tue, 22 Apr 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745310593
