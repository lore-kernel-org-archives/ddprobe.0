Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B02853ED135
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788946234; cv=none; b=BkeXL3jEqooB+O/jmum3L7LUjCIiqqBame139WZcwy5gSiDpar13FJvJ5aW2zwxa1QbrHDAnaxfoY1Jv+2aPpuqVBu9aowFSTQj+6wb901PSf44f2onnstjgTIN0w3dNmeyIVmHlMd3u8C9hyWiPELqSUwelUnUpUQ+eMqGvn6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788946234; c=relaxed/simple;
	bh=pK2dLk1PZmuz7RzoGIbD/DFr/YR7vSvta5jySlMq8nI=;
	h=To:Subject:From:Message-Id:Date; b=UiHoylNECh+o7NPnzOigbjlg7N83EVP8X+dMIZEgVsXhI8KhgXY9G8yj04TGrRX/B1Irt4XTo5hgQRzi7+FU+nYaO9W5PmkyNyPII4ck1oFAHJAy3cN8l7WtX8l3xlFmwd6cHk5IMLDy0U7NWt7kMGcDpqzWMv9NvBGo7kMGVds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cLjY2mj7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cLjY2mj7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCFB8C2BCFB
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788946233;
	bh=pK2dLk1PZmuz7RzoGIbD/DFr/YR7vSvta5jySlMq8nI=;
	h=To:Subject:From:Date:From;
	b=cLjY2mj7EOznla3PgSJniiQTixAKVoWWIIck5MGeJfOmo9gjV+rHxE8ECDmIPq3el
	 CuloPrV1K56MwM6MK+ampszTloKZ7Uzf5sH4IYK1wjHqDzU6taz/XEKoGr6urIcfw/
	 6jC6+H/yaWY8JdFxStrb/H7l8sPhH9MaEWCwhkEAi9kkfJiuqZPnP5zUJ5FsorKwCP
	 /7F3vxmXiht0oAZulmYziScXNPivGacEenmGD9hA+yG+DqnvovT1mQghmX9+FPL9vf
	 +DiXUZKQr7FVIerkhXdvK5NjMIR3A77CHGc8I2QICxaXhJSNHrvqrfDo2zIaIpm/G1
	 7bWcNXL4twalg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3B3C79F8C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178894623368.14508.5333373002466764397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fee4d8d57ac04ae8d1ce5cce090d0cc82de102d08e735867dae12b9bd4438bc
Date: Wed, 09 Sep 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788946233
