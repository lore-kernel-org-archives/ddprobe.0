Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 090733976BC
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774480494; cv=none; b=aPzQmC+rw/hOZr166vXLcOnu7hTJcD0V0vuExuSndL7KXJxVLYOj9zP6X1L6ziSONmDvZqLceG5W6r0MZb+VWko5w0FfXztPi6xw3CqotlorUHwKd7lX82dA6g2DlIrxyPt31tb1hRIxI/T1GkMhMugtd0onUzDjYyo9XQnc4e0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774480494; c=relaxed/simple;
	bh=4DZYF9hmGZNI1LQWU1AtaR0wEHNzsirIeTC0EtaG8tE=;
	h=To:Subject:From:Message-Id:Date; b=ZLxG+NTWne557IJEaQrC7LWvWB0OBFnN5ejSkErPJTopwC0uT1bVuU/7CMc1fKe1GTBtJJd1znkW99+OSs3OQLicVAWwx7f2+QbAXpd+IuUNh5eeiZOHe4mTYzPluXh1hfDt+AXx7y/try387VszaOyGILIr+djdsH679RdbQyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jx//QhbV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jx//QhbV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1361C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774480493;
	bh=4DZYF9hmGZNI1LQWU1AtaR0wEHNzsirIeTC0EtaG8tE=;
	h=To:Subject:From:Date:From;
	b=Jx//QhbV6BcdnYHrDKx9KLrFU79p7/ZGhTVWqUbfHwWtDkGJyWm0tCkYeBa2iCJ5I
	 aIZYHgNF+CSOcHc5h2GxYw23zXoD+LLppbkmZYbtXfr/PvcQsXnFSe4SbZDkt/FCsA
	 ci43Gg8PGecNRz7H7P0FLtwX44ecGB0a5S5CM9o3ZdHMaq6g1QIOeuAPMr8psee7U8
	 7UItxFyVwYwpYxQ6iKUWhS+F6emGXwFHeQjNnYhwBbgoaz9ioQYVVKdcu6IiT8le/K
	 nDa60Y77z2KGiq3omRgeTydcZERUnP10fM45D3aaCoWb6Y7LJFx9Bi5spvtCVpb51e
	 DZXnrvASa/xIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92281109E528
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177448049358.6386.16334546243841506849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14731a01fd050df9899b699c2915a92e6609d1a85b91a53622892c78e1c0a5af
Date: Wed, 25 Mar 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774480493
