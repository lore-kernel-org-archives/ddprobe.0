Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A89472608
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750035594; cv=none; b=bNmchhM5zDwxS1/1E6AaPFv60NTRNaBWF+OzQ/e9VPfMG64qsmasNwN4y5/i4Ug5xVUG1A+F5o46a3DvLYRv4H3Y7ILUeLxxKrJhUPCsJt5oqIeiwKxLmvdPK4IWO5UuyjWZyY41UZt6cK+eMyre78fqWASfmXwkzRh2A4HGw34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750035594; c=relaxed/simple;
	bh=+13JQOa1EmHDE8mcIA4sGX66xEvCJN+NOaM2Jy9yKPI=;
	h=To:Subject:From:Message-Id:Date; b=RlZM8yz+ByrC8S/AVjd+hqEzPnRERQwTcpBzl4vx4IoCfSH/Aw9W1uX1gxPl8PyEg8TRULwP0JLOtPewvsfFmMjISqq9RD5KIUUjRhzDqT3EfhmitbcG8p07f2K3jBtE7JuKrnBtPwzJTBshPAFo40OB4l7uENoljC+CPvWtRh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JyeKQJZM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JyeKQJZM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93BDC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750035593;
	bh=+13JQOa1EmHDE8mcIA4sGX66xEvCJN+NOaM2Jy9yKPI=;
	h=To:Subject:From:Date:From;
	b=JyeKQJZMOrwZ/tNyyNyq7gN2zWGT+ExuZ87xmQG5YyKRTQUJfcbVFH8SL1HPpYeJ6
	 f4zj7u/zc6XD9961SGowuV3vtEqkeUXQks6zJJQXit8+594iCDaifJPU226iyZ/H6v
	 ACucpdxNrNr7UiuXe2xmX5VnsUYnQQ4I97+XcIPMxrRyn8fmb43VrtbP5RAFdAL2AF
	 xpv6L1YhdmMza7Lj/eodv/dLk9SHKU3ymHqMkv29s93I904BFtW0jpkZtWFjlxrqNr
	 g14Qjx6JBPJnjuX8CddTzvfHTkCYcOo2x3krsjRKRK90rEycTrmaq/8Uoy1oVRGuZn
	 woBEWCcu7o0MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E3AC71157
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175003559357.22231.13052570104366188894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54033187a6ddacbcb6e507d26b6becc03aedcecbf9a5a6b5f696c1bce2f6ac66
Date: Mon, 16 Jun 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750035593
