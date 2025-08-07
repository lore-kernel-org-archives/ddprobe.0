Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F3BC23C50C
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 13:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754573994; cv=none; b=AiIphYSqs5oDNxY7XnRYypNP8eswx3RzegDq1e5h0ge8eC5ZC5CJE4sONIGK9FDWA9mvd8yRplCOz+QQbGoJHY/yp0w0N48D9iZ9Bkke3zW9wjqkvGzQDK8q6hJvfivR+vhpRiUnGsA9JYox3lPEFAz7JoBcR2hbdmk0yRnTALY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754573994; c=relaxed/simple;
	bh=FI1V9xExXtmt1NMqJdz+XCGQfxIt73Diwhfvkli1uoM=;
	h=To:Subject:From:Message-Id:Date; b=eal0BK6OFe5itp1M1xU2uwQQN7UYoQltfgwTAi2Cy2DqQTZkfpEh5GdFrBF2QUz/3Y/YOdl/bBp6hrJL+BTgamOx5wUthXzKQLaOgluuGIs7t56Okb6HBOBL3hf1laFX/tDw4yxNvZTOhlfP/tWWVkMXmbEopzYLshs1N01LEhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GIIpcj1Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GIIpcj1Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5CFAC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754573993;
	bh=FI1V9xExXtmt1NMqJdz+XCGQfxIt73Diwhfvkli1uoM=;
	h=To:Subject:From:Date:From;
	b=GIIpcj1Qw92dvYCht0pxrIJ48/MJgy7LIc87b98uhfh+NTQzB3GToxeEv/mqlu2q2
	 jg4HyHeZXoJzRqHQjQXiNfyppBGEsbMntb9B4t46Sn8LmYdQinU5ManRSyeneaaz4w
	 xlCm43G3wuqgxG2k62xKRTBplbzbRONjBm8Z0PW3PlC5UECs08VZVkMnSX4jJb/meZ
	 xQZ4xNEAFvF/nL4SzS1p8o4CAIoB6hlb9h+KZq1hh99jnEeJhyD4F+nAJz43RHf5DS
	 kq7PdLBEB7vFjtnAc4qNgkwRt5RQtwkvvrCQoHqyDXKmmFNcXlqfEm1iyxD3zRBm7l
	 9JaFXISJdobbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A82C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175457399369.28577.5799874607187992198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fe024a814fc84ce012159094c821a386fb6f459e4a2e95b8baa9e2dd15461f9
Date: Thu, 07 Aug 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754573993
