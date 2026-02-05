Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249B11FECBA
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770298434; cv=none; b=RqKINKchN+JIvBue2Y9NwwD2hMvVoMbz20dCZtIId3dtbSOXtGS0xVxsv2SUjFtWAgCmUZ+KjnYqJ8za8Y8qpUeMUgNEQJhvjHyZrYweo9NZtrQWrBc78cr8NntXduPZpxEzAFr5f4dTypnNjao5YwJeUW4+GnQw8cXWzRw/cf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770298434; c=relaxed/simple;
	bh=4y6G3RpEXhVT8U1snTo9Dall1RwA2g4RFwELdZ/BLOI=;
	h=To:Subject:From:Message-Id:Date; b=TbVxEFzaY7UxdLiqnVM/tWXOk8ttlhi9MKigQgm6CsSjpfFhjlaHr7rhbeQi545N1698MTI5ipJ6G7FCLECJaMMYMRkEhbOqab3EuCpxdx434yAcGxnjcRcKGnumUfoUSDHNwXq7/fBnWlP/RitJeQzPUq+naZts6aHJ2RMQ6MQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h6rD0SkO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h6rD0SkO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0349C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770298433;
	bh=4y6G3RpEXhVT8U1snTo9Dall1RwA2g4RFwELdZ/BLOI=;
	h=To:Subject:From:Date:From;
	b=h6rD0SkOhJH0aZEMssaNP4sWNPPRumTYgnzv76QXWXNqv3giwShu1Mqa2bIKhj/t6
	 QjipOQwmL+7SN0PGqh4UHEboftGZZzWJYybYGRlFHSOzbaa4DLs2S3YrmDKeERMKsL
	 RTtC8EVzTh7WMO7OF7kQZzLiymPwW3oPUStmL+fQ5++bxJNcnEI1qmZnvamUxllMF1
	 RqRK+BOSWGJ9K+m+5cSBYsS7+wtYO/J9e2sw/QVmqQIdU8nZ7TcM/uI530DLcZsdDs
	 sjJLqcwVgu8gbrhtaxUD7IuHBoOobNRtZxQ8BeaCIJmrqzDqok5Hjvu6mL0IA3Lx3t
	 9xIat4UojaSIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9989BEC1EB5
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177029843361.27308.3741489382877732009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e548aa19d747dbeed8f5465e7e604218b56dd92e1dac494776b42ad3886616c7
Date: Thu, 05 Feb 2026 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770298433
