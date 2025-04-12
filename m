Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F74F2907
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744486194; cv=none; b=pt+wZUw5GegesTWXT5KdZqogHuHqL2HGj182z2R/6lkHsXxkxm1dpEsC7tqA1pCYjCtw1TNIYphyoD3Ov2M36pAUtryrI/6m/XkBLQefjwF1c9y3q5Q4tRJZuWtKZsN1Z0ruVvrRRxjP3ZZ9FN7UypE29HSADI7P3jOor2gntq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744486194; c=relaxed/simple;
	bh=e9mEZl2oiWgTpf4nyI/GTtAHjaJ5ienqpI4pGoL3Fzw=;
	h=To:Subject:From:Message-Id:Date; b=EmSU52JMN0vaIP5TSilzVX+BMPlXGcWRJYl+yhuTEQlD/2ZN7ROlzVK0Uz16pfdgIbvbK0ZrdAab5XlpbVj2DE8HwnHAzewIooFGwIu/O9yFpIR7tfMGLJRpE4yJrtXYKkHue/oEwqRqXIIloEYakPQOCWyBszWUo2CLmtwfpWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AnBSOpQO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AnBSOpQO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B6DC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744486193;
	bh=e9mEZl2oiWgTpf4nyI/GTtAHjaJ5ienqpI4pGoL3Fzw=;
	h=To:Subject:From:Date:From;
	b=AnBSOpQO+pOE2qNeoeCro9nPlO9e1K0Q5ci4ANFtpPIPezcjW+9SzN2u60kG8gs7Y
	 4hHy3abkikS5PtsL3ehtDIdaaMIj3RB6EuDoo6m/jsc6bPxDMx12E31XNf1Ap7VBDQ
	 TGAp+1naNi5erlUOlEQP7I/XcqxpoSYqkyXFRGsgBZ5t2Gj61l89omhOGqpOY5UF9f
	 1IjkjMH7YwAJA4w5qpH+kPfHPJW40PTUTofj5PP7y9wa7wcUgcAlhCXh2XXNV4RHEv
	 3gzLLg5BidI85ePSo2qVAGLH7q+CwBEsj1pD9NcrNo0QF69AO9P0dZmG3D0IzEAZjf
	 oYG9/Pv1RZXqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A77A1C369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174448619364.25229.13433776893463850482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3216429e66cb6b88b59fe033798f2386a69a38d9a5ca59d0a472fcc06bfc3e23
Date: Sat, 12 Apr 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744486193
