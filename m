Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC9436D50D
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785424234; cv=none; b=FSOiqiaHvtGzUSRDo2MiiKTBlh9kZkBQKJioQQgfWGHfJ7dSw2WYOxbxg20fvOVoI+JsqVrcRvbY8tW1hHREwpZYKBHtJkN7ycU0Jr3uedg2/w/O2c1veJ7MfBtQauJSLZt6MGN09B+7XeECRTeVXH1k6mpJBn1G8NAcmq1DWcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785424234; c=relaxed/simple;
	bh=L2x5sct+tflMS8Ftw1hfHhSR4izST7AvkXQN0BYToNc=;
	h=To:Subject:From:Message-Id:Date; b=SafGB1uo1+LF/GAoCPhFmC2rImR+WNNHn0qDQy3B/fWrOmyHKePhIEIuAYD88hs0uzO+QHHIIcJIkC9gtK+6mP87MVbQnvNO8AXmrpsjwdU5p68S+x70gUHCDRiHNmbFfgVm+l8HHj+x+t9Tmepyncav9NRHks3kR6FkH/kAvq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fyll5nEk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fyll5nEk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE76FC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785424233;
	bh=L2x5sct+tflMS8Ftw1hfHhSR4izST7AvkXQN0BYToNc=;
	h=To:Subject:From:Date:From;
	b=fyll5nEkGoCo0OT5n+uoJY7ADP/sSyH09yoS5z34rJNbiykziHV5o8xXUdkS4h1WK
	 isOX7LVVk6mKnPQS+W/tIKn+L5n9PJAznx0tRzE+1pAnlzjZrMu2Aku/yD5cMRb8GT
	 iqEwlfed89BmeWXrCvjkS9fvXTMRUvEFWmkUYEK4bP5C8BT/aFCjlvsK6HxOg/ZURr
	 7qNoAmd6yeydMuSBs/7mMfjydnYIFVna1J2CYvpzXBOJ3dBJOnZfFrbW5+QMrsWtfV
	 4A4mVSjhQkblNumzwgiWtoW92P/UVX5VWtPBwTEsoZB/aG4pXohQQ/00KU+8Iq0LpI
	 Fw1SURipOFdWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B63CCC55164
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178542423373.9219.16605677850655667935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b7966c436b9b2902c17a17016befadfbc2b5f2746601e3f7c47c2f0d5cf6840
Date: Thu, 30 Jul 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785424233
