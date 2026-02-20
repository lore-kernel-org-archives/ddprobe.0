Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DCC32860B
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771589094; cv=none; b=Fwd5mLYfZiZVAYUPZoqZ7M4VtTqMtIL4STbg2TH3G4r2/qiRObrepCdU91+2azFfZyR3K28k/Gc/7V8UHyK7x7kDf4m71tCOZlRMcDD559+SlTc6Mnzyyq9zZ2a7bZj9oeMx/L85O6ua79N0CMjuhxU0eICH+UmS2e/VoFjyETE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771589094; c=relaxed/simple;
	bh=BwoGQNDZo0CYD6TeUvky6f0EZ9F6BChGsG3py+ZR9MA=;
	h=To:Subject:From:Message-Id:Date; b=JeCfbCQkemQWa+ajJA0bFIwfarQmRsFu5Ak7ILEnMSUgwpId4TQbCZg+sZbihxAcFt9ZHMhxgeOf4DGHE4OtgB0m6hddcUs7Yn+YAW0HZ6D+dM6WawPSNcpampUsfMNM/bBH2mNrq15yOFOr9Jum7PcAlF4aZ6W3KJFHk2PeoNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C8UyGFH/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C8UyGFH/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF5B2C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771589093;
	bh=BwoGQNDZo0CYD6TeUvky6f0EZ9F6BChGsG3py+ZR9MA=;
	h=To:Subject:From:Date:From;
	b=C8UyGFH/cuIb17whJvPDRYkSOYkeKFAL0FTEn/0NKRg9Svi9gSSeKa1AG1AxnAoNq
	 RDJFGOHVYyp1FwX+obt2sw7TFCg/bZUfxb6IIz0WdFMdn6Va054Wn2wAoepVVOOgUt
	 RnzNR84Oo23+jZjqCn0fZueJY66tlLpF+qSS3gthcmfUbVaeTmG2REYcJgbeWCIOdJ
	 1mWpDEm1+DWHvjmLVmprmz68NqzdOddWpP8lGbgRI4eU0dEx8AGbzIZKNDX7VDhM38
	 jdbWM5iNZPAXNNE0HsKhoyDNZNbIkz00iaU05St5PXggCgMUh3811CX3PrHOIdnzKz
	 arld0s0k6rTlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A70F8C55AB9
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177158909359.14657.1475382450169966939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a57689386f681662d6870e0206bbf8c5c33ad3f14e4183a176aa27addac6ccc9
Date: Fri, 20 Feb 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771589093
