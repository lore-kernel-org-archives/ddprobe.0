Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFA228726F
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755896395; cv=none; b=gX/XNyWmfk5MySqChMebkvW1lGUh4R6o08lxLP0f5FotFbtPCTwLx+29yVVZxBLjf88NJiqH5vxmZzhu7NJQ5oJgUTxucev9xgVM1mSzvo0o/Ph5TgI6J5GNo9HbtZSXe48Rkno0yIDquI2/Vb4q4VUlUZQNhuR78SHBPq8wtTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755896395; c=relaxed/simple;
	bh=TT+h2t0RtwChXDeQNqFCkc43xwGOZOlbc6trTWG9IXw=;
	h=To:Subject:From:Message-Id:Date; b=fmog38e9fVp74RbroSVvYjpeOS9dRiyfe9iL/HcviIZcZDxntlehiXRMy8jWp7svxf1Zps5t5ojVzCpYP1g0Irs7A8p3r5pvQmv3cnwpwf4Hl01FGvWg5gKyrrk41i9Zc9A3ebesHacUHI1cZ9OH4Gch7Ab8MJpAk89QgW9IqBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OtLgqBRP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OtLgqBRP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A121AC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755896393;
	bh=TT+h2t0RtwChXDeQNqFCkc43xwGOZOlbc6trTWG9IXw=;
	h=To:Subject:From:Date:From;
	b=OtLgqBRPs1L/sBpMKL9+V9hZOC/Fl+bQYyckWDhDHbid0AXoaKOYQu4yniJcIJnR5
	 26HZEJoN78xrjkBltrTF19ZKnVQpusHt4CN6+MN2IeIuDT8z5ZbqWRuOWnOFuZ4wY9
	 lC5Si0wt45NSr2vfZ6CCbz+W2JNkVssOyNBGXrj+lT+byqRlT/wwzBa++EgDsZ3RJf
	 t/JlAVj1S7yX8cLZ1WbdwRUqqRouSebimHRfO+V+SNpG8p0ycodA3p3D8LAGFPIxYB
	 S56DpamO/VwO+t5B7TXkufhBZJ5aINvqaIQs+qvGbZ4yuu1nAxkY7fnxeVdK20qNc0
	 Upex+eTfTOT7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3B9CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175589639357.23877.8219198375481402484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf0fc8dc5cf67ba255d6e2392f55bb83413ea1b39ed73a4ed635929cebffe896
Date: Fri, 22 Aug 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755896393
