Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4873D134CF
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744577994; cv=none; b=urd7h54uzI9j3xC9mR+kAkzURZeZqBUUeFNRwqdcRgC2G4dqXG2EqlsLpeFzbBGK0RubiIi6OWTFKlWb81HdFStFGRouoio0DiivxeEwI40r14W/6u474nAsG3Epu30FsiK2sIf1gQ1urH+vzjxz4P4g17cPOiiG1Z9+nr8i7tw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744577994; c=relaxed/simple;
	bh=UNl7d0UTOBceDO4s84G/xT758+Z7WScq46bGvO3hB40=;
	h=To:Subject:From:Message-Id:Date; b=jeIhWvfykiB/HtD2YJuVCN8OKzSGKojLtCPMGR9jbPuU7G/aPl+iGCq4BhNnkxN2NozcTri7rDaNSMA7plhuuOvO/YvUgjXNh+gUwu6M97v5qABcG759sTS0zkfzzsvx1wwgkj/l/SFvRwHEDQBzP3ebUP2d2DC8hbVuPRzYGtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UWJYS5LD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UWJYS5LD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF679C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744577993;
	bh=UNl7d0UTOBceDO4s84G/xT758+Z7WScq46bGvO3hB40=;
	h=To:Subject:From:Date:From;
	b=UWJYS5LD5zNg74p8PgzcGkh8OLJ1NUp9rLEX2EeR6yaH+kXTk5YMVqUShVqGQsZ3n
	 qec/cCN+nH91M/eEDmk4jadFid9oNmTYa1YSJ6wxpk9jx4H5zfNi48/zHT/vvBRVUf
	 PMy7sif5CV9ylGLpoc49xidZPuc/+5yRKcFgn+VCBRkkwZz/HSOUdaDLO7fFs4Dkbv
	 N9rOiY/leCR92kVqKu4eGmUkGnyIr7uqxcJ2kzNrIueSDrG5SQxlm7ZSsO9XMnAYyl
	 wLWMZ+w83dkfLc/75PudWsiVfjc6FMMGldWwxjdoMwXo7L/DXF9MPWsXUpxz1Qu0FW
	 wM/3pa4rMLw2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B530C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174457799360.16481.5905054373922435131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b52db78d2b001dff1e07d60dc3fc6455cfa626d5edeec7f08553cdd7ced60af
Date: Sun, 13 Apr 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744577993
