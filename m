Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 108E6239086
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771202094; cv=none; b=EOHU/nI1326ZWdvJxNRGcl9QHuNbl7STEJN9ecb9gP+xCvGfieqC3So7E0BxSE2Li6m+eadfZzcIxxcaPvOY70xR/O/vySJ6sp/70PvYJh+N4xAUGFAsobcSvQv984ZCitXAfJKv4TG1TbHaeDL/7TLHjoI4UmPM1uTJPo/q/Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771202094; c=relaxed/simple;
	bh=8s5RBGxt3zmSpldrlv69gHyDUe9IVCDK/LY7sH4A8/k=;
	h=To:Subject:From:Message-Id:Date; b=PGMFh1uRMvEhNPUSyg33IKiCmg+/rZ2xuT6qI/GnW3YLIGHJAnrRXwTQvUrg/eWIJeLTYbp4nQcnbejD3p98EwW+vC5Xg5J3uTjNJKt7nceot6vzNEZbdoa3TUslWpOg+Td2uDjN6WGaF7ixzAyaPHC7//V26RYw045b8YWzw4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ORB/o3K4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ORB/o3K4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADBCC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771202093;
	bh=8s5RBGxt3zmSpldrlv69gHyDUe9IVCDK/LY7sH4A8/k=;
	h=To:Subject:From:Date:From;
	b=ORB/o3K4g6XoTg40J8wwZm3aFvy2mH+N4H2prIv1Woe4CIFW7gjnC2YpGp8szqVu4
	 d7zUnsIlO90EZgsVvxzAIKFyK+XnUYRZGE9UsRHED4mFI/qOoFVH+LTytjgmnzCbI8
	 PH3T2PTJ7rom/bbjXe756vudYyZ+bFG2kz69IrwY0Y2JutyMmKhcvgdU/OMU6b2JEq
	 Y1jPM+z7R52tEumZ0VbLfwWEuuyPchYy19CHXR8Gx3iqSb+L33jGUxSJhm1/1ENFP3
	 DNf/gm2+MaG11mWSrCLIbKAwNCenLAc7+QnCWMnleWhS1nSbrhLauFGFz0/dPB+3+h
	 HjI0D4sLabV9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A86E63F1C
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177120209360.3064.4658420367003762399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 396507ceaba7ee6d6185fa1c080e8f1f5b6726391860aab58cd4177c90d01a2f
Date: Mon, 16 Feb 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771202093
