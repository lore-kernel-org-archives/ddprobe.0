Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A853E3C1FD0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 06:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768976034; cv=none; b=ce2bDrqBhvKOb7af+pKmRodmC1801B3XoLrUDg+HmVAtjucRA+rQXrzSuo0RwUP2h/8lykz4KNysi5GdkoAN2tflZ7Dlt5I0329qwGw9TNXHZ+3eVPdIcLYxaDY78kov5ie4T/4W9pAsLPwV1NVPj8x6pz8+7gapH5ZzHB17Et8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768976034; c=relaxed/simple;
	bh=ApbcbNzRjUpfg5/35hIwIBNdduhnj1eGhJnD/omXFzA=;
	h=To:Subject:From:Message-Id:Date; b=B3tWnEtKjYq1vTBFismSE5+Ikvfor6hqdQn7sC6IuneN77/CSh78ftjSId5x0W8GfYhPW3T0Rb0+uCzc+wGzClSb5lXtISb8SMMEUJaeK5wxF9pyWyyycY7QLzLET/oflyWVY4C5rZes8BhTZEeP8HiNo1sm7vPpsfDxBKBvZ7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JvkFPkBb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JvkFPkBb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6137C116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768976033;
	bh=ApbcbNzRjUpfg5/35hIwIBNdduhnj1eGhJnD/omXFzA=;
	h=To:Subject:From:Date:From;
	b=JvkFPkBboJbVhjkDYqfgWuOpvyzC11I2VTjpWdPi4aUm0KgqEx/+UFi91W+qf1RcW
	 sURRua338T+S4wnj+uCQb/jnOAqANgKqmIO28MvSq63ujW9mwYB7C5yKvA6FaaAT81
	 xhWtLtNJtYwgAoi8AoIDBQc6ZiK018owB9fDxiwbpIPKJ4kkqfYWg0CfrIEU0MBGLj
	 8AWfqSvjNyyPoBOYD8RaeikdGVJLZUzcTLZQSBtrS7/9vKDFUgD9UqTGl1EnfLM9zI
	 r81aub/d9qT28ObXCmhJuoJPYmenK4WQQwvjtqSv8KB/oQ3xtkgTLb2qKTdNJ2YoSo
	 YprlQVx8QPWsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ABDD262B2
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176897603358.20452.17621385259050867167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ea9e4c7862f7c4f8bb1a521881ff223903e8810acd48d41bd04dd89f8556581
Date: Wed, 21 Jan 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768976033
