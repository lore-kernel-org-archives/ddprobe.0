Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D13B3B3C0E
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 10:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783678714; cv=none; b=mBA9ryWaDvZwbxAVyderBM3LC0XnAq4Z/ToI4tCmjXxG6K9VJQw5NXkoWordsvoOFs79QreI/DmpsP9Y6Yxu7c9Vo4gIuUOqRn13LPLVTstu3OyURhFpMN2Fd3BuScV97/ZMVfa034aucL8r+6hUR44l+WaJzN/hl5gZOy+0dNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783678714; c=relaxed/simple;
	bh=AMEvN8QccH5IEvXC3L67d3F4q1iEYJeTLrrier9pSfM=;
	h=To:Subject:From:Message-Id:Date; b=oTSioDaBTRWNKXSGJK3LLGImioVy3wkhzqLH9umQ0MbEMahLMPhrFORzHrAFO03iSp96qMDYKDxpc2D5+Q3lQNfRO2SF6FEf7Gz41Mf3YeemgmLcGGGHFpOWNhTnGwAYbnpF4JgB6otVOgJPow5BZnIBr5Rtx8z5yP5WDuiuF3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pr+f2IBS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pr+f2IBS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33FCC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 10:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783678713;
	bh=AMEvN8QccH5IEvXC3L67d3F4q1iEYJeTLrrier9pSfM=;
	h=To:Subject:From:Date:From;
	b=pr+f2IBSzCRlIDV+C4Pg7/tins+x9tQE3oDiMyd6wJ9zeOl1Jggp4ImkZTXWq8Cs3
	 LlWV9f7rUuzH9KktkKlEV5t57l7aMJ+GC+grwNJLzBvjVSHYapTUJRt4QUnqqM+gDz
	 +Vp4Iz0mn4HabqESlSxRZnOUhXIKKVo4nHjiYbFE7qBNH3mtFqoI+oZP89Zjm0zHpd
	 ZptJRXDZxHv+5rMXHKswsgNbjayKrR2U8sxCGTB39Aaqvozk1f4K8O+oAHJRwAgyyh
	 a6JFkQY902rYXxOd+auClxnv2tfSR2ZSO6e2ESzte/49Hm/SCP8lIhr2rOU+gBI+zq
	 zFit+HUus+s2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6A8C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 10:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178367871368.32333.4349007094725438987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61da432c299e9abd6e0edd3d766ec3bc545b5d9b4427e382cfc17b7a3787ed4b
Date: Fri, 10 Jul 2026 10:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783678713
