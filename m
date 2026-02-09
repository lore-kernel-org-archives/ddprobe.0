Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20874219FF
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770613434; cv=none; b=aAPDhOY+GXTeElQrHHPgI3g95prc5ls8sBEcaGnE0Nd/sQbs4c1sohQ8p9YhmepxNTQ9dTX38xF08/Evjt0kkCt+nAe5K1vN5YrK14iHrfYgBkh6/uSMhuIoQ59x8BKkmqNuVgj20OfK9uuN+VjlFi0NRfeIhXDBHy/f495CYAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770613434; c=relaxed/simple;
	bh=IgQmHlQ9B4R4NxLReCfK3H4YL3j5U3B/6JZ6kYFXPkU=;
	h=To:Subject:From:Message-Id:Date; b=jA64prBeJDF3M8gWGg++n2f64CmwVLNhn+7DN1HOk31LVZ4Z7nideP4xgpnU4jXlAIK9YXnB7G/v2Y38HRA8nd+g0pvB6N/oH5TQZzINif+I26nTZIqm4THNP5i5mzKJyI8B+d8HdArmued1CP0PyaAo75kJvbN0oCYBKOo2GKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZ4ejht8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZ4ejht8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B73C1C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770613433;
	bh=IgQmHlQ9B4R4NxLReCfK3H4YL3j5U3B/6JZ6kYFXPkU=;
	h=To:Subject:From:Date:From;
	b=lZ4ejht8/BZCHNLXRyVGIQipyj/cJx6AtEvTmGpesT165VOJIMiZXhsVslDgx6DZn
	 NIcVSqS9Rh2/SVPaOtrQ5Nc8GAk82ftrcgD7jeWs6ok4pvZYqyEzflcvjqp0RbDg4y
	 RH8fw2UflB9fSUoS2FZNtUFLGfnGFUGYJtEoRfSg5Nf50MdgpmcqHh8aAhlx7fekdT
	 n6E1R5/XduQu44S/ll6qcGhLRCJ4Dw26SzzA435MrXDnLs+Xk8Q4mHqIC9c64KL+rb
	 ggH/k/TJmZQU6GOKNphq4NZkjeOJp2mvZygWSY0suAV+cXvnMyYpfph3nNBWigYhd4
	 wn0niSy/z+1iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A532EF070A
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177061343360.8807.5268374652951053459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffd3771f2162bf65b6eb2692e6e77ae005d39b250fd86fc1036ce6e2d2486f13
Date: Mon, 09 Feb 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770613433
