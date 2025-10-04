Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2865114A09C
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759556396; cv=none; b=KarhSYGuzoCZ+WOF3MP9rogPzuU7zmwGvW8kO/8NaHBi1r8KZfrLRxC5eRTpvFkuaRxHrUUXQZ4Gnx1QiB+DkdJSV5z0piPUZ1396CFYeK1ggxZYaHZyN6WMv9sbJkj62JFwievw7bHKQ8l6TOJbNmukHn/XksURaJtpfJsWflU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759556396; c=relaxed/simple;
	bh=2xWZzb4acDE+cAmB0s2MFtdbgiX7uR7sIJ4Lcd4ca30=;
	h=To:Subject:From:Message-Id:Date; b=SKCJJLFXxowpEDVlTSo05WokAoDHURiUOfoLlqcRa9xV66kcGL+ehk/nWxan36syvQrmt4bpYvSuf3mVwdI8H42fqlY7WiWpvjwgwFKpm2xJJTWR/XZJ3c2Nu2pB+aQ0FU6mPhwY0COVLG2jAw63YQ/CTOmsNa1a9SGD5proRFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BGNEaEAU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BGNEaEAU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7ECEC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759556393;
	bh=2xWZzb4acDE+cAmB0s2MFtdbgiX7uR7sIJ4Lcd4ca30=;
	h=To:Subject:From:Date:From;
	b=BGNEaEAU5QucmUZX7pF5vVxC1uZKwa62jdQROerGJU0KgjDk7uedtipYNFIuZ3k4v
	 ExfUH0TtLBhcM2xua55K9XHwHvAiCw1w5LmggNWKol2gF4ey/BJBhxyXssSzKNCQ5V
	 xz9gNJZ1U2dOGgqrEA5zc/xsfkaTR0yntStfvgbf5twX11FFEJg9UsHMxUpEe8NnOM
	 LY43qfZbd8MI5+AXqojrQwmJ39yztMDaV+nqAjqeLftF4LH65iQx8HnBuck2GeE6j5
	 O/6j9FmbZpzf4hMlghsEaSCoeDCM/h14Fc7g2EeIBBKjfXnSydVAqr2y3fOLmQm7UF
	 z3abdCxgT0+yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96654CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175955639358.29853.15546998520152716949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd9b6a9e0a00e419b74f71b7e6c758bde9372307cd9b8343d7260bf85c7ec411
Date: Sat, 04 Oct 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759556393
