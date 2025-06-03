Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0D1819
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748909394; cv=none; b=orVx9fiwiIRx5wiNhEyFEBbYdKOIDAi/KZKS2d2F+x+vwok2UUpw3SENe42YQoSYzFg6l0u2SZtS5cYbH8h1lI0LxEUr8UVrzjTvEsOj1VzOsp5m9ZxSw3MnkWWs4XPqz0chnqG62kN4xAx4joGxkcGxFSf3Y2LdyZFhsa9u8M8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748909394; c=relaxed/simple;
	bh=HLvR6MIH8ZHimfzO6jHLZ6tX9k3lGquJGn03QwxjrbE=;
	h=To:Subject:From:Message-Id:Date; b=sriA2fYWp2D9X5lzzOhKAX8mIU9A9sMe1PZqILO6ObdLjch0bxQ2DIekOAhyZ8J59f8YG/TviNMttQd10wujI1UBHACvKrDczvQwx0lOue8Ojm4r2XUraHd6p5poLoTtvr/y+VmWCwNSy7q+c9JJAy9XWohW5+Qcq/fYHkG2o3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JxbT+T5F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JxbT+T5F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D78C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748909393;
	bh=HLvR6MIH8ZHimfzO6jHLZ6tX9k3lGquJGn03QwxjrbE=;
	h=To:Subject:From:Date:From;
	b=JxbT+T5F1P/Wk6YQjpBYI1leMY6wdyDy03tnxGp6090kBxUUkDGYmGcHEZuA3NBAS
	 Q7eUlkBwxcoh1u4+qr57Wk7B7XxFothUmZ94hPJgyowDME8oxjayE+Y02iut6pRn/j
	 LV+oT4QU795Nxt2Vb8+qvuywhM13Zv9Q8E70IGPPZ14PcRWzaBSb0JyJZN4mxGw8OZ
	 NaN6u3+UAsHlwKJxOoJFL/J7EAOS0loGqMrDYQgBICEfrmeOkBu35Ia6bMDCOJdYFy
	 eOA18vrpknFSm/aNv5igEmQC6gX1yPanKsrPbBhieg760j5N99py4Zn2bPUg7UCQPw
	 UQqz0f+a9s3Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4C4C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174890939357.32163.17244324925327943620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99899697ac27847f089c1cc8e5e5039a37f363c87b80c206cada9d1273528315
Date: Tue, 03 Jun 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748909393
