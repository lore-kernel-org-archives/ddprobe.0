Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C50D17993
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787209234; cv=none; b=SjAgFjJONJsBP4L0Tvly0zJzTfxlEht3Kz0P+VVpit6h3p2C5TVbJD/foInsYAwPqb1g05OdA1tY0auJDLcwmne9xJYOEj0HmNg87iTxB3FhM8/QYn7DDJnG145dVJcsrGFIcj8qznVelT+P856U5MZ1TZ4xyS5qWW9uIV3aH6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787209234; c=relaxed/simple;
	bh=2bHxdkWP7fy46eAtm+2MRI4nTW2natfJwmlzM8KwUNY=;
	h=To:Subject:From:Message-Id:Date; b=h8t1SOc+/G3lYocaesXIqwwrMSKYpg5sOkaAeKkqK5bnpBvxrzPQU2HfF7MMyDidvtoNKhdyrnqH0hR/WXz8jjfhy6ejPQDSwDhFFLypoY7dfFAf02Ow0sapwISb+/GNi+k5jrnMbj1I83EmijfAIxArKP50jFHdsCO1+tT1Pzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KEjv0c0R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KEjv0c0R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDEF1C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787209233;
	bh=2bHxdkWP7fy46eAtm+2MRI4nTW2natfJwmlzM8KwUNY=;
	h=To:Subject:From:Date:From;
	b=KEjv0c0RalLc6hU38yrevmVz76fT/DyDtZ/SQUHhLEuM+gf4Qiy54GajZwp7cXqsU
	 SB2wrYqhopxWaEP7yG8vCEus+csI52XF7S5azhsUNT6SsOlrk7P2YKh5p/2/+7t0Qw
	 qFNEUPbAV20tRw6ldUiEHupSuMHaOYURH/Kc2od6U4CAoAF16CRHUu6k/2qLmkGxSu
	 8NaN5XcpYvrCVfIGoA0BrcaJAnl9nYWZjVURpdJv/qyil6+9eRmXVK5IL8vhOZGIyi
	 HCGJMlRDpEZWdar9PdA0KMUBEqk9lgsnxgpGsIqw/EtDSD1JZC1F6B3MZ5SelvnTEc
	 DYIp+gZmw1TXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4BFCC5DF82
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178720923372.30913.5751522574015183622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c9a37cc2bf2322fcb3567bf056aab8726026c5b82c63ee64bda9eb1d4f99a44
Date: Thu, 20 Aug 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787209233
