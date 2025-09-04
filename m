Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 186A1288C2A
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757021994; cv=none; b=np5GIJXLv8LNBif06zwS21AyIi7faVJtJNbECICv/nxHmdmCXbWXeVG0YpcRz54xh2QnJQ3yOp3Fo4zmfnDHvY9OzUvq61v8M+wHS3k+yFKyBUqqfjij5KoXHQ5/AoYm7C3GXn9hyZsCoYlph11v0tmtlBlly1IuUw4UTGqdyEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757021994; c=relaxed/simple;
	bh=RyvrFcZiYjlrzGQCcUo78uAFr+wqf9MDh7V48krsZ8M=;
	h=To:Subject:From:Message-Id:Date; b=hf2X+T+40a6TZNsurHrtqhDzUjISc+dk3856G8NToodv84+Gq4uwbedTZblrOd2vkLCaM4Yx90V8I4IqCjpiSpX1/1pyzTSiN24Bv9ERhq+a9tb0gidIuycT3SbInbjndZjcodV1Vgt0l/+u9yjFRsJxAz7agcXJv9mVNaMogX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/ulJVwL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/ulJVwL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01A4C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757021993;
	bh=RyvrFcZiYjlrzGQCcUo78uAFr+wqf9MDh7V48krsZ8M=;
	h=To:Subject:From:Date:From;
	b=m/ulJVwLcFEBb9bJISg8zMca9kpOMml+otmKztmmhUwrXA4pO6Qt6i+vjiO18ChJw
	 2xonwBmdApmdxHhYkZ8ssICyh8e1+lbVsDFS/ibG6G7d174EvNo3Xtphr1P9Exi2D8
	 esxkMi+dH1nS00mHwZrCvgUGJuH0T2vGIzHLfukrSch0cnTxnyIVgSlGnI/W7Dq+XV
	 2DuN5O1dnG9cD0KOkkZ7gv7giPUw5idA2bGziZHZLbBdFAgZr7RkKP/gts8bFGdOB9
	 WSzn54XyIFS94ttVXtjPYKMCQ07gta4jS97gXeSHXOLx7AHR32ayN7WQhBcN3JrOaa
	 d4jgCKCr3ww9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD20CA1013
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175702199358.6807.8137768192024931123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25b76953a46132e1ea45b8dc8f2cd8e27acb0ad489d44a15cafcd66bc828d7d8
Date: Thu, 04 Sep 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757021993
