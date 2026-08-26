Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4FF304BDF
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787764834; cv=none; b=Cm2PF0Lwq8ceEGZ0PcT23hhdV3irv6rCeNo4elGkzrbKSxRpgCykXaZpXRgCJJ+5kQAyPNlQf6IgTAFj8ja2SS4Y1WtCUUtET/g+JlJsNo1hOtwFHyDgi7N2b+Wf9ucmN+bzlBDMEeq6zrawA0XkOrYKCW134b21AEOPBCzmXqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787764834; c=relaxed/simple;
	bh=KQ5g73TtfXbJbxM3deZruHYXbBrLHqCAyGVz8oIPtZo=;
	h=To:Subject:From:Message-Id:Date; b=klY1vHVNoOdSACwk92Ve0C5yyb1QmtHI9LNIy63ApLuW6AXwijQzVJ+ZQR2Ita+4MpfHgqEAiqw3yn/yoND5eSkDsQ6GnXUrMwQHqs+G+HibznF875doTZ2EufiKBk0N9HX6QidILe55zVrag0+uW18o8QlC9Lv6821tDg4ude4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pyYRZXId; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pyYRZXId"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBFC9C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787764833;
	bh=KQ5g73TtfXbJbxM3deZruHYXbBrLHqCAyGVz8oIPtZo=;
	h=To:Subject:From:Date:From;
	b=pyYRZXIdDq3VDlpZTqc6BuwvPxIXb1oNmH10dnrGdkr6diVeCoW/t4PansjOtKHFj
	 x4BfpXRwEzMapIZeKDyRIzMsz/4eTKPSDKc9cgsPlrRNJIbp9O1lJ911Ho7eonsS72
	 tgEq+UcE2hrRLZSdZuDqyVB0X81mnOTREoaBrxpCo09Gcbpkuk0pUDtRy5j3SaYNFE
	 ANwNnIscQkOrRtP8c4qr+BedymKcG56Kf1bwB6Kb5ZZQ9TjOsyeyNMJU77dyPIK7au
	 vVmhjeC16cV+hQjHlKIIHN93beMIfh2yf8N9t1K/WolCgXiLOB3mEwfCzhZh8Euziu
	 HZyRjK97rdD5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0DCC61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178776483368.13160.11243540542534187785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca090ae73be728c843dea4686d8225a56e624beb6646d7d4f0a8d61474297e77
Date: Wed, 26 Aug 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787764833
