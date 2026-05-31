Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFB128FFF6
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 11:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780227874; cv=none; b=qPDS7QEI8ICnN4i31s+bpz3Fjvryvkvswob4UxWpFUnrvqrp5/pIrX1uieTp8aG7yVSHauXQXF1tJWwXBFtSTQNSA+P8i5kGK0DPNz/hrfGyUjPU4nLohNl/jC6MQqK73pxs0IrUBiwatZCAcZMGerc7IwiwQU4VBymlprlxVHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780227874; c=relaxed/simple;
	bh=kpqWTVv7Gd/Q19iz64Jrrn9wYO4H346HQ/yTH2CRhY0=;
	h=To:Subject:From:Message-Id:Date; b=lCGwtHf2hF0KaWNc0K92Eu69cs+hIzOIe+Ao++H2XjrIsO6ybUGekSaLyCGQqwbC679qPVz6Px551o7411YL6QyiDaV7DObpsupb7uRlugKQc5TP6yD0CS45ee8jqVWbHIiiWLr69AaUL7956Wdw06FnOLCfctkhJtNMMpzLntA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTR6PHfq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gTR6PHfq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C48D7C2BCC4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 11:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780227873;
	bh=kpqWTVv7Gd/Q19iz64Jrrn9wYO4H346HQ/yTH2CRhY0=;
	h=To:Subject:From:Date:From;
	b=gTR6PHfq0SelWuiD3SLfVUfh7ll4DYDiFwxAkyAqlTs1YEApzfXKhPZM4s1tDxLJG
	 EpXo42FEVlw63ouPQADM+rmgsAWusRiItRa1JA9UHdnkCmabrnUhMXtvhgIC9A2XK1
	 8e40Uu7Oaj0VsDUESlE5X3e5jkTdyNvNH1kiPMioyDq6+H5bM8CXCwuM9s5X/l65qw
	 xJwgwQlIDUePm+vyWL2AYs7+0GmV/u80Rehdmnnx1CgPOGq2+e7KDsMafy3H5pbCAJ
	 oGLUDLKU1dfmrgRGFQUyB45GtDqLQfbiLAQbXXtCxQ9ZzeubUGkZ5mMD54sdsNr99K
	 JyPOOnTRzkluA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8C0CD6E52
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 11:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178022787368.30372.15109264814411740303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd602a2456cdd0384050d3babf85126e8e89bccbab4c889484cf9422a263042f
Date: Sun, 31 May 2026 11:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780227873
