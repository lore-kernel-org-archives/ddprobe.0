Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323072E36F8
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753233594; cv=none; b=EIv8fDcWXl2CIqCQP6e5sX4+gVdIkFc0UXk4n5ze+rgujQiZm4HadoXq/uyAO6JPGexMPjaIQ3nSZwGJwt/lFuN81uNaiEeFQ8AaYf6XHDtlR1f6f3VafMOQsw0KCqW0YHk7RhBvnIGl0maF7sEYdjscTnZ+Zcdfeg8ETBSa73c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753233594; c=relaxed/simple;
	bh=+be6nPeZaacM8tAIo3u535IBNVEdIx2A5a1WkiSHEAA=;
	h=To:Subject:From:Message-Id:Date; b=mbUtDGtKiW0Wcq1rwj2Sq3SeK5oqj4sJAtW45oVxD4UyTsNDTbyy4ey6xZVhow1BdvUeB96atgcVZViHShPdX9jGBSzjaOP+L8HEumromuA+B/AtB9btook6DX2qrdz4EoljKlUKho2O15r6YxYRZCYgG7APA4XfKFdIoo8EAyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QnaXtlc7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QnaXtlc7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D89C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753233593;
	bh=+be6nPeZaacM8tAIo3u535IBNVEdIx2A5a1WkiSHEAA=;
	h=To:Subject:From:Date:From;
	b=QnaXtlc7c7grN14Op37v09sMb5uZS2XZPeumsm7tePtRqocHiSdkeSAXRKVfDyx+R
	 l9ZXzzaE98Lopm3qy1Pkn7Ut2KGVKkf8/7M4GiFUrbY4tYe+aXL+wDkUIMSkvLGJrp
	 59e6bBZFUeQ2UhGTeNfExggAidM248ih7rd8eEb9bK6qKcFu4CxBH6R+d8RXpBjlC3
	 WKZlJkl5PdoEJy5lvLFk4vSTbqnYnuYW8+x1z8DBz6mOYnqNTf0zvcCXTCE6LYYxkz
	 PTLzNlXzA9TJMx6AFTp0lJmoOhUGL/L+SlAhhIomhTKh4wr7i3V8P1p6CPfCriyxzj
	 Idcdy8LTZkgJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC27C83F27
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175323359357.1902.9279847361213843282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee49a2c3efed5aeb650e863b2be3a4a3c2d9dcc8eb9effab3c18e6aa4a7ff004
Date: Wed, 23 Jul 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753233593
