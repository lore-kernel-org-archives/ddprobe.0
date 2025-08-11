Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D82D22D29D6
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754911793; cv=none; b=PU8rYcx502zpDZIMB1lMZcGxA9hpYxU/HZOgmN5T23GI+ikiQIH2FnXx3DA6aeo9pqcDHNB//hHrLa3iHO1vKXqetRflx0HoB/KKTZy3v6mQ9MDCi4qpJp+VXAEGR1lHOndnJfdPxaCeBLGTReY4zmhjmQsgjqUwN0RseYDnLBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754911793; c=relaxed/simple;
	bh=AoNubrzKMclk23cnXpa9tH9O+0961Z99n+x2ynL87T4=;
	h=To:Subject:From:Message-Id:Date; b=fhSUVw9BPT7ad+BoYVt7RyJPBMmiRKtsMpwpxB67TP484VxRSTK5g3vm17xH7bsVEAZQuNwJgW/sYPr6NC+JmWyOfgfr/lQGAnBuETgTgd4QefkwoD8dm3ygRMLcNxcjFLhsayDUz16+ScLIKOiOEihx3nlEMDjqkcdYvnPcMgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QDQGz06t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QDQGz06t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47C5C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754911793;
	bh=AoNubrzKMclk23cnXpa9tH9O+0961Z99n+x2ynL87T4=;
	h=To:Subject:From:Date:From;
	b=QDQGz06t+YpizC6wuOmurVzlw/Z3sPLAzHaC0JxzCfZH2gCye61YWWWNLVRcZSwhE
	 z0xAb6gOSH5A85Dw1tkcq9oIQl7SDMaRb3h03XPUxnHNcxi9qZVmvWVg+09zAEyzE9
	 vRJa2Q0rIRTH940t4HJ4GBZkojm+uXgX0Y6yUmEPQVaXSz8HeawInxDK0MWjre6bKc
	 HNPhGMXfns7yNDh7ZKZwyNEH8uyyaxTsCuCIzHM2XbZLeqlXsbuxpQ5tlLVQHsmIXO
	 LUSMcfEeC1RqtNieXXGNcP9BTrVP41M8qycbwYk+UxC1AzPJiR6Z1FGtfx36slI3Ti
	 in6NFK/35CDLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91539C87FD2
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175491179358.18295.14157973713219668210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c5666fe7db85a461e62d1bc23fee78f80575e4879ede328fc61a3f4cd60d562
Date: Mon, 11 Aug 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754911793
