Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13772195808
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752203394; cv=none; b=TCQG2gAXm4CyNqHGDJ1cuDQ8WfvFRvW2Q2pboDKFih+pcOE4xyvI43svcDQMMSvBRi9n2i4KfBOq6w/gxSbTQjo9JdxUfDxY1ONX+WKUh3QDrWdxMGZJNoUm2riENSEMrQrzqIqSFCb/uv1VLmhP4y0QjXhrIJDcNvqPpCYIX2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752203394; c=relaxed/simple;
	bh=eVadsq8TWSRPtyvW+NXkj14x7QESqt3YzeTXLm5qgmE=;
	h=To:Subject:From:Message-Id:Date; b=s6cLOFgcrztS/RxHSV9kUdEoKwx5ANqJvooFF+2OvS5SluXdo4TyKTcnl/K5lYNWNDS/OAfHcofbKfm1Zcq9UQRq3uEEdP8U3s71E5axRY84f3ZvBSWKwQVfwpkZuTXy/f5Lh7kC624aXm/gW5+I049HDRLFVedWKAQ8c5Acyho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PH0vD2F3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PH0vD2F3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0894C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752203393;
	bh=eVadsq8TWSRPtyvW+NXkj14x7QESqt3YzeTXLm5qgmE=;
	h=To:Subject:From:Date:From;
	b=PH0vD2F3N5FApo+cX1A3IblQOPlEXrdhAP9hKTRUnr99FVhc2e+KU0YnnuXO05oU/
	 rQy97clGDcv5gnKhNpZTHdOn83lThbP4V7EQu6zaQs7SYHfW28O7748qnOYtk2zzyW
	 lnlvCaVxkYHtkBeW2GD+KOW2ktaRtMxe39F0YIH/r23/WoECblBwkartBwVQn8TiR3
	 2lqOCQatQJFC3mlwAnhkIFtrQ8wuv5vMu1BuftnAOXXoZbdyNyG1f6sr1rtz4yAPPl
	 3dAKSSB9dUjpeR2yTYgp0SETqFSv+s9X2G5+Xo6SrPfFEQFMOe4Y76vLlBZ3NpHkvL
	 Pt8WOD9xRlBeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E080C83F17
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175220339357.12995.2122815902866005681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6234b8c8af4f8ccf1574460cfa7e932974f01353ff44d60adaad9ddba3ae2162
Date: Fri, 11 Jul 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752203393
