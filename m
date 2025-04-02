Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36EBF234977
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743582594; cv=none; b=g/HzvPkiuoXhXPTnubHFkph32ZxPk2d2JnIcnWIBhrxJq7nZQgS9Rta8UYVusa3xCQWji/56LMdDf7oNMwYHoLMSc92r5lulRYjiQ0G98yd8z/Y54+ozdpyksAgqyMbr4Ee5tkyVXQDkQL+881vrriSSWOhZyyLzYI0TVULZg2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743582594; c=relaxed/simple;
	bh=du1HD3vcUkzfHgFwBpTBDHB2L6b209d+2bN9Q8pHTeY=;
	h=To:Subject:From:Message-Id:Date; b=HYpFoJZbFjyei9ttd1Ib7CqsokuSdX8T6QW56txzUXY/q6iIdtsD2D/bkpNpaR0gWbYRjqY371i+aCgrGnhzKuULtrVWs0BDcc5jEy6WDscGheocBsi5wCsgAL12U5qBOD3eS8dxU5avgGUML98MzzyAGT8ItArPnptf1rV+wb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qUEhc+6R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qUEhc+6R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD6DC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743582593;
	bh=du1HD3vcUkzfHgFwBpTBDHB2L6b209d+2bN9Q8pHTeY=;
	h=To:Subject:From:Date:From;
	b=qUEhc+6RDSrpVGH/WvKIDUiOn+pqxRtS47OUciuhY3giodPBrcYuiNaG7Ps52m/0P
	 YUG0PgQE6BeJKrvNsOO/W31+t4iCuJEbPDqAhfmD3YiIGXGyrOX11BuClofC+Rr1Y4
	 JnyYm2fkxWz+jLPCjbgn0u0EXL5FfAWMAU6BVwHdiome4Sax4xR6ajQAnkkpfZHgt2
	 O5Zy+4tUBHoC903Qz3ezrANVsEUfcvyd3jJTlQtb17sqe1zBNbw8Hasm9vvLNkjqWC
	 d2a6GT+2WbztEAcBSS+uDgVaYpp1xUeff5VvPowVvbLJOAo7iHfOo7G3sHSuHJHxMj
	 gAmhpLL6MJgYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DA7C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174358259361.5705.11654574803749398896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 577a46f8f9cfc6f0ebcbbd9367c86dc38732687d59a6895eac463e1dfbb6872a
Date: Wed, 02 Apr 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743582593
