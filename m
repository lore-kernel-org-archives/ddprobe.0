Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0EAB22D7B8
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748536793; cv=none; b=Iv9hFgDkVGh3vY6B9tfuBK0/deb0ecltP4P8N4tWZTUfpdKox05ft+TWpSSX1dRo9v7psTC5v/EiQS/GCx9BCkfMo/Japh3yUP1ijSWLR940UvqzALIjjLraAn8LoZ/aGGavIldWvZQ6Ev1qDPeCnA1uEWLPkDQAEVRepDKfr8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748536793; c=relaxed/simple;
	bh=H2vCiKJWX0AVPhUvjMuM096zBc8wlZp59ew/Ey9/6lo=;
	h=To:Subject:From:Message-Id:Date; b=Yfa5lB16bEvZgiWNeyGHfesfN3OlqEYxjUzWeXkY3NLjVpORRQjw9W/phj/uGRq6L956hxadP2LajJ5h2MBgPSlcz7lR9dj/7B2x/ujsK0Woo9VCxrrHxeFp9R2ekNsfbys6FnTrDQYIN6kOzSvhnAwXXPEQ3oiflks22VmO3ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rYeU5QTx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rYeU5QTx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53F2C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748536793;
	bh=H2vCiKJWX0AVPhUvjMuM096zBc8wlZp59ew/Ey9/6lo=;
	h=To:Subject:From:Date:From;
	b=rYeU5QTxJmGbPp3LO3briOfMkntFCOvCWj2pd8gKiezslv26nCnyQYP/6At7fxkVO
	 jNo+eAwlJx+VNRP8o/p0PEM2cGP1F7JVf9ECn9L0PnirjiRukNi5VEXG4/Adkr3Yzv
	 ukfQ56kgvmb53pM17aYG7OesMz/PPSCPL7CxAQuApaGLEAPvw1IkLyInuYn5ZUMJFf
	 ntR0SjyEUsWO7QyJyFryiBePO8AqUCj4glhdO9Voup90pYxvRzBMFRCFiraLF/SACU
	 NCXsoHV8zUnr0Y0b4JC/4lLwSujQ+DrG81+0zV9HH8b3tBvM0+F5JISuyDVYHJ8k/I
	 N9JukmFE7qCxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958E0C5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174853679357.32744.4112442357635605719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f1eead9dd4d2ba8b45dd9d901f736b81f86781f22ee063ea684629ab372ea95
Date: Thu, 29 May 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748536793
