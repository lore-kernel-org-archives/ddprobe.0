Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 756541CAAE
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 23:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715557943; cv=none; b=SfWP+UAU1TezPwx7mxl/AYecGfQQWzA4jOPVKydOddcyHMNuNhufX+JXLdDyXlBW4p/phJyodPXBLWXLALlgExxMfX/jMjqVpudqAeeMRXG/BVq+OBfwwHbX7hs56HyuayYbv2DdqOdPTUdEw9O4HbPiRiNmFq/3Kwm4g5xfxTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715557943; c=relaxed/simple;
	bh=x9l+E4TjCtE0P0yLCEeR9KoHB4tv9T1HOO0KiMz+61Q=;
	h=To:Subject:From:Message-Id:Date; b=LEniOihGjcnLm/bHlcNBFYfGjQbQtc40yo0Ca4Z8ASHBA4aIePY6QLwFX3P+LKfq8W+36ocjlS5CsNYHtQwjpODxp7dLfZf/pAagHFdlD1OLni63oM2FFmv1kCUDgB8HntX8LUeoTsSlEZChQwsGi+JXGhJVSrg1DnZWarQUyYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uG0Ef8O9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uG0Ef8O9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F17D1C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 23:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715557943;
	bh=x9l+E4TjCtE0P0yLCEeR9KoHB4tv9T1HOO0KiMz+61Q=;
	h=To:Subject:From:Date:From;
	b=uG0Ef8O9J+7wG5vcDGogF1s819ve3iPzGgX/W5kibW/A1I3pz33cS256C+qy6bexM
	 6PjPywcr8eIPKamhBhXH9BJ0diAZ7LDFBTncRllNRA+UrTE4ci3GE7OA1/Tc/Ktwfy
	 OJbqY16b1xBrNsQNFHEngU7/C+cN+ISBAUA623YC7Otki6cQPCjQBQkrswhNIsUfqQ
	 HgSq+a2F6Md+6zCBIE4A42rJibSi8IgNux9X+bUKyr1frVLWeg338bpFzHkTSVGnel
	 7yD8jeRx0tuEfBiCLclhrILr+gsr0G5FRPXRELfBMVV4d2IZeM1eFK4aEPsw63YvGF
	 m7P4J8goZDBEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D16A3C25B4F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 23:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171555794281.5973.16033112529035349888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f83073475e5b6a131d2993dbf7581e7022f00b7797749c367d5118711b64821
Date: Sun, 12 May 2024 23:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715557942
