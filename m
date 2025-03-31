Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBA679C0
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743449394; cv=none; b=Knt+UES+0MGZAxVKV/QJm8eposxuGwdeStZY8KLx1Q0kKA3vsyl5XrOp0flmy2Q6PXDdQPkRutBvE0K+s3/2u/U0YX2hq++UKDRPVsy666nWlQ8gdJCwGRxKTKwF91nbQt5Twu4PcXSms7LxYQsM3ZYs1wWdJLQiSDIpIQjzOj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743449394; c=relaxed/simple;
	bh=2lwmhUvbr57SPHX5cRy4BspgWPnpEPDkphowkfXx1r4=;
	h=To:Subject:From:Message-Id:Date; b=en9dVtS2Lb8CAFs9fB2pnQoc4krxc7tis3Y0GOMr+J3Hh5hWS47fzDpm+GSnChzl1zL1Vg2PftfX3I3BLwtQt+Sv4QFCSt2bqMBKcjDR6A/FRKi6025Jesem+usPPohHPqFkuYyxtYrtlDohE089zDBKcnPrxCnxjhQ9JZS6lPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a58SpOVr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a58SpOVr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C7EC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743449393;
	bh=2lwmhUvbr57SPHX5cRy4BspgWPnpEPDkphowkfXx1r4=;
	h=To:Subject:From:Date:From;
	b=a58SpOVrfG1X7aLcsRNU+m0qJcMExcY9ajYL14m0f3xpDdFe5GxthFNra2Kk0IZgX
	 AjRO+8EdEwl84sWrSatCH6lnpI/h+FCFIFCWBlho/sBKa0YW27rvYqHFoocTDtURmx
	 K0SLvkM2aLEz/PB5Ih3JNrQhaVmIXMKOpxlqVNlNcpkAiRBqFDpOHicp0LIV54f/Aj
	 auCM3VgmRxeo+0pniVETOQgej4xB9JqfWvdKC29VzfyOs3xlT//UZSjjfZxY4vP02q
	 rFjax8PN3uHj0LoEO4K3DSceLMiZYMF9iNuiN8yiDs+LkHhYpez/LeI3WguXE/mCCk
	 JKfVsxQRQStUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADF3C3600B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174344939361.16683.141793400680679994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbb4b8e39a0ba214c5c5d377adc62713567a564ca7b6f86711deebb6d29c8746
Date: Mon, 31 Mar 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743449393
