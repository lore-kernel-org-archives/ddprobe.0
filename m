Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287E12E7F20
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788309634; cv=none; b=Yh8wkwKqhDCUIH7CG2cBeZvuFzdzQpBUxRPo/MmrciOEcdBTHkzjkpiUchMVFEO+JEUAByA88krUsHVhT4bduemaoBiNAayhrdYQ6HHpM1QOFy97t8jBxsOvr+Bd5Y3A7uutMk4yiN4hQHA7RzQqaiq0TCS4tEu3kjDlGGwBgHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788309634; c=relaxed/simple;
	bh=T3sDfeQBpEi0lzSO3lqpSex6lTYWY+gQ/++4hHFVOPo=;
	h=To:Subject:From:Message-Id:Date; b=W2K8Vxd1XRvTM0+31OMtwCo4JTefqFt8gIXiI1wpiAV/9sCequbEd7soOtYRX3rMDuwKxp8igRIdwcvM376z3pu2z/URr+pNTprnyj6Cg/OT/B166880CkAkKXVOqVy6pma5IcBY8T5VqF9X4+6Qa6UHEU1bOMW+hPRnqFzLSEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IdTV6sEf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IdTV6sEf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF3BC2BCF7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788309633;
	bh=T3sDfeQBpEi0lzSO3lqpSex6lTYWY+gQ/++4hHFVOPo=;
	h=To:Subject:From:Date:From;
	b=IdTV6sEfENVjjhRzO4CFlTf2/vo/kueREb3vtkE88mgtXvsljHtvJjNKJ4tdcfAHm
	 ExbMC48f9TcqMPnojlPlwXZIZzEySEIMaQfJBbVF5uZ8/IE9vFtFA6hvWqvr+BYp26
	 +mlO9/y7vbV9oTe0bdfhY+dFjUs4aemrG8j5GuPHY0HFD6pnXrtIdXoJWOpoTDYWdo
	 EaTdpRadJtPtt+Ldq7Z5Yn8SuWfrX8vyb9p5hRlRjaGtSaFmTUDljh4IPL9ULQ0/Gs
	 Ea+w0KqorBgatD26S11uvIBnvzRtWMdUd04lxZZWJALewGWrI1Bgos/vcINYcn7wjK
	 l/XFYFg6hFIww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA797C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178830963368.1806.4593887069358398316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 296df6b206ef50108dca345def758f971c49c1b80a8fc14a266c00429b99429b
Date: Wed, 02 Sep 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788309633
