Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0AB23BCFA
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748964595; cv=none; b=i/djNwZcSIa39YoRBFOUNzL1otHG7/rF9WFjRVDlSb+xwaYobnT7fQg68TNno/B9nXeACPn3r4Np/NxXgf+JX7I8/ojvGx8diNlrAXsLAWpXydCkejwfKijaS2M/jccuViD0APXFDr02iAKBpQOK4tGar1VMEFxGBaRKp1VpEQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748964595; c=relaxed/simple;
	bh=T7F4GpIvhT+XojuqJAnUbtUVPDe0hsvKhSfVAte11e4=;
	h=To:Subject:From:Message-Id:Date; b=KUk2VWalL0EEbTvQgMCYKZuGMbiP3eiJVGOrRMWNjt2gWzLezt3OGcLKjf4StB9mtPstHZLJ/AZG7Qc8aQ7IEAQqv+OsP7+MuwXxDAaLl5xQqtPY1IhjbtZS+iPIqpK/NCVb8YlEtK/Tla56HQJZ3V/P5JXhJqoK6p522JlUZtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJpjd0g6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJpjd0g6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBFEC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748964593;
	bh=T7F4GpIvhT+XojuqJAnUbtUVPDe0hsvKhSfVAte11e4=;
	h=To:Subject:From:Date:From;
	b=bJpjd0g6fLQNrT6Fvc4CtJWH752l9fV+pBhQcx60v5NVw+06hQNvjMSovk1hIpcJv
	 SbxoXEaAEDiMvmmAByfKioPDlWFhEkkJ8lbKRPtBzhEZPGzVttal1XLIZxSgn5N+IP
	 E2RcTSiEiIGP2UbU2avJ270hJXdHi3MlAYo1uYStlEQhkAg/F7css1w++a33BvzEWZ
	 9ajzFEDSsmGbub7isusnVng/0q6Z3reGaCee+/7R1yXwiWgX3hwKaSitDqHB3L09rD
	 TAt6z5FvVN5UIrK0HjlENThrEvLiJBO/k/R8inULptFCxEJJZ6vXScRmBFx5xfx1bO
	 s66GWSCkxsyGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECA0C5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174896459357.26384.1972598208434651014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a356c6e2b7a4c6edcba38dfbcc48c2bd81cd321629fc3241a382eaab9d8be771
Date: Tue, 03 Jun 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748964593
