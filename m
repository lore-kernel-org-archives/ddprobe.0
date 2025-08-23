Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD47242D6B
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755952794; cv=none; b=D61XIPTES4mVs3efnsfXbHcpaXqc4oVW3/+406M+68V+ZKzsynlQZN5yFIXQ/AL/L430o+rvrSEi5V4bfnhu69Bq7ucT5ziYJIn+RCuLZE1M56DIZ/uy9UnkdJtnNVVRCfQSVmC/qiEcA3bwoc8CGhuEuShVm5irlf/MjERq73s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755952794; c=relaxed/simple;
	bh=0+oV1wXDj91YJTVykHjLkTwy+i2yXqit5zrJrrPU+lI=;
	h=To:Subject:From:Message-Id:Date; b=iQNWLjQuMssxnIN6uzCYi0hnZBN/vyuy1/dqqsnullB9NaR2BDDDZ+bUld9N7VAqrFRwNFai5WLgdo/wo1F34KOH4UTmY05EqJ/YPCTdwLBVm1aVk4lFu4dT5OvgzYU0vrejgU0CrMMrZrYzMUXTDDc0S0doDmGh53NKQlEjRdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oCER9SKF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oCER9SKF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FC0C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755952793;
	bh=0+oV1wXDj91YJTVykHjLkTwy+i2yXqit5zrJrrPU+lI=;
	h=To:Subject:From:Date:From;
	b=oCER9SKF26GiaV6Qh+9G7FWCdUja+jh0bF3sqS5PNn01EEl/FWVf7IyIEFONDw1IO
	 wCXRQggItjqiI5A4PAWPcwypM5QIr9B+a6Lu9fWtCeUki+J29202yO4h2P74A9SRT7
	 +sDGe5HRBtobRtXHDkw2pYw/pRbRiDoC7V7onJhyNTljVnI393l0ovftVdye3xIA7t
	 Qt1N6WAvwdmCr9rAosmkdZhARynpJgA0G2aFmy8FtwrpQEl91AW5NV1yvpWgLEKL8W
	 8TE2LvKsmP0JdOzT5joEgo8oT8uxDCvqWaMXD3zTODNQRqk1rTlCj6I6kc8GPyFiGu
	 rLOYsyBsCNG7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918F3CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175595279358.23341.10930840137306397841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 473d99421bb057f917af3061676b6ae6792db3f7e5bedc91d8d37fc8fd7b7dbe
Date: Sat, 23 Aug 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755952793
