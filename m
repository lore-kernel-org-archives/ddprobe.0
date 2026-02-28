Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 140A163CB
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772245494; cv=none; b=bp2xh0x2yVN1BCipM5X5MJI1ARdg8xOa0DkDcxcKxxFB5rIK4fMzYz29axWblZsYPAvWhpwwauhaqHmgVbG65rp6XbzmAl0y3fppcvYReLAH1a3Wd568ZoDveWyDnZfg2/u094O6EcAPlPyNopnCorlmCqvOr1a7KC8rUBRZVxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772245494; c=relaxed/simple;
	bh=FDGVX/KNUX2AetrKCCyW27rscJzXvzurskuNPTs6wZU=;
	h=To:Subject:From:Message-Id:Date; b=QwhxBjy54aQLYaffuQAlm0tTLzBQ+XhcXTBSSXmpi11rELAoThTMckMh3txjA/FtNQTpMjeNusamrCWRc3eQwiGy5BaRC+9pAX6wihRgYKx9w4iUTdeyWEYwpTvWT1ldFxGOjJ4ZXn8fLC9tYlBCSRUKdI/SfFc61t41yg6/TDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LjRFgb4D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LjRFgb4D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7574C116C6
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772245493;
	bh=FDGVX/KNUX2AetrKCCyW27rscJzXvzurskuNPTs6wZU=;
	h=To:Subject:From:Date:From;
	b=LjRFgb4D6E1rCaJU3NUrruIp5p47Rr+s04s4fesWbOHjDdsFzWdPAL+T4Ryy4siuP
	 MuxfwiwJEpXm+Zq3xXR4L/5NKJmqJl9lffT+DtHMV+PyaqQzbGV9obMXn20usmXHvI
	 gmMbF1vRsQI+mwZLSzuXtsWy0/1mlLiLIM9ox/BUt9lqlRYdgENfmdMAJNrTnQxm8J
	 T1eG9KYI6N+clzizdM4P1EL87Dwmlnal24NXRmO5K1g6VVYkNoUbA00BqTfloo4xUe
	 z9ukVHUogVUgHSj96bfIuzp4zw7RraOoH1tk2AgMRejulRzGxvp6p+oKo9EOtU9Fr/
	 /BkqWWtcpZmUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929021048926
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177224549357.3368.4995836141496275516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c4bdea9c0d198d3baba9556c78c05c96caf2d886b0b5436d6bf6ced34fd4879
Date: Sat, 28 Feb 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772245493
