Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54ABE43F08C
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 20:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784232514; cv=none; b=nXx9Wi62CaO5b4wYKSuU3yhbmG+v/q2SkwzeUGFKN1xi2TxUC6ompUkYCGmR5qNt8sLyasum+zjIFmzmRg1oGHWLs0+0wk1WMcGaLk7LkKovGLpWw7rFJTqVQT/bqiMvpbBxHZytNPpB/tZiiMGtAVmfrSnemaEIVloJukfwuMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784232514; c=relaxed/simple;
	bh=6fdZHrE1W+xRUzQc1GvkTyavepHFh7+ujmGU3JfwnMw=;
	h=To:Subject:From:Message-Id:Date; b=HENiwbhvxfS5FAUmka4pqeACvjdZLnQf1hCNC+vRlcEVelSwVUQGb7ppk87jWz0olcfmnk8Vjgfw4yoh6HY2oc03rGA1uxH3A8/GhLPvhciqcis4HSYSdtsaCWuW9aSfYYkEgCLv9zAs37JB0TQoxSeMh5MZdbeFCA8aehdi4V4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JGAHtzpC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JGAHtzpC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCDD7C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 20:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784232513;
	bh=6fdZHrE1W+xRUzQc1GvkTyavepHFh7+ujmGU3JfwnMw=;
	h=To:Subject:From:Date:From;
	b=JGAHtzpCJSN14u8MFJTlm+OqsSo6Hh6r69vH9pwZvGtnQ5ofaG78ZRXn8lSZP9XXA
	 1WodvKS6Dqi8xzjpwl62nlzM8jjQNS35eb0zGGvCFxbPRc+p5lBeRsgSpVXeZHsjlD
	 bQIToddWw1ktnGp0t/OnAJdrGoeBPwS5MB8zhve5UTAXiFv8/fvg1e5o/dEJy7O1Yv
	 XWEOAo0UDPTNETuMQcpD0o1L8smyj258h93HOf8bSDaQqRdIDCGTPP9VkFJrt3OjpL
	 OIcNSYb4oqiKwIUmyAe0Oly15N1DjMNzj7OYIlnfAKo+CI5pGccGZ7lAbdfloPVyD8
	 1ecy9wGIsL7eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8CCBC44514
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 20:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178423251368.16915.4751203850985252827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c3e68e1f0f7e9c6fcb343434382b59c203282bc04b9667d72a614f286e8a009
Date: Thu, 16 Jul 2026 20:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784232513
