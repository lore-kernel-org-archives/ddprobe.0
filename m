Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 694334C61
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 01:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720921223; cv=none; b=N4JReoopgKyw0AJuSh3ZgGfdFNHNzvbH8uGpdqfEXfWioqI/nlHbrOV7Xi6VY+AuFWVMHlT+7H+wYZRqnCStIgv1P4cLy1W48ZPxHhmGnyiw9CRCyG4lQ3LqMMyXkpCFCZK6WCeeyfNT7qmx68wTEYWvKlkZzGC1m5PK0jFLnPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720921223; c=relaxed/simple;
	bh=VD2dxU4Q97ROJq0rRHD87N5fc5SMKqILLHzejByVvjQ=;
	h=To:Subject:From:Message-Id:Date; b=nblvFbHYLAVfWto82fJNG3emhvGRWSg4A7QoJ5HJDX8SwZh6G9/P+jdrbD4xZY+HURXqZCxmpY3XHmnPT+6a83509VoooNjejtEdxkddiVoPYTm+HgHk0hfGkBlgdHLBVnI48jXrtt23hXGquQDW9c2DkWRMembHQHzgRZtgwKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/CpEmGk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/CpEmGk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBEB8C32781
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 01:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720921222;
	bh=VD2dxU4Q97ROJq0rRHD87N5fc5SMKqILLHzejByVvjQ=;
	h=To:Subject:From:Date:From;
	b=u/CpEmGk5X5bjzMQX/ZgvaYcTtT0XK7L7avc74yaJUPDLhjwIrsUx4EdpRo8ydEi2
	 O4xiy74cbAoggiEQZGp9VzuLLxqAFcEI+qh4lBibhPZ5yC7YgYPPH5DXZZDCtrJqEQ
	 lfvScA70k50vLICXIWlCiFGOyqG6zmD+Xh3TlXlGgaU07MrRt+mdIWyOEfYYFwOanl
	 Qgc8MQ3bwKOYHlGSLjqn2n/Uae4BNzfu2NsxFJgmW5k2XFEeBzMbaiZtbX9SDVV7pU
	 PW8qNOCbUKXroNFW951vfAw+QFYcwlisSXPC8EvqCGz/4uKJg4puIQUr0t4S3BSwGV
	 wpuBlMiuvS+jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C244CC3DA42
	for <ddprobe@lists.linux.dev>; Sun, 14 Jul 2024 01:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172092122277.25053.7525512125065994840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f07c8facd7169d46a030a38a034573049d963207d7ce1c39d7ea37a52ec93d9d
Date: Sun, 14 Jul 2024 01:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720921222
