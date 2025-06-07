Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF1311713
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749265194; cv=none; b=hhX5zmnzLD1CnK5y9iO2NF6F60oiXvY8EHeKD+Jye3ZRoBmrNRMXd64p8JRKqNzEK8S/Rz5mtd/92cw3eTQtUw+HySz4IY7DdnkfKvVT56HgztPDczl0tFXEb1XElgnLy9Y41ZrWah9ViXslY3vvh2/u+Tga8JVtq0iMCA+5ZvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749265194; c=relaxed/simple;
	bh=kcNcMBh/SlaxZ1RGQydIOyIzciTYcGyyt7d2UwzlYa8=;
	h=To:Subject:From:Message-Id:Date; b=ihmCeWYNm3/Y7+xXjYFzTulQIY/LBqbwV/iWGUwN+LBa9q5iUpdC2rzy4/ItGmWf8ThxCui49svElGutcwzp+hVNYHh7BZWfx+zgmXWceXNqkRLhh8Kkf/VBbvIsLupt4x5CkpB0gZT4Ni2W9obxZhJqLqN3yZM6rODyBbCpcMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L+UImV4J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+UImV4J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2126C4CEEB
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749265193;
	bh=kcNcMBh/SlaxZ1RGQydIOyIzciTYcGyyt7d2UwzlYa8=;
	h=To:Subject:From:Date:From;
	b=L+UImV4J6AFTF260FUMMHQk9cG7uRzCHdRv15aD0+xlHYOQT/ptg7S/r1Xh5d9/OS
	 mVhoHIDycf9eycCs9ZCYM9ThVSgO0dBtnxntlJK3XIftDS3Xw4WVB0qRs4O+YD3iRO
	 ss+5vJSDz7l6IJP2e+XZyIi5gyvLRM6GV0KxdACvBz867T1Bj875b+wQB3DKMvKwS4
	 YvY4UtY10ZtC/Yl1OJH8bsLoJWvi+SsSR0uabUErDziTigSoEyMOH6SoOY4NzC1ndt
	 cqtzLzxGtPAIhoRjSqdk2da7sC+WwMdlXokGmaDGK6p8D3sKTXwCtEPvTiO4x0W8H7
	 Zn+p+rnFKnZtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB41C5AD49
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174926519357.3991.916646209798673927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dccf1da5b5c2cb0f2cfcd20bd434542c1bb0c732057d1f1cbfd2c01379c3de99
Date: Sat, 07 Jun 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749265193
