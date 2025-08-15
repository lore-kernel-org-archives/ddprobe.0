Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199C82FF17A
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755255594; cv=none; b=NjHt3XyqiIL8B4buQbcgqHoMQ4U9UHQ4pUivJ4ExJpIW4Bs12ECB3+jvc+Nvz7Qs0XHh7HJOcJ1cEVJzMbyJ3cQb7xStDnA7q5iDlQmI0/SLj4akGbjvVNy7N4xJ8HmcHLvuNdeZg4wcSrA5cTMteObC/im+NpNvt5cK6+7Qpfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755255594; c=relaxed/simple;
	bh=LPB8jBuUBw/zAljhU1jRWRvJ8YVgyXVWY07oOQXKGdc=;
	h=To:Subject:From:Message-Id:Date; b=jj5IGGGJ2wkWAxROEkV8a3NZm/1UxIiUDFi5ZlnHGyoG/BexKEc04wtNLD001gWEc6Mijo1/VuiNhQE96XwT/PImBEkayIB1cKZZIM6qIvwRvP4p9OEwRMlL+5YJvOhiviOjWhTNmuW3ueJjkdrMgTolD0KxbHQfmCZr/wX9YIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGdzE5yO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGdzE5yO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30C5C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755255593;
	bh=LPB8jBuUBw/zAljhU1jRWRvJ8YVgyXVWY07oOQXKGdc=;
	h=To:Subject:From:Date:From;
	b=bGdzE5yOwZn4QM+dzKvxCbrdF5TTCqcbTvz3dALfuD8qQNPa0o2x0NidjGt96zM8P
	 rGqdw3PQauK8MD0w7aEy82+KrL0Ic/DK/ehiW/XW11n2bHEVxR5xPQwLZQALmQvZe+
	 Yv6Lx6TLw/DckcCIEGJTGlRm5tZAhRsmAs9gu2DAq0nGCJifSTlFmXYlRx+A3IFhz0
	 eOeOIUP2qSxRHEgBjAW+4oDlRVO8MHXPmztdqzptS3d8coQGFuvfuXDZrOHqKxMpEF
	 4IjMWFnmC+32Iy7MwhQAKss1rH67wPAv+JhKBWUvAMfQPC+2vyU8tmPBiPCTh0Ldkq
	 u7UE/YKI0BWdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F07CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175525559358.10644.12919485904413093624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a8dd5dbf8117c31a4f6da2818c86ba7111eb9603e48b9b744cef090b8189a87
Date: Fri, 15 Aug 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755255593
