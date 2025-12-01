Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35DEE36D507
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 05:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764567174; cv=none; b=JUU9YeDLIAdVUkF13cscaOjJ0nPyC5AIu/Yy/58sdkRSnFWOaaasfJcGGI+zCjWbwBBP4v3+gtNDz9TZY75uj+KRmBSwZvzf7pqUGDeeOnj58Ry9sKyfg+/zvLZtecs79z7+X2gOD/bgTxAjj+Eeon5ibWKYqJxev4L7ww6hvpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764567174; c=relaxed/simple;
	bh=lF/wQLef0BEKr/d+6SlcdtVZxOy55nQAGZq77pLumvI=;
	h=To:Subject:From:Message-Id:Date; b=ASmG3CqvVXvR66D3yIq2jO2ELyNjB8UPUzbIe+OeBO4hSxJihKgqqkuJaBqtP+zPVaWWB7kvlEEM7ThFT8s51gNY6k2dF9a+RaJtFyi7ZozZ4ldISfWSLJ3Tz/tsi5/nuaNM1RiJ2mhAcKxUo1FA5AEhFhtvcw29hToNG53P0Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jh26Iwdc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jh26Iwdc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2934C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 05:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764567173;
	bh=lF/wQLef0BEKr/d+6SlcdtVZxOy55nQAGZq77pLumvI=;
	h=To:Subject:From:Date:From;
	b=jh26IwdcUN+7IGkyXMcJyJUVcMzMbReQLxfaBOBxUm83f1HuC6nlTHSZyleQkxCzK
	 hDP5wT9Wu3do+lu4NpsAQJJObYVXGXe+NuQt/A66wyERLyuoSKTQhxvX2i4gbRVBO4
	 kZ5tCP/x5uU5UZ6DLwtXGCPzuCZeJiaNC4YJGtBkgjddLDz7Hn+jcc28WlOfwf/OlU
	 KWXzy5e//qgKREuAhgETn4lmudgqE3VzpcHf6SYm/F0fJ0+GV/oqPhXWdHCeQ5gMo3
	 yWYau9TO1sTWYnz0mxDrYTlPLhRJFiCOF4WVE2zxHe2AY3koFhHxkXJuVQi41j/Lal
	 My6QvcxUHFRyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903E0D116E2
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 05:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176456717358.18798.15127085905063138754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 698589bb6203694573a7ef120aa5acdc880e1e0cbd480752075f660c8fe84868
Date: Mon, 01 Dec 2025 05:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764567173
