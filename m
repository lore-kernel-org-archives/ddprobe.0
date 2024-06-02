Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50889803
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 00:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717289123; cv=none; b=iGl5P+y4UAJJZB0ri9yOWCK0Sbb6+M9J25i/leoPhECRyUwVcLGRWMo8EP7wElIqCjWhicnTiuGN7Am6CdrBTkIDUwNk1u7azk4V4DiK5kNtYftZkvBLuOjREcbJs1BFS05v0I7p4Ao+rjno/TU7fiTs5cSZjJrx/h6zpdsxLXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717289123; c=relaxed/simple;
	bh=Bn7Cgnimb/HUaVZo4eNfDTZbK5rAc0nZ5VGzp1ba9Kk=;
	h=To:Subject:From:Message-Id:Date; b=T2Z6Oy3n3bE5usH6Z/mo0PZQUcfQ4vDw3M0ONNt6W10DOL5u8Cz7N/k7Tpg0zhyTam40kHDJ2JLYGEEnt+GeH9+3mhJp67vieW1NTPIREFHiypLNSkNtmfoRBgQhd8MNjRmVawJU9QzEiSfj8w+spcH3kklMfkWn9fwkg/tQsNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R2ySbkcD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2ySbkcD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05FFC32789
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 00:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717289122;
	bh=Bn7Cgnimb/HUaVZo4eNfDTZbK5rAc0nZ5VGzp1ba9Kk=;
	h=To:Subject:From:Date:From;
	b=R2ySbkcDSOJBGf34+6/zzSa3KoKNY0dU2z6oy7EJyGRdJF5VKedhIUrZ1RmA49Otk
	 Sggv66zf0Ok64V1+CmUB8FnKZmB603c6dj0rpUsSB4s9SsvuF64tGZr69/HgURHjp9
	 O4VsaugDk8fOXXUtpX4ktzQCOAdPqPVi+FlpXy2ggDGex8bIVk3sIl4P3nPoNEi6E0
	 3kcYYm84I8vJW5O0BKnTtodTIhcxzYo4nlWG31LE2yoS/RWdwlWQDtttvPhSV4guzZ
	 ZIbyn22r6dA2KjAxODNN1paqEIvKO76p2g8Rshnxy4iP7yRFgub4F41FcuUsb9EHuc
	 kDbh4hfbDqRzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0CC1C25B76
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 00:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171728912278.31934.11335469810389220649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b283d6bab9d107e818c11595065efd68f64463e0b94a2f5e5a826922604b9c2
Date: Sun, 02 Jun 2024 00:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717289122
