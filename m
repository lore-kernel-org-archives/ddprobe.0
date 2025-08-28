Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2262698AF
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756349394; cv=none; b=S3fBzhe/XfTgaRFmSgCekQyS2Zm+W4V9leDMpEDWUcPJH2+juvKX/pd+8z5fzOGvZBZ6RUEMRaSM9FqenUijlad3oFzqvYikdm79xBBwb3iJ09mUDAppZL/lwZ2EuM1XaOiuOj168GEb2uafIvWmox3CXF1RnIRiv1HsqP4lwRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756349394; c=relaxed/simple;
	bh=GDmpQz5ewiX1Q+xwwDc2LW1DdHFB8ImtNH0ZJb42AO8=;
	h=To:Subject:From:Message-Id:Date; b=kLWouR3HcXcLECWJTHQwk6VgVZX21Tb+Qo89nnx19baxEcwQPZ334tchx/0VxPXdc8Vxl/ZGSM/WshENey8BJ3loHVPr5u08co7OTSZhhzvERu6nCHuxVV97kyJ1LAKdBt/R79VTRQQq/vIB6dc9B1WOKroLFtOtt0zlR9rGaSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H64kJHp3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H64kJHp3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E902C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756349393;
	bh=GDmpQz5ewiX1Q+xwwDc2LW1DdHFB8ImtNH0ZJb42AO8=;
	h=To:Subject:From:Date:From;
	b=H64kJHp3Mm5o2RrL65pMcK7y0zWv4Gf/KEs1w+lzXhaUN4jKpIusjewbGUC6ZxCwS
	 N0qINi2+23Wo6yOTVrff+2DtIIZxDyOMDx8vKRJ/S+osPCjfQ/zRw9Ll4rQEfnURiF
	 oyQvATA4qvvIsTi5wX6VpVQlcOaRuStbQOOEI0rSyevAYea2rJ85MGmg0eeFqrnUVt
	 IgmIYtKnf2pcPFm1v+LVH+E3uuZ2UUXtzEdJZCGKdCl4rYfwMtwYtaT4S0PmUSrY15
	 83IpscYKsR280T9N6MvzRvS0dAAuOcQO3Ql2PjlDImVbAXc/tZJdeKAJ7Q5D8FMd+A
	 p5vOCehFCAUmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA28CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175634939358.15931.16075138656512148616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b648cd43917559a9f1bc52df581d456272a184ebecab6aa84911a416ad13de06
Date: Thu, 28 Aug 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756349393
