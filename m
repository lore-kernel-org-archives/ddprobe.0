Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC8E36D50D
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 17:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764522174; cv=none; b=PbNkNm9vi1C5dbcMnEJ/yoAwqecMvrM5YCkRMSCGShXeTRhuX/DwhmPlfv/IURbxVM6cLPiJxM2Ny72DFQq9CuxjMqzo6B+3R3Oge5lXR9/03zjUrYA0b/1v5yqPHxbuX57/FAdRwJ9gcOXpz3kb3nMZr8anZGUq09acJTO8+eA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764522174; c=relaxed/simple;
	bh=WJFCWYp7iTvqqHWC9VCLNDHwJhWmJ8wKEMKxCZiN9cs=;
	h=To:Subject:From:Message-Id:Date; b=Sk9cl5P3ETc97NCFoYKsi8DMiz3xewBM9rk6AkRxz7YbLh9w4WbuBc1Xit+W9i3JD114ob333hawkrfjsePoRJCX8UubXLx3+QMXKGVBkLwCB9e/j9msG+Reudx3ztOUIxDu8Fk0+6Dv6HvqXpRZ0Ta63N0ajg87uGtp21+pzyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QHeb431z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QHeb431z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD74FC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 17:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764522173;
	bh=WJFCWYp7iTvqqHWC9VCLNDHwJhWmJ8wKEMKxCZiN9cs=;
	h=To:Subject:From:Date:From;
	b=QHeb431zPb3mvdIzFEgqq2NrhNM3QMiQVVs+gFfFjhdduJWVyU5+vhrTOoxwkSxKM
	 2DvFHzZBD4V4URKxGcH7ULd2pGusvQ7YaDw3CwPdb/MnpXKeOzOv4ekbHRuVtzZDxv
	 WUPvBV69wCNSo29WU8Lk+YZPRPWgKXKpS6ZukwYyITpJNE07TF6MyyOKl0kKT4UkBW
	 noTppqT+CfqJvfPiWMLFKPkjV7o8ouXYHySGmX723/Jhc02raddbhyhs0Ha2fvqgvB
	 Vsbv/qxXDRmN0KuM5fMDjJHRT3UHQh84V6ZlmCYefoAIhJwIUtAlimphkVPisSl8be
	 RN2UbWY8y67Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 992ECCFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 17:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176452217359.28963.10167725821251068485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3021a316160da6c14bcb950f5e41c671abe20720e9fa2be368d3e83b189ab940
Date: Sun, 30 Nov 2025 17:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764522173
