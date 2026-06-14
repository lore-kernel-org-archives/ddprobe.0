Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 655A22EEE9A
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 03:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781406994; cv=none; b=HN6H/Gu6WaytuB9N6o7yyG8jPEwrpEI97lT9C5YOfAiblWBzZO6odKcrTMK7E6BuArcm7DhYGg36gGDMv2jWBoFLWwYfbHkpcKuZcJv/06CpQ2HH4xkwQxW/1S3BhWhzVN8fKD3zpP0R3Mf5z1pU4pYdW7NhSRhd2T0h6xSDWlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781406994; c=relaxed/simple;
	bh=9xTCg+c/yk3mQ1RU03T79RYLESrkLq+xkygsOvzh01M=;
	h=To:Subject:From:Message-Id:Date; b=BBYU1Std9DQewU0HL23f5dhHGYHWdTS/lxlK4+mfLqGQ+voiB/Eexzu1VLbONyRjP+qyjACYPWmPOp3istgGYW2L9T296M8P/CHgWMGguktgRHlUC/ysTkOYZgA52zjeUqp7NIn2BUpoOnDETJhWJ5AVVAOeYhDwc0FWYB5YBgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KRbvABFq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KRbvABFq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA8A5C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 03:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781406993;
	bh=9xTCg+c/yk3mQ1RU03T79RYLESrkLq+xkygsOvzh01M=;
	h=To:Subject:From:Date:From;
	b=KRbvABFqGaoiJjzi3/CEyoRz1JmsgVpZlybK5dB8eYANoqrr9nxR+CHsIEcAVgltk
	 xo4fktrKU5OigPkGu/smmGenzZ4e4RencW4Nre54GLlD0Xjzaq7pexBcWF87+xsrq5
	 ynv3A+1/TH4RmV0/xhwgAG4ZrHlCy1QsuNlFGBvcaKX9ColouYnGPbgJy+d20tq976
	 +eqfdGWi7zgbQo6Tp8lI2pAKoLQjZgpEx9hp+dyL87b56fVSM+CPKLBO+OPwaAiX7M
	 2eYouHShK35Ee1wonstxNud8+7eqF7oCLnW4EpVC6Yjy3XMb7Y//OLhu1YdHe50cE9
	 uUtWapPebI3OA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC38CCD98CF
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 03:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178140699368.17245.10383457829041314419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 805c088bf70f9ad87b7c2a1d45d2096639510f7d62fbb806bee6935585d12877
Date: Sun, 14 Jun 2026 03:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781406993
