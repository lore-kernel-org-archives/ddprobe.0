Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F2551519BB
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 23:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740355134; cv=none; b=IbYix21s2ctg7+BeY13vVBWZsP3U+zTzMiGfPYOP3j5KGyFoaxayyu2+ZcSq458doPWXYacKihYl39Yvs9qo1YA0Srg7viVmYDoicSnKQWh6S74pzMbWPHVh1jgFjYLRx5b5qYYxPHGVjyncD1HOXrW9lUwY013dky5Ixh0TFg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740355134; c=relaxed/simple;
	bh=7R36/Ci3gp+psxswtiF0O2MxmtH0F820FBVv7I9adWQ=;
	h=To:Subject:From:Message-Id:Date; b=WknpYeT3rKfDbH/iC3Suffp+uDbkqGgwD8EffSs19BU3INK45IXVkefSvTpB+vdpgLooJPjTXPiNLpK2viTjgg8yhDBFOX+pZuo4cajUFiWiRdtMs2TWngp3zYLZUOkfvuw84l1uZ2Jk08GpQBgYId9hFv8oPG+XuULRVwuA9QA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jbwxcocM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jbwxcocM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C93DAC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 23:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740355133;
	bh=7R36/Ci3gp+psxswtiF0O2MxmtH0F820FBVv7I9adWQ=;
	h=To:Subject:From:Date:From;
	b=jbwxcocMSUO+uOyaJzz9CmAaH1qkGQGgNqvIChpGXlUPl2aGAjSeOqd79fRQuui09
	 pb+OwLYe+yB17aI0TD897oIoXItw4pg+2AlT/fL7UJfBAlluwq9JoPjVoWYuEVhAns
	 l3QqC3+qxGL4bdouCJUNG/EUmb/yGClRmXFlHVWD27jtUn2ge+afbff2/vq/GuTdV3
	 hThq9JHjeNGaLgckFgKAGywTOVND4DZSlx/rNBSq1cWz0lKLrPyZMt+KR+3YJBVuFO
	 Lbr1m3VYC/umarEreU955t6tUmouvVN0u7D1eecvBJPnCdVi2+14dI1gR8pCcqI1n9
	 dgEPSP8x+A6yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE768C021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 23:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174035513370.29162.4965507904525041033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4ec7ef2bda77553e5ca425a8ea00f335a613a48984e2a8b80cfd38ec34d244a
Date: Sun, 23 Feb 2025 23:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740355133
