Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C49E233927
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 12:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785156634; cv=none; b=Q1NdQvGd5UfvNTd8RataE69XYMjlLtO5y0pKjjv32w1t+VLjCIamYlYTdXehng5Wrt7raQn3PV4Pp8CBIc27GL3kXigladeuN5gTv+b+vT2goObkKe4z6X3RA2SyfgNa2A1+NHc/EbjaThqVHeTNNWGOaFbdOdRUqEO0qL0PAq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785156634; c=relaxed/simple;
	bh=NlGvT2Hj454rjnlvngxOi8UNhlS+p2gzXdqLRl2ipcU=;
	h=To:Subject:From:Message-Id:Date; b=MRlzwXsDI5BlAw1MJ8a3GXgmZuplKNnHD9K2w5M0rrFeSBAv1vuLxEa7+FMVWC2hfFBILhtKXiGBGcatcVc1yrl4WsyvHtbpcB5lJkmZjMC9JA6lAO5izwr62ZHHhOMY18Renuc7+AXUqUz+oohkqrQaEieI4rKHZ06rvSSh304=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZH/vGbd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZH/vGbd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD051C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785156633;
	bh=NlGvT2Hj454rjnlvngxOi8UNhlS+p2gzXdqLRl2ipcU=;
	h=To:Subject:From:Date:From;
	b=oZH/vGbdKLfhSTFikHuZik60r9aRnOVlAaxlJRNSeqUo3eGIoIqmNi7M4CScrXt2J
	 rTCDx/mHBxfoP9VXrqeG3NMDmUhmgSOkVVZHxElqE8LPnWX8q/80N0S+DEehaR8Ex7
	 yTWgexWc8wuKDYbz4JUq6iNRF4sarWTjW6d41o+577k3lQWVmjWGO7VWueK/PwJdeb
	 xjSAs7KduiMoUkJgDgLz/X/aevzh5xaI+P/XlitqI3BopnFoJnWnicoDTYDgIUwXCx
	 53Fv5THePY6C4DRligiJfZSqXPdlcfvI0t5On+er/kVluTI+1GDS+JV/73dWPy8AeE
	 D9zG+H33Blfbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91EBC53209
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178515663368.2432.18436689629243417160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b355542cd25c81b4f3b701a369fcb37534bfef7dd311b1d8d3d78dbd0a9dc6e2
Date: Mon, 27 Jul 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785156633
