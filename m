Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380278462
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761805194; cv=none; b=UN+iHT6SzdqOSL4Qku98IiTIFH2YtMq9WUE8tyHnS88k0qVyy/rZu/Y2s0MDvZMKq+2EDMOgNBXdV4GsbLWtBklQV+/Po6Neee51Mu6TIQajq84lqZjPJ3+vp2Ugp2/ojmmnhx1cp533BY+mm324EmKH6/Q3Q/8L1VsS5xbAkVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761805194; c=relaxed/simple;
	bh=lCNWKF97wFKE1zkqnKHd65CVq/DcXcuNlNWP1V3YIkw=;
	h=To:Subject:From:Message-Id:Date; b=PFZVKNDlcmf1mS6dDYgH+vPyQ+Fu3CoIKACDarqCoWRlIyzcZ7QWWzUk6Jvua934m8NRBvbHm/nk1EiFBg/e+ymovJmWwUzO7fzOidKZkGFJxFbz75pgBXXEbQFkuAutlNCq6Zl1Zs8TQrwIRmDgQ3TdP08672jNcegZvWDN5Vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KbZMMjzn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KbZMMjzn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CE3C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761805193;
	bh=lCNWKF97wFKE1zkqnKHd65CVq/DcXcuNlNWP1V3YIkw=;
	h=To:Subject:From:Date:From;
	b=KbZMMjznnDZBM1MQ5ooSx7iT2CEmOjBkWptTA2hhe/HzjhbpHMgyzuRcaUaZrNxb2
	 5nIYzdza1E7LAZhLrZeiKYvFBjNfzOZ9LqTC9/Mg/f7/dky4L9aDgx5/OdkddrVyJ7
	 vR3VcKPWuhjUhN5w039U3frJk4QfRHeVOGQE/aZyF0FcgYetys6/RVurfVvps9MMge
	 os7ArB0Wog1RTlJFZ+ho3L94W460nrUBbT2b6Kvgf7uQPmvufOlr9wQnksT01twvFy
	 1ERCAKlvNXd/itQ12Ywv/WUC4QqarTu1DjKd7HKF56ygfPxhlvIwL7DH9jSbEHc2qe
	 qFJPZ4oj1RP4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C2ACCF9EA
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176180519358.29287.13430259885670698330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f268062cb316f649e9ff08e0cd630fb78454e58242d0f9272fce2850286bd53
Date: Thu, 30 Oct 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761805193
