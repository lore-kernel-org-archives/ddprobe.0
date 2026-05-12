Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1754D3559DF
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778569235; cv=none; b=M32CCWSpv/r3vxqxIXdRsRg76k89Ciqaqa5bCmHb4O/kt8naBBVwOhiICiZnmo3WZR+xK4wVsAGTHCBh93h7u3wc5hjwKkV1jl4PXY0NFP7jp1aXAZDibani8t3iZ/A7SCviE/KWLjY1ESKPnvk3+4tl/xcXeqOnhK1frbi5ab4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778569235; c=relaxed/simple;
	bh=bD5nNLzZdPPKGpkrQ3W2rfpokHCI7TnqhXwPG7neb5k=;
	h=To:Subject:From:Message-Id:Date; b=CzFVP2Fv69d2QDG6LfVoqipd/U0FCN7kdG115Eam9s/SUlAfmzK1rp0Sl07PYlg2i/XgPunEP6LJbHhHj3dHYcQwPAIO8vzmQerqOKA5aC3Os6+u3kgkhierR/bolpXwP/2w6kqPYojOWEIZqNmR3wRYtsh1q/g36tjrroTXgFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dPode+3U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dPode+3U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAAF5C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778569233;
	bh=bD5nNLzZdPPKGpkrQ3W2rfpokHCI7TnqhXwPG7neb5k=;
	h=To:Subject:From:Date:From;
	b=dPode+3UiTa1K06CavSEuLQL/r+cbE4c0s7drS+OWPppDWkRqAx3YXiMIlYwS5giy
	 Acn4R6UJAY/RPRDorctYuoGAHRwrZZKlshYIMuyg6zmyBuDeEvOyv4FT2kCWJfSGcG
	 H30xoER4AtDUrSdzxrLQn9PRN3c3LDdUr7uc5VhNUFURSn6n6u2Y8zHsOSEDe76Op4
	 FCqjks32NDmN7LU3qt+YrKHPGe+wSbvIZdTGbXUGtL96J2yyAR6jsO6nyKfBwYkEk1
	 BGR495Y9+2GHhJs098i5+B4ASk/6JqRWkCJQA+nCAnUqlKB8oEcIJNSFWk7nMT+JQS
	 1tt1Z8RRe2agQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9F3CD4F26
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177856923369.28682.12312748933145245654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22b85d0b9649b193fdc26156071a64831c10304635fe3c9f47ad340a3d3ce957
Date: Tue, 12 May 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778569233
