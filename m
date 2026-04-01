Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3D52D7DD7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 23:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775087734; cv=none; b=nzavj+od9fwzyUfzVom5iliwqAeg1MU4FC+xzweusqPLIOPctSfWHe/dWhZBKjEazPwg1veO8P+X2srjpo6hQLAi4dPd8Z+56+3IhVfKuXeaILmrvAsfrIYT5cSGW967+kwbHOyK5OB9GEb5Ay4xpQMZYIbH1BkdIzjKRjVQ/to=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775087734; c=relaxed/simple;
	bh=JxUc9iygOdIJRp81rrXS/+xejQRtVbdE5Mbqa6K9yrA=;
	h=To:Subject:From:Message-Id:Date; b=baIwqCZlkFs4q3KejHb+nC/izcqTBCqmwIi57X06M3OyQ4+o3iRFnAvk+RxSDD1EKIrNjyqCRRDVc+2s7tLrF5xKrzg5hehQ2CZHuRJGA4JzGq3ZLPZTgDfD6iZiBrO+uNaqcXhMhxT9tNL9RxRI9Ypw1af8bglJsylv6A5DoOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KF9D8joV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KF9D8joV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDA82C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 23:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775087733;
	bh=JxUc9iygOdIJRp81rrXS/+xejQRtVbdE5Mbqa6K9yrA=;
	h=To:Subject:From:Date:From;
	b=KF9D8joVSDXk346f4r/GPFUp7Fo+8OcPbSqN7FV66PNu+cJtLmekvGInUaPVzMoLx
	 GLNqmOwo3QH8Ra1RRsIj3AdGRhZEToJk1h6CNfNN3/QCWbKoKfEm1VlEnUrbHxbB11
	 ovJybHQamn8Y/f+iQeRdE1V9L782LcuEzWx/hbwxyStOWvPQmSQ9/YSdv2xBcTjqvx
	 Gm1SZKOhffMLM/OcYWkJ5b8azpXU3DUcmqNnTufD5GIUm0PLbOWC8nBaukaWeSBtAP
	 XcjJTpWzbOWAHvzcFkKzxTGG0cAkgfmrU/8Zsw8aVG+mfJb7n5ihJnlNg/O/bUsOpm
	 V3c6tkBCj+ggA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB18B1112244
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 23:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177508773369.6642.8211683456736084657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb6413341b9380cb80f36a4dae375575f0e091b63c9e7e549a54e38228cb388c
Date: Wed, 01 Apr 2026 23:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775087733
