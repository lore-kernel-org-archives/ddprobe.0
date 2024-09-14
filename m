Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43210522F
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726336554; cv=none; b=oPOWsMUVpgGZWhdaOOek9YMfG43FqacZRNz6rDrjrClr004l7SQoY3oEIXQBTE5F0nIZBwqIu0mlclkdlKrFuY7R2KjgsIs3vQazH8JS95cRiOjr78GvjDvwSmkB+d5Rp7PAecsaRmCKDs8mHFo7hCwsJaz485EM2dosMWolAwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726336554; c=relaxed/simple;
	bh=6/cD67OLLkg6mpuHDoZ9vq7v9l5Xmn/+Bjxsg9I3BF8=;
	h=To:Subject:From:Message-Id:Date; b=UMSkYSAJMV1FTQSZ9bG9vOUOVRyhC6he5TLdJZ1UVBXwvXWlZmI6BrK5N0qwsNKhQv8BPZalwNF7qkxj9XcMD8MeeoXTE3zERM8PHSxkKqj1jLELZGk/71omXTEZzKBQBUdPOxEqRlQ4qsE5zOtAFP9ZbKe5Bo/mxlzkmgIKbIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PSTBbHfx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PSTBbHfx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7ABC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726336553;
	bh=6/cD67OLLkg6mpuHDoZ9vq7v9l5Xmn/+Bjxsg9I3BF8=;
	h=To:Subject:From:Date:From;
	b=PSTBbHfxrIjrVABQK4HStN7kHsddqhFkqQ/f+OV3ROg2n7XkUt/U6ALbEh1MYJfej
	 F3mDRgIhhZ3cYN6EMkWufgWIcqjWEoQ9TeFFDs7fZpK5GWrH0iANK+IXDJNnl1Z2V+
	 wf/TwrI/1c34xfbZHh5DDrG1E7sz2lFLMuFBCKqoz3WxZyjvDh4dEzPUglNPWNOdfz
	 6lnG+NqOJ25Hgg+9LOEJa2IoqFiTPRseIFd1MA0rBLj6VM6bsuqv0QZalFVghPXE1+
	 KXc5Gd1Lu80kJxpNk+bGbI/umuiHhoBKnZfvWAjAeL3CFLTonXZ1JTYffVCaH0dMjr
	 xM0KHOu/hgWuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9816AC021A9
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172633655360.12455.7948586843839495686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 883537f746a67e0e75c27d21146386cf08e5eca9a131baf695f3d7aad1bca6bb
Date: Sat, 14 Sep 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726336553
