Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40EDEDDBC
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721554554; cv=none; b=Hk4o5Z7/I2A9HfL7HlhWNS2qIh613/T9aX+QsQYKuVopoMdiSbCaJUzuBbouF28zspwD4Z+4/s5lM8dxkePJxbCcVuvCJGKTGmu/mO9s0/Q2hfwrq4Dv/yubZH6dmW2Q6+jbeQPC997uz7mjXYcjGzMfItLaAHgS3U/aAxoIdGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721554554; c=relaxed/simple;
	bh=Kg9tNzeO1TIYwAFeWG7EErdswmVz55aivbzqidHmmKg=;
	h=To:Subject:From:Message-Id:Date; b=Hg78Fw4Iz959nwhg0K88tHRm/y5jW2K1lyN/J8YJabr2zgrP+9aHWIRbkpOVC4Vl5ElhZfe1B5PgiCGxKMOCvMyPWjQn4qtMUJw1QGhXY0bCGCY84a5tljU/PBhxohkkMoqCOUyC1sxOS/fEDkCnLIrGCQC9/bShjYKgnWYBLf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yst4UPo1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yst4UPo1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6329C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721554553;
	bh=Kg9tNzeO1TIYwAFeWG7EErdswmVz55aivbzqidHmmKg=;
	h=To:Subject:From:Date:From;
	b=Yst4UPo1n00E5wQzSEfK2nwUwQU1hDXKS4lHYYX6wj707Ex2uoTzFxiFGF5DZ+RYo
	 63WlRCCSt8ZVJB86HVZu0ZYWdEcSL+tRGBlIVlq+mhBz6uNl2SPF1i6sVXQjT/WNDG
	 uKnkTvzmBzDYpOrCZXad+iWTizW3Bw9i7oWUGWvSQxnJXq0rSuj6w200pq7fJPfOQC
	 81x5LEilmsdQa3DaHHYWK49tBMuKHbjTo7k4BCeBGoP9iKCFZNOe7viUsOZLh58UIy
	 mDj3ixpmBOyG96jo4v9ee+4q0U0efaIog53/JBcpobJfgWAaYDs3OCjYhwI+WZ1+kB
	 6ZLglENSshasg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA92BC3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172155455363.24587.9223256969695146455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2816e5d95da6febf53d094ef5aab9ee46b9e963f32e0931a6e9e07c5d00f95c9
Date: Sun, 21 Jul 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721554553
