Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF6718C018
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724156754; cv=none; b=LnrCcAWZs3U+2BuS/GxfbLDeJTv+Qsm8s9MOgt2bKXA61cWIFZP6uKm1X6i9Q9Iw+mzXy42nsoAKO7hViPVDQJ+hsTP5BnsMLtJqhVNTHPDzDDPpL+CFtCL3+45C2Zc9xq3xq9AlhnGvdbWmB3xZ8nFdNuRzyiVeHRLbvzg7nTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724156754; c=relaxed/simple;
	bh=q4DxQtKywkVob0Y2meU9pYk5oLisw9kd9/Ble4kh87A=;
	h=To:Subject:From:Message-Id:Date; b=O5cxfuwAFZ+j/p3n+KVr6REMqeVAvyp7vFKkKNYSnjQVHnGMY8q+UkfVQ0utC4sUqKcSErCFz/2L50AQo2wVjQEHwDqutoYMh+2PnvEpe84f+/L5rDVxz9FS5/yhaahvVxUv47jwNmMkPMt7qlvy7cUhKytHFkgT8EGfK6TIkaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBWxOgXg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBWxOgXg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4A2BC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724156753;
	bh=q4DxQtKywkVob0Y2meU9pYk5oLisw9kd9/Ble4kh87A=;
	h=To:Subject:From:Date:From;
	b=PBWxOgXg/lOfUZXRWMsCmoBSpe9eYTLMA/MXCp7bY3pxkYp2LaOyD7va0Tdm6U3Cu
	 hn+uS3o4DDju6m0pKA8E+MdjtzdO6exxQGiM0LJYVQATQRew19QYLXvqvNHg90x1gy
	 GVgCahKlyE5QuzbWqMwxL8d262flrYMuJoCP7dqGDdydkOR8hV57AO6ZUAXWdTJ24U
	 V5PfQgpasrfgcL5P8jdwlqDn3wWOLVu/TFsMgQet9VH75JVUJIHhDth6N+aNwzogCx
	 Uir7ohHaddgzrYF/XzOD01YKZ/PgsPk6U7iIBFKof4uALVyZJpEsv3ceU2rJxAZgaJ
	 OyOJzUM2mZD6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970D1C531DC
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172415675361.23239.12742316496401364481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abc909865577d55cc2a520cac73f7ec3f933167d449dbedcdd6a5684ccf0ceec
Date: Tue, 20 Aug 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724156753
