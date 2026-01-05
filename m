Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5B03A1E68
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767571434; cv=none; b=GE/Wzvv3EPZd0Nj7kSzW0KTTQy5UhN0dh1jipsFWaEZ51b3iwtIpLKJgrO9MzwifOj+xGKD/ZjZZFbUml1KC6521CF3ZBl5yGP9qZ+Mmvo+iFTCzi2EewCKbhXAxJ88+qars464xg4qC4AeEE+EeHMGHaliPig5CCJqrfX4keyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767571434; c=relaxed/simple;
	bh=Y0VD5tr9frvDCsJJoHbvF9fyP3KpacDoQq9fkCkOrTQ=;
	h=To:Subject:From:Message-Id:Date; b=Fvsw/SZbhu48EtVsYvUrMNQjB9U55taCmMut0x8Tepagwebic+w8MGy9NuYpy1jzQrheY4r9C+gCTqLWdHH59rFWNC7Jurv1nCXqnZHaRR5urKc1e/HwFgHHXS6xmcA4RpmHnhbms/VXwd5VqVTl51lr7/FeCXMx+zavwe9xA48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T83Syr/4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T83Syr/4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19C1C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767571433;
	bh=Y0VD5tr9frvDCsJJoHbvF9fyP3KpacDoQq9fkCkOrTQ=;
	h=To:Subject:From:Date:From;
	b=T83Syr/48YcSiO+S0DbnsbVzcN3GYhlNQwoSjVBvsqeP7yMzoOFNLGl3PhqgcBd7z
	 7QEzICE02iNEIh6b8eW+RcrUw1A/wqmc6YAcCuFi+EpxkUcqgbP8cnhmYCTqCm1XsB
	 YdLaACttCFVm/eghFqMb74A/0SmafhJYx95PhNo8uI4cWLZvMEL66wlXwIiCjZi2cI
	 UQ2roFSR/hrHKrFXDAG9ALSGE6k7bbbSwt+xnZykdnuhe1vuD1Mh93hsnZpyQdP3jU
	 cg/T3EW9ojwrzf4rRj27VpD1V1aVzGwt0BwER4O2GkGfXP9scXyPaE7s+RJVx8G+6Q
	 nHn4jOYIWrR9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE65C2A073
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176757143358.18604.15317407117443700001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bd32973e6875537d36dc6183b9cc2e08c34e5b9804fa2ffe4270cc31022a8a5
Date: Mon, 05 Jan 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767571433
