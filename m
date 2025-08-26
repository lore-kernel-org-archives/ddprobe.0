Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147472F3C01
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756187994; cv=none; b=Q7jx1dGbEaRNvREltK7grihYeZa+7BCDBfRos0wVEK8vqZjtypQhw/2x2IYip2ET3fNbYUpZV3xFpAzVcNZB0zOOqOOFjPaChCLb/mhHTjsN0AGlQbywY35ZXLytxAVO5RiE6d1ThDKUWn0obEd8T5Q56sGIclVBUDdDitdhIrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756187994; c=relaxed/simple;
	bh=xvgJgX7othrJnODcFOTnBbiUzHkmMK6QORbL2TjS9IM=;
	h=To:Subject:From:Message-Id:Date; b=aopdWo+gZVnWfPBfhDtsWA39zvjSzpBw2ldc0xOTrCXZ6jG9Gw3SwYO3LRkfvHer8OTBSHLNMmnLk/qba/jHzo3eXWBkDrPGZM2sT2gHWnkPRZr6oUimYnvuxozk7ycNouxpS0apFZb3J/gtzLNsTOnbXwfpEmpjkcyUSy+TRs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7V85dxc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7V85dxc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0F3C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756187993;
	bh=xvgJgX7othrJnODcFOTnBbiUzHkmMK6QORbL2TjS9IM=;
	h=To:Subject:From:Date:From;
	b=e7V85dxc8v6i2piD3cA3XfXe0NbZHUeX8lGsokLHtyleClY/+QZkQa8KfSJp6RBTI
	 O5WSrWNmmdhy/vZq6nzGgr+hjgnG/W/k8a701W9FyuoSxc0nDNghPKxYxuMXiNVr42
	 LoIgo7/zu6kLAsurL5XE/ctAhXvmYdXz3bWMGD990m2ecfMauo1RhOOBoNB7ivOnI5
	 TmPLNz5LpIJe9qfTz8T+/Kgdura5jtUA0RoIvpe+qhiPdpRNehwQ/qJZDK355fSBtK
	 TpFAsA/19ikTuJiEsB5ks/KDa/A07Rg9qkoZgwzgw/xmF7sNE2i4PNLdI9qep95kDA
	 eSr1RdiALjSSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF66CA0EE4
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175618799357.15579.15453122649397621486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d1e2ec405203038350e67d74cf84d95e36737a7361d9e84200015856fc2115d
Date: Tue, 26 Aug 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756187993
