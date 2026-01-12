Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15713303CAF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768186434; cv=none; b=TnEZ4uRnrr8p0SWQ3ICsvjsYCLIjcG8U53PbfSr+/iHEou7SsLy9aQokHL2CZHL5mKnWy+f80bpgsg29FjSAx6YFnBjMUHqxiQPXfDBlwma5TO9fb8As6A4xx2ogVpZ8hDdC7jpcDFKJvNSeTkFpVXVJXQUhgEUeuiDITb6wUQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768186434; c=relaxed/simple;
	bh=IBxFYZxh5lMFYTEQQX+ADnKivU8fqXd2Kx3ksUcxZEw=;
	h=To:Subject:From:Message-Id:Date; b=SmFO2kdNqtCxSTL8j6YRowbHR+GcsWgxHYHZTrIVuESP7mlbYR778dtvYGYRt94BL8McitkJ0v7xCZz841l+ofWIwKH8Gp6xeiPo2Za/vislX01VeJG2hJW3iubfl6xTww/NQt8E38dcFQGCEoi45qACyqe1ifi+HkqyUFbqtAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HHIlegLe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HHIlegLe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05CCC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768186433;
	bh=IBxFYZxh5lMFYTEQQX+ADnKivU8fqXd2Kx3ksUcxZEw=;
	h=To:Subject:From:Date:From;
	b=HHIlegLeqPO1zbhJ94LsfQ83wnJdWMJkKuyXmTxiPnKhdAgJV2mcFVHqx2XS/cvpl
	 r03LAI3syvXiny4LP8owXZaCmBV1zHaXo2ypzLYQ1B3cRmP33V4evP0IXoKfK1u4Bx
	 19IJftkjje1M1y2WUHxz0QBxXNIzMLhLyzzGgvO8XjP2Oz5/IjH+MElYKLvt+Mo6Z1
	 F/WOi56i2p8fp4fPQtvOMkU5bhNoWtLZI+dQXbFXCczYEm7zKaQs025DoMMcLuGSeF
	 0uI0WfriEFPK9oS/r7RQqw+FIOBfpIoDfwsPQkFLOKdc2um0oC3jS33k5MIFPLNpUp
	 yzLM2/WtWZG7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7B6D25030
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176818643357.14284.17095471398537614931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90c5d3c1228deeee90f1b88900d1faf1fba72e81e68985437fd926f770ed394e
Date: Mon, 12 Jan 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768186433
