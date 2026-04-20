Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3212C2E2DFB
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 17:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776706654; cv=none; b=X60q0g6BJ3GMUOhuZmsM1J4n9J9Lf7yp1g0kEbC3inrI84yDruYJhfUUK6gr4kLb4N3zrVtrJ8kwkzOomSzLQOeNY+8WhsCQdhd3PQdKIOK/yVS/bfxAoSx+QYjMJgY9PVqawSMrkM//QP9nzNaQ7XCuLViyslacliBLZ573Wyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776706654; c=relaxed/simple;
	bh=FxWFOJTZU1pB+/Hj03FLr7JOIrLEtUr0I9K3haHcQfU=;
	h=To:Subject:From:Message-Id:Date; b=MXMS6uUm9oLWX7sfUVJtZpjFEuOMm43DK9sU38Jl6RKHYkbLXBV+VBQiDN5ljEIH2FeGv82xokeu4VjQWQHn0rKQSVwP28TDBXjDN1jCLxAF4lbhxoiAY5ajBwVLEZLCM2wSD4jM8DnIyGTQxWxWLsgF+l71KF2apva2jjs3BRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7xrGy4O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7xrGy4O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B1BC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776706653;
	bh=FxWFOJTZU1pB+/Hj03FLr7JOIrLEtUr0I9K3haHcQfU=;
	h=To:Subject:From:Date:From;
	b=a7xrGy4OFEfFp67SZzB1jRIJJWrv2+Lk0Zm4krIyYsmW3x2ldjKZduMQSnYNEGy0Y
	 zoCVNWCNqMucMewPamfkUqjj0ZRoLPf+KyswQQpjYgL+Gpix6RA88BH4PF4yzT/SFW
	 Fp8OCqG8S7+b3G2NqNSGb7Yj3eZTTAI/hRjwSauQDish3FXqNGmf0N09sPFmjLST6s
	 tjNRip7LOiebQ4iMtMVie7NSu4ijZsXXpvEKO+NuJSfLcC+kn7dDMfxBfBhRUx9xPv
	 Q1HyHSz403NN8v8bIrLCne71HKhtT1lIv72OFOK13r5DuQAYOxeOAPfzmbg89AAjwK
	 c/jOpid2caLqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1141F5A8A5
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 17:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177670665368.15526.12926526911401468096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89cceccbaade9a105d9340971f84c09aabed25ab0f243650158e53b8d0d4546a
Date: Mon, 20 Apr 2026 17:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776706653
