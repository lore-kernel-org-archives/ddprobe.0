Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C3E2FD7C3
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 04:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779941554; cv=none; b=HW+bprXmdaiC+THCyPWHXvAiwA8ZwYDMGM5vKp94wEo02ysOGdP/Yx4xSrtWFV3bIa8YBB3AmdLVbKzZBOf+Kyf5hhpjyXRwP+qiCGcwN002lNsYn/YYgOfnPap1ANtsR9aWbiklS1Z4+jHbS1HO1YgW2JUNOQshkxcPv7H3EaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779941554; c=relaxed/simple;
	bh=3QfHSpE1o8NlC9BrVhAdz/s7u4reJVNvIxig7WHSwXg=;
	h=To:Subject:From:Message-Id:Date; b=djhYi7KtvZi2WblTAJsxZhr7gUe/C7YYSLeS4VXwH443NNw7pdQbDgroRBZVJov3CuYXgNG605nwTK3ZT1MhdLKyIM0Rk3CKJDJa05sFXPx34mHhtaJuNHz/xUhdSmKFcB9Q3ZFrzPSksliofKyGYmuT4idcNOcohL9T8IZ5780=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/+NQ7p4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/+NQ7p4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF88BC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 04:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779941553;
	bh=3QfHSpE1o8NlC9BrVhAdz/s7u4reJVNvIxig7WHSwXg=;
	h=To:Subject:From:Date:From;
	b=n/+NQ7p4/JqzKFMO1JdUkYfZ//jWl5IP50pNBRrZli1mhJFYghAUc8SBNtqbRF7Ze
	 5RTmDbUKhZIme7Y9aDbXJw+YYJNRZ/TdjYdZIoTgn3IA24Qx3N1os8MHqP6V2hsp2i
	 pzOADH7A6JFHbrSoIwm1V86V4b6EDJoF9DFbcr1dWDKeB+y3BHi5QHVVWO0EDrEIOH
	 JghFInvwEsNH71BB+V+YPoy/ZHC3bUi5ejcZgQWwjr4iC0I+fb39Yqys+yyK/ap2dC
	 8EZqFEYvLgaqCMvAgi8dAIWK9R8lDO7kqb04bXUFJHxvXE7EAN2KKklnlbi0uvtXJU
	 a+ddDi3d2e64A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D67CD5BD1
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 04:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177994155368.11429.10175172864880120369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66f63b57b9437462be7a3bd72cb48c51104cfc7516377fce1c2ea02e65015b63
Date: Thu, 28 May 2026 04:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779941553
