Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB9E182C5
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736136354; cv=none; b=lf8ojgk+G34odnziOKgoQMG+sTeEdgFgfxMJUqQcaAr4MNIKjMjgb4J4dELkItoFfwXjxXWZo+2PZUudAhFXAvyuzn1zIiNrCJ3vfDSUtgH/cr3Z+HErBH4fPFCrpz0en/xv+nR1Rq7uGKNbMxd3MJBel//czIyoL+3KjQ0GjC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736136354; c=relaxed/simple;
	bh=T9ftDxJ2CHKG/uqeStprPMlBpmxLnfCwKqRqJwuvN9Q=;
	h=To:Subject:From:Message-Id:Date; b=TA2OO7ygKT2WbiMfl8iywc02mjfO179t1lypndH2YwgOThOGKI7Q087U6Jtn9h3kSxjutTbfu8wLI0bW7MNSpZgaw1TGEQjvV0yd4FVPcIEgdlgJQLzOzl8dx+slXCAX51oluXcssMVWBxJnJYC5+ZSwYEkFJLRyoF7AbR2adTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D7zfWtJK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D7zfWtJK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA00BC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736136353;
	bh=T9ftDxJ2CHKG/uqeStprPMlBpmxLnfCwKqRqJwuvN9Q=;
	h=To:Subject:From:Date:From;
	b=D7zfWtJKJJ6aS85YOI7tWtptAkMMkJY5+bpUhGweaTaZ0nzy/TM+UaM/eGuPsmUkG
	 NxWYnevLbiL8aBb5IBKvI6SJbzEcqs4gNMA7XexQWVnUpN6hIV8YWpUt1MUIA1GAXr
	 C5F5cKYCwXUWkVp8K9XSBsAJe+VbBlyCrqXj8daN1XVAa6X+CGKlvkpyKbDFVrR3ND
	 sowHbcx52hl2hOOrQJMNwWmzNVM4crYZ5e5n2sP1+V+wDSYXDYsxsDcUnXnUBh7O37
	 f4F+/CXlJ5zZMiyVBhT983sal84rzr3nmAc2ebzSR40xtBXmAjY6rl9YE0pCb6w3Tg
	 doHGGwP/Cr/Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98112E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173613635359.7579.15458606458333272075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98c43a66e33dcd7bc590b0fe1399eb429dd112526c0ffffae3215d2b555cf5d5
Date: Mon, 06 Jan 2025 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736136353
