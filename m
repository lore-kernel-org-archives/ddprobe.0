Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4CA3D522F
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 23:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784159314; cv=none; b=u3wPyhiE9R3aXF63wsdBawFjin/M8BqDVjYLPiw0/uwhfAO9Kk3utkkmj/5/6XZjJtukaHvJrfJ5Gqg3ijFWI8fAWSTLCZ+Z3LwzPLXiZSMnZkRBB6rWAHODo6BTD4+BRTjuwgMduUdWF2ahwBF0EeMqTO6weclT61CGqc7MKKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784159314; c=relaxed/simple;
	bh=ZjY6qKtY3VapxP1hMkH1zVJnbNakC3FkHJDSaBixbjs=;
	h=To:Subject:From:Message-Id:Date; b=KIciAZc4L8txGb891WyQrlASHpwbmoy9L2Qp57XryzIruMKxr5o2lgYWqIndi5MfuLmoIXKq0ba5RsAp2ki5AWS3tJV4CKQ10gYv5vM5bkBUPYrjoDPmXQJs00dmo2jnFpjVfFrURz/+lQoqJA2+KaQDhbGM5otIJwTuUgWuB8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fjweFIqn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fjweFIqn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE01BC19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 23:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784159313;
	bh=ZjY6qKtY3VapxP1hMkH1zVJnbNakC3FkHJDSaBixbjs=;
	h=To:Subject:From:Date:From;
	b=fjweFIqngi/ECmomkyBHeDOvaL8FZeJKk4YJ4F4B8tsH1NVl/OC9ayQKntk8EvALX
	 p6t5jUsaVOgjgPa74cFwDmxWCwfjbuhImXkDFb+uob0jtzK6s5rPxRgajqXzfTiWaX
	 mPLUQYX87TCvtJfDER2QSSuQyHmdtNvegljxHWSfz31Vq461WxGrDys1CA3+/vmLvz
	 kq1gTCHLHIS4jZUN05mQhhlSRhq0JT8J/lGw6BISqZ0eK+fEh3G+Fe0Rt2qbn+AjNK
	 GQ2+FHioa0ZKZXbRbVO1yDFmCS49hQyk5X3TAFlY0BoF8PBgHdA3tOv8L8mfjw2FxT
	 +eIBekcKjM+JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA82FC44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 23:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178415931369.315.2656496241782783671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ba65aad80e23ad95d44b0e8e4d19380cb2548e1e8b4da9004e1e4cc12753077
Date: Wed, 15 Jul 2026 23:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784159313
