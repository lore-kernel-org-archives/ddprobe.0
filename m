Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C28325721
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766039634; cv=none; b=qbwATWaRzSG77g0Ch/agXxvUjZJBhmhGtlF1XiqK9ENvwusFDpOr3PY+jB4ysAWQciTloz12CUIbfz9SG3zeFvqGH7gz0UWNWgIiGax8yWlMXT/EFQTuBu32tK3+rEk28merZqxI9SI9hkz8cTZ3IKvbBAFEk7s0099fY05OlUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766039634; c=relaxed/simple;
	bh=55n+ftuyZ5Ey0RFL9KXMsBDcr3okQrULpqXUptRlj3A=;
	h=To:Subject:From:Message-Id:Date; b=oYVJpJLIH+cf30kSZsDpEkeTXZ8R4smFl1BdFNv8EUFTM1lGox3ljYI68KvKAjGhUa+j+rM264u9zkx/+RmvZyIOsfS7qNzXJkRuaGyUxomyjFJqMEu8zsK5sWvIBni/B+porpiHtLJkSSk/2A5sRdhhapw1/yoM2AqRZzMHgYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YkPRcy+C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YkPRcy+C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FE4C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766039633;
	bh=55n+ftuyZ5Ey0RFL9KXMsBDcr3okQrULpqXUptRlj3A=;
	h=To:Subject:From:Date:From;
	b=YkPRcy+CiNOeawzcRap60F38WL00OY/WQ5jREaJyYOL5pd0gYxprtWLNFh5pxL3D3
	 VEiv4nnkEc7MQqDugG3sOAA1EImDe4J5Mt5z3gIKWA5ZY0LANKgE1a5PDzZE2H2ijR
	 ECi/2lPtZI4tamxDyxJzppnczRONbRIBDylXG4Hveedxh2WdnRogE3xidAcjBZH/Bq
	 dP2Vp1B1gPoqHX9kJ/C5PY2hC1uh+1KZZKkQBavoPPd2OT3OScU2D0fE17zvh38J+I
	 wx3qJAfEbEyuqnCQ0+jHmtrAmNSm1SjcrsdSNCGg4/i4Bjt9ckWMXeA3hDv7sQQuI0
	 zd9Sp/oCeYDEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F98FD68BE2
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176603963358.4650.3887535608268312335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e45f581f0576ce7c9623f63a5a80729b79728d4a98d84adf458509297be89b2
Date: Thu, 18 Dec 2025 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766039633
