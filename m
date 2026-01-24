Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE663EBF33
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769246034; cv=none; b=FDr7VYvtGO8iEccTQox4wYR11OAAN9wXmYkfNm+sckGupzk2r97jqmV6xd6wxO0VxVGISbtViYyBz7YuSgN1EwrrGRK4KzL0JIOGk0Uy0BG9hPqRElH5r0z6iIoV7AQtGaer2DRVMEFz8/DmqOa7dmNHwMI/D5NRJ3BlpV3DFJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769246034; c=relaxed/simple;
	bh=Sq3eCmGgpoMZuPOSsKUFVZ8JozyggXsYbVV/EVu0w0g=;
	h=To:Subject:From:Message-Id:Date; b=sF2gY2CcsYoG2cLp10BsdBHSlmWvO1Uln3tkP2s75Dylh4yg7ervj4iv3sobhMKpk7h3cWmV6w40QddnS6lRMq+HtIQdDepeutwrqewjmpCcdsoNOgJe7ynqo/iqMGk1mYqfRwvZjB6oK+ulE2eK8gpWYn6a3i1EGCMevuYUM0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q29Dndnb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q29Dndnb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F96C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769246033;
	bh=Sq3eCmGgpoMZuPOSsKUFVZ8JozyggXsYbVV/EVu0w0g=;
	h=To:Subject:From:Date:From;
	b=q29Dndnb6UiCk18lfHYKdX+VlYwntp2f73lRUKOu7MsLQRl8tEy0hMSR1478XscX3
	 ee8pDYWHi3NJ3uyKmBaDPABWGiK5Y4ckmnnPMMnQOiozSZ0tdt9JeVKfLdBk4CBRFn
	 b3VIYFb9pXVDK3C2PcdobaFpZRjek9U9HAt7vwBwMHxPEoDmZZCo476RL8I9q84O4S
	 KTMIEbUwxuP5mj+WI4XxHKFY1QEuNY8QvJJkyHUA/qXmrhaXlwtUT4MU6V6csxR9oP
	 xKTVH72SjSOzFk6musdCZefLwDz+MJl+QKL39NZi6Udd6ZFFbYlOXlO/DwWFNZ/J45
	 ZwKojKNsY/N2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B9ED715D9
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176924603358.14349.8773812332124895355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60b320d9cfd1a3d18dad8cc4f67c5db66c01b44e7d7fa2ab49a2b95efc54250a
Date: Sat, 24 Jan 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769246033
