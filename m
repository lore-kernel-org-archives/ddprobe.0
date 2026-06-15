Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C232AD2C
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 03:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781495794; cv=none; b=K/rrA5CwQhznZLiUELOc6YITkn8OhvABkQsRHnV078c2fe+z0nZ0Qm5rXqFcqL4i7YdbtqWdQg7LKn5lyIlpR29QIORF94xDjuci2oiApetDRy1ySsXYga40YRpGKuhyi/hGCEkxW+sxAlzFlEEQkEBgYkW98rpnz8HJFZI0PD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781495794; c=relaxed/simple;
	bh=w2B893Il5KdPBkaeAOIMbs2hKk4s5S80w2rpXPVRtUw=;
	h=To:Subject:From:Message-Id:Date; b=GCMnjlcWHlAw1C5cOI+q1WqoXbDYnWIrFP43CBB/qV5o797W1Y5VzFLtLj9jdMaMjLvrCSbLcUIhCKdA85s3uZpNS/0QNyxN/ZfbCvNN3KaRRZcq6uVgwiGIBXfGWRxPvEawX/AmKqZNI/+G1XFnf/tmVay2XuxP1wyQVdATJpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ES0I7aiv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ES0I7aiv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA59C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 03:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781495793;
	bh=w2B893Il5KdPBkaeAOIMbs2hKk4s5S80w2rpXPVRtUw=;
	h=To:Subject:From:Date:From;
	b=ES0I7aivkoZo0PrAKtn7+kxWwUlzgexwMhN3Pq4mMJu+yKPLu3UjcQaHX+zSI61O7
	 LTgOvW97j77DtsNguUE7bPH8J9WtywnRyk8P+ChfdECcQ9sKeBwcecZNT/7MaYIyYs
	 oLdM0SATzET0ZgXzoBdqgu1tYUsD1Yu4xg+WD6U/d0cNyA5XNlHpVgqgyYD449T6Dw
	 Q2+GhepdX6U1TU/PP+LfrZM7AF/CC3MJin7/Zw//k6dzlJ6+/iVCqIb44MDPltDB3F
	 0OAX5mOsRA6PqLHDHf6/licZztivqy+djDpBlSNzjN+MeZWwPDWS81p6YSUNZWpix3
	 yLxPVaw/fT3mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB552CD98CE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 03:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178149579369.16477.8104360684492189683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ec078edf830a9f623f3fe76b6ae8197ea6c1a435cb19673ca89a45b1e2122b9
Date: Mon, 15 Jun 2026 03:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781495793
