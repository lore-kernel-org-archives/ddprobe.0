Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54ABF2F7F19
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789158634; cv=none; b=YdbzWHy5I5DwLnAx+NVCoNaoAun+0inOp7UgWUhvXylqjoztFJnPf6YXbsxomT9nLRGn+UdfKbvdU31JOvKoMyAxn9MrmSkhj/4j2XsCWYOjRnlxP1VXH06LU2h1SWRcpnuKTlLO3ZzdsUCyLH/G7OT0X5z1zzb/Ai1MOvef2LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789158634; c=relaxed/simple;
	bh=R32SD6IH/XVLExvni34fxIoR8YMc3uruO78zepEZGOo=;
	h=To:Subject:From:Message-Id:Date; b=kh7yVXdTeFr7SvucIJyu/9HlbqiwOipZYtEJSzyer9reXx/m8Zc+YohHqBq3VtiEqIM/28jZ1HxNUD3Zhf62MfhJy+wnojQuB/A1n3TeO89JRyFRsWvvF41VK6cAc4mzj3K3iX6PdkoBmydz163msWmMaI2wFtQX2YlZFbmT+lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NV25B0hi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NV25B0hi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5735C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789158633;
	bh=R32SD6IH/XVLExvni34fxIoR8YMc3uruO78zepEZGOo=;
	h=To:Subject:From:Date:From;
	b=NV25B0hinB1BaY04JSuLA18q2/OHPncUbqQBC1zXeUEkeiPwAi0F8WFhtjdbeeHCH
	 2NMi36aVXS5aO03xzOCRhbpZSIAUqVqfmX5+xlUUpnfE+7HcV37eP1oxtjM3dvoNjH
	 SH+p9s+At0pxsUX92SwekfAJUQp5S13RDjDqcHWpzrLzHh/oNzjRzBVOLNOIBR/vzP
	 ab4GX4VoPZIKe8sUnrCg66E0ShqtiAs/izkSVtKh2x49+JRFPJDUHhT6ZumparUHGN
	 4JO8sAB0VSa36u3xMIWJbMnV6BhJ4/nIc+EhQjJ2nb2cCTrc5A1cxHXRdUa1fzLRI+
	 RRaku1ChMpp1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5E6C88E4D
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178915863369.2867.7379828475451084655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 758d8f212c29d3e60e217687d1eedc2e98007ed78db0b0335aa8a214694f9f06
Date: Fri, 11 Sep 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789158633
