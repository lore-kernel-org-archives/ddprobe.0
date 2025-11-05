Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3951B0F23
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762374594; cv=none; b=USOrExX6DytRkn57EJqDIUioW3orFo8wLxKIgqh/RoxC8q6LU+0f/Vb+yYxRS6ClAd1Lp173UcNnSB7jT6yiOCjgpXmQzPve8+FH05xMjKh9mfU7OJxb0Oi2przOon8/Xdsc8Q7Y2SArpkdgtSGsKA6sF2lJqEHJ8A9n4Tzp+RE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762374594; c=relaxed/simple;
	bh=YQZXvEyw4rJyOUbU0oH6NrvqXLD4TJq4rogGLB1OIi4=;
	h=To:Subject:From:Message-Id:Date; b=bc7odcjI8VvVVEUCXHbMJN4yTRlpTFKBmOpz4gd47VvX2MQEfzHYBbny4/Hnpk1lWGoJeK+62ZkmrEQVmRaf6jyk8Vw98ijspkgyOFGz0FrliUtz/PkCG34++CTvuCoScf8M7y+9yCHQhJwiMs97GRI5CYA669juf09oJVnfSVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=seIgSWnn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="seIgSWnn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4965C116B1
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762374593;
	bh=YQZXvEyw4rJyOUbU0oH6NrvqXLD4TJq4rogGLB1OIi4=;
	h=To:Subject:From:Date:From;
	b=seIgSWnndSgExDybs0mK8jyBLLvzWDlpNoUToaNT/Qtg/FSgu1HJSswk6A+Tv2GuZ
	 Jcj0edP8P+OwHLSb0h92im7z3CmaOOS2uqqijq7fyRYwwhccF/LT8VnagMnXJr63NH
	 HzYc9xT2tC+qOWSzui/P51YU6jTQZ7vjjJHBv/KCo8kIJAR5flULl69INtWHx3p3zV
	 XzfggM8dvAF3Y531dPkm29uxTJn4FlH8jY8Uk+7yMCgV5toCmnMDuFyyApokHGWE4o
	 IHaBwB+pJ2tHfSyzKi055sQsussnvI2ysOT8cnW0ik8FJqDbeSZgXr9mp6d3XnfkCx
	 ypQ58hubbKhBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A6ECCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176237459357.10337.3885624261133921318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ae96afb120bda99417d18554944a8de43d511ab036c192b71e72faff5406c88
Date: Wed, 05 Nov 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762374593
