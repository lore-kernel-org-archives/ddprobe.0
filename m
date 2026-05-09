Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5515039D6E8
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 21:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778362715; cv=none; b=VwznVEZ31qA6D9T3tKOePHPoadQ4EvQS/U4uCPqGUN2COM3K9kL6xbB6JqZSf5OYcoqZaFUiHHbNmNVltUwQENsbWsa9ipR6RkFDY2+sCXxtqLYAoLmOKus+JF/DQelXAdYUj+UDu5MpZl7WmxrrmeUyT85AejFJ8Lv468V8w9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778362715; c=relaxed/simple;
	bh=ZFVT+31sJS9yCqaWf13G5XqnAj/ta336bG08osTiaQA=;
	h=To:Subject:From:Message-Id:Date; b=oGVUBYDn4E+VQqSe+2b9iPJJd6D3KHgSnRRXSbjDmeUy4GEYWpGpDfN63FrXKs+fZnqKYDRIBI6CZ2DpNDV5t5z+/iQSK4t3aYmASUbosMa7BgjA6ktxt3bvpukWG3N7dFTH0uJKogElx86aVPNt2eZsbdJidMl6OCcWRH9QFoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iNu/bStq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iNu/bStq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13FBAC2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 21:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778362714;
	bh=ZFVT+31sJS9yCqaWf13G5XqnAj/ta336bG08osTiaQA=;
	h=To:Subject:From:Date:From;
	b=iNu/bStq/dW9MDF173wBri3XcyXLVWb813G+BJ7Fi1TwU9JyhEldPJETJFN1pkbno
	 U17UOWRtFOyH35yLa3Ay98ChAZMnSwaVT+3mkWv0V2pentF+No3CYrJ3jI2O9azypJ
	 3VzwLJjF1A4ps1QiaH5hNmIQ9BBycFQvudUNg6g93YU8F4eBA7KT/jc+GQIwUkRU5X
	 DBZOmlnXEpyRkl8VpJ89J6JvujCG8t7tNrpGOXG25DsEcVwVLMfkH18QZDml1fej8c
	 DTuOA6zag5qi2I4iKCX2ho1ROXkxFIhFzwpq780GOC7SnvCsX7Hk2cZvAJT5QrPP+G
	 WDcJSHw6qMWOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC9FDCD3447
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 21:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177836271377.476.5794869683094443938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ab576ec93149a2ca56bf43c861ac6163c9f94ba4138346b03274d0ed4f6fa87
Date: Sat, 09 May 2026 21:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778362713
