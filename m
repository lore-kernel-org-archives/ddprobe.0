Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2EA79CC
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724000754; cv=none; b=GnicXnKT0aOygHkAA9gVxvtA3zUrEJsmi/g/eRZxf8LJys6NRYy8tgGoRgYFPEk2Jbj0U2HET+Nl8+wHa4FqqDSG18vymmlXi9RoRT0tH1vgD8EiaC16w3BjDPBJsPVQRtL/BYggFwcptSyStJvlUst2NSaGbc3spSCEj1vHT4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724000754; c=relaxed/simple;
	bh=k1qFRfCvKNYBKo9y4mazD31us2e3W9krpVo1FM+LI00=;
	h=To:Subject:From:Message-Id:Date; b=lHbBlZvHUelFPLIDO+SE6vqcaMJG+k7h+FL5isRrBBE0Y+9smQyycDnXcr9FKcHMtXrxtfjPbsxbDXhOfZqO4iPekiGVh69Dpqh/dQSbU9tsU6Ku9aK2ezPYuJO3bsztj51OuvnJG3U5hANnxJdGbBMY3NK55B5jLqNaK8IATP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upgFuZj6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upgFuZj6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D0BC32786
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724000753;
	bh=k1qFRfCvKNYBKo9y4mazD31us2e3W9krpVo1FM+LI00=;
	h=To:Subject:From:Date:From;
	b=upgFuZj6YeZOKMsYfmqY8pCVkVZPgxXPKkKK9pv7Dp9K5uidZI5WKHkLhMemKObHB
	 35E+SR8f4MgT4EAfAonYObG+MihIJdD1KNJE2Z+IrocnKjJ1Olw9n9Krb/0BgYwyG1
	 IeZZUq+a2GHGNoMwcx8JIiUOmwYsdUhag/PpOErX4ft5xs/ICdAyhzDvBb8arWN2+A
	 788VLsTHdykVLO/Kn59pcy8Y6b5n26Dth5opo39T4ZCEPMdYfI8MP0sRXACJqeKwX7
	 O6qredgdQtzwTG4HvM2evBpG1rLsOo76KjghjNSu/ttBpvvANcHVL3MEc66LjwWaUI
	 l0/BBoDZ9jViQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CD90C52D7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172400075360.23873.8370839790092204084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4266f24bca28e232ec4445cff9e55b2b76805834c492bed9115976a1428b906e
Date: Sun, 18 Aug 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724000753
