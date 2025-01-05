Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C04E38FA3
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736074554; cv=none; b=XbRiIajua/8wcZlHBAzTI/l9q146yMyR/A0odPrjfFBUcIzhwI7wtm3VA1ujqghCi6PZ5OmqUNHwlU/kZnznxFxP1x+dK4mdLIoA0M28UjkXlpZMbnW4mRfN3Li1O6BXQtSDHTRVGye6WIZZeGLc6x7M0pn2lEcQ69rsoWto968=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736074554; c=relaxed/simple;
	bh=WpNMIF+YOrCG4+tK+a6TUQnlTntHcQNHXNqeRyyo9M0=;
	h=To:Subject:From:Message-Id:Date; b=e8VoxcGuR7Zt33ymVGAcbEpC+JFuRVGmioKOZ53zrYfm4iS+M5fhHVdOlVO9Lm+bkldtidc6ZECErFSxni924y+vqqqiMln7fAF1PbfYoaSi17dEmZOvcCzi2O5cR3Z2vB6yTosrmMArclawUsdDsJ3anajN+r/dBmQwp0i9BOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KrfKmKvJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KrfKmKvJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A423CC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736074553;
	bh=WpNMIF+YOrCG4+tK+a6TUQnlTntHcQNHXNqeRyyo9M0=;
	h=To:Subject:From:Date:From;
	b=KrfKmKvJd/Cy1Jw9gtKE7x8SBHVjYP0H9yJeWxpksp6PbMBtJjoy4/ygPj0mQFdyJ
	 PWgnXSnZ5Ei5oUfPOfsuhxi6Z72LTONCZeuD5aYWvyO8ROaaQQP/lUpf2sysM7g3Ms
	 S09pqCesValk7hz7s0OfLpORkiZTWJhLMwMNLRgxi+1o7GmfPuu8bHFGsRU5dxgT51
	 MCiSOfbjqO/EKCI9LfxT3noQZ/sWURZToXTwcMSR6hBkRBhm2GmWEOB8xAgdONGyiX
	 hWKGpoL1uJgBdttyha5Wef4NRzHPxHe479gcmjPgUWseoPsp4MuubAts09cMjqCmwR
	 nQfxf7VfLFeMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BEAE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173607455360.7238.16334161935871325118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b78cb438cd326b735ba8cf93feeb61bd70cacf7586fe6e5aa83059e78630d6f6
Date: Sun, 05 Jan 2025 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736074553
