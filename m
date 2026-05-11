Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E04AACA4E
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 18:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778525433; cv=none; b=k5N5C19hjEiXKyX3FBKnGc9cTWdRw9zI7LXfhRyrSkzgVC8fX1hGgvcWuUwoIZ+ispZoWTZMHfXGm+GdZi8Ob+tUgRuM7OdO5fnAqyGMae7L1hLz9Fqev9HfDXFVIHj2xjCSJ8BgKjGMKkfyV336Ds5Yc//E+rIhJkGGGPhIOoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778525433; c=relaxed/simple;
	bh=cwWXAvbTqtrE/GBrtcUjNJEzg1HeBAnhqkKjsErTSvU=;
	h=To:Subject:From:Message-Id:Date; b=MdK/IAdjkVSuAMRch2vjlBtz0Ifb0x4S5a2OifB/wpAlzZbgt8rp0+xHjTfsXPsmEosn2lDbrdWSVkYjQXgMdE+Ez26iuUC9gGVp8EwB53pEvsm4GH63vgyQTKNBe4188OgZKBIM80Sgmj9neUHjiHrhFWy//w0gQpRPZwg7ITo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lYruuGZ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lYruuGZ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC9C1C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778525433;
	bh=cwWXAvbTqtrE/GBrtcUjNJEzg1HeBAnhqkKjsErTSvU=;
	h=To:Subject:From:Date:From;
	b=lYruuGZ2Dlq44K97GfEhJjMIJG7sRtT8p+Hqea2HJGaMzabO9ztBAWr3eP2dSNO8e
	 2KlUFGaxJGMGPC3EcEGtz2GyqvJH/FEJBkiEz2BXQnv8YDDR4WQct6TD6JZSUExocw
	 16vucLvZ2ciYGfwcWRgagTo2bJ7uKF+wAek35xhTS5PUm+JO4/EQDAfIwgUpmJYprg
	 8jYFWG8mXoGGWXEV+ko6oi69/BlyGbNWVPhsBaLzc8Zi+U9ExlBlWh4eqfyVl+42wq
	 2GNJNSwvVPTcESwhOVCYY4j6JblgIwZayOTwvy9AWH0NmGpCctN9hY6ffJa7ZjaL3B
	 EuCtFNHHGU9kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC132CD4840
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177852543369.3070.2846250286083961491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8a3ca353878bd4fdd95360e92db8072fd83f874e3d92168d92b89cd6241ed82
Date: Mon, 11 May 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778525433
