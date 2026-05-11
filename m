Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8EB4D8D9F
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778534434; cv=none; b=ZB6g/KEDbvaT/DXjNM+5cPRgUofbFzUky1NdYDhJcCW+GIWOiFUV6Zqqg8uqnpniu7FgXf9V+jqrb6sBcqK54IOrDw1U7V63a74DfaQONsnU56SKkQNWWKIXD3fGUOJgB3M+uygOAj3x55mEF8Y21Mesoj7DhlWtNdB9YsRdTSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778534434; c=relaxed/simple;
	bh=eqcTXo1qE5eVv+vWPGmcf5zm261LWFA8VJ18IygeKw4=;
	h=To:Subject:From:Message-Id:Date; b=VFWEGIKcF75A7Lu/3zGGuergT4Fq2JeIIz8oikqYAEBvWCclAv6zXcWf+jSXElyJGfMgxvVCD4IRki+gUVknR8rb3qmoJvZ/joDtWlsFuHxRA9M5TBaWGLXQ2NhuPaYrJfzh8/F5zP0mrtNYIOsIiOWHsz4fsgJRuZTYaXU8fzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pbMzIQ0H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pbMzIQ0H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8CD4C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778534433;
	bh=eqcTXo1qE5eVv+vWPGmcf5zm261LWFA8VJ18IygeKw4=;
	h=To:Subject:From:Date:From;
	b=pbMzIQ0HH5JlFwEAJ3w89SL+dceD0Oi9pcnaWHmfKPBYqWfUmDrLf5r9UTBkagmde
	 4SHBUR24aYUjLyD1B3ancO0QW8/JPzIVvN6+m/DuQbSpSTjq3I2OLy+xwGrSZ7rRu5
	 9g+4kf/fWsuen/YqcdonN2C/q4vRQXkIrAL7+emxHPr+fE7WSkKanb4xbIrC7fv+HG
	 pqiRYBr9hOqV+zzk5LSWvwtPONyJztuAloUtEv1cIUiDLnyl0O2nI6rKpYacOMTwVX
	 oKP3wCqNCJwCXZvBdR2B43gHTQa7AGd+Im295Oro0KgNl9rRe8q0JrjTKAAu+y9stk
	 /12voRj6muCuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA15FCD37BE
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177853443368.7693.15822482037822327014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3158cd5cf7d7ca1fca5e46193a6ac515c2f28bd02bd52e4001bc88bfb6d19cd
Date: Mon, 11 May 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778534433
