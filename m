Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373BC219319
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756078194; cv=none; b=HrmZNuvwSmtV1jW7xhTUy+d85kOfd8sdH8h/mfOh8p/KoqL41oKCkwjwfQIjuIi1WU2y/HadjhOeuk2HaGj09xeKfJzzBIpothU5lVWsa7GIBopnAFmR6QKzMw3NTaCl7GEctXTfurH1wJso9wQIuz8d+WDuzOqLc7obaDykIZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756078194; c=relaxed/simple;
	bh=LOp9CdPscOzDO610/u530bibiMsAFH/v1TOnmhT7HbM=;
	h=To:Subject:From:Message-Id:Date; b=nHT8wIzaEVBVJGpEzUvvtPgpQ138R9ivg9c3G6vVk+r8MLJn/lX+gosEzoSEZSmq7tOCTgKUR2DagvWUU/4pSm+k7uuKl7hAyETrnNFJmL8fCLOrDeRnhKPaZw5m3AxUjj4u6k7ud5h69SU5qBYRB8WNuOSZpclnF0rX16a4+cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6a7VHeI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6a7VHeI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19B4C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756078193;
	bh=LOp9CdPscOzDO610/u530bibiMsAFH/v1TOnmhT7HbM=;
	h=To:Subject:From:Date:From;
	b=l6a7VHeIoQZmMxNFUd3p5PKv1NNZcVSa790iRDX32kBCiliMnW/Rq+hWkNpdMNV3D
	 oYenPis0pmIsNkw0lJiToyDx1d4S6tal+WVSPSfEc2iWXS1CYYbMhxRW4KuO+7e3dr
	 aPnzkjgaKBnipuKcqHWJLlhScxKJDK6Nr7a0zJWqRR9v9Rk6S74wPUjo89OJSkUmsT
	 t+wxeDdDgwUxeNXHJfYX/bhd+onhUUqsdfs3JDtAGZ9yTmWpEQJaRw7mfDu5VrpvIA
	 tW24tugCF2iJ5u0pM1/NzTAO5v9gnk2o5YsgwgeQFRHO8KK9v5YZRZWZXVDjiThyAV
	 D4Fafa9coYLkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E736CA0FE1
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175607819357.15176.14235325539641359484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a5fdd4cd7b784df8fb6a02ddc516c112b5785486b21d751eb3a7c7541f4a398
Date: Sun, 24 Aug 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756078193
