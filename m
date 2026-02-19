Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13CB0261B9C
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771519494; cv=none; b=AWbKQ39jgAF1Pf8IQviR2tvdohGCWCpkj9N6l5ArNW1RcfMeQmOeX71FL70VieVE2htY13+w3isxYz69qFaLp8jIyt4RZYZYjTZJHjxXrtvoonGDzX0ddO8H8y89MfIit7yH2xisJDZDGaXK0X/WVI+pDfHLCcQOFCwFpHzxB3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771519494; c=relaxed/simple;
	bh=U3wRp32aOOAGiqDrjCHt2g+yJ0UC0FOWqKWXsXfRvlc=;
	h=To:Subject:From:Message-Id:Date; b=FdSl70jSoJciu9ZPrPLgZNkrE2zahht7fKkGGWjf4xAY9aBENWubfu4V/YePLzeq5/DEMe+rUya9hkOjrJeIjCGVs7xztlCkQ2RsjxcUQGs+DVSNqAPkCGitys0NyoScwuFpiIdk/oysKmyJrJHlF3ZUuuADTZvkzgNmX7tSQkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGL6Dn4V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGL6Dn4V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B104CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771519493;
	bh=U3wRp32aOOAGiqDrjCHt2g+yJ0UC0FOWqKWXsXfRvlc=;
	h=To:Subject:From:Date:From;
	b=RGL6Dn4VMEd9VqA/lOg4TsnGQi8SNwcF7pEONsnn5uj6DkoSXVef1Wr9RK9SNGzpb
	 kWSfjKnqn1HYKFGoOnvZAPRrMi7fsDUlcqTh3+xb490xRZbr5MKht8uEiJ0V+SKA/E
	 VIhD61BTJnygF0wDGeeqRz1F1Z++I/GouTQ6pwn8HSlEtGxNUDVAm9guP6Ngq7D4UA
	 +6B6lqEI2g0idXLIjOrZ85m6DuvVeXvISkjTL6einDj8Hxk58H4aLIwZ/jpihxVhOs
	 WaFBPekM0s9gExabomYm+mg1MCvi6i75h8Cq2q4qslQKbk4rEJB3Ae9W7UL049e7oH
	 Ai3r7g9S7SD0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97959E9A04E
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177151949360.30776.2396016983751957207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: baf4447c68872beeaccabc61f7e6278afff0df7ba85255efa3a020128a993cf6
Date: Thu, 19 Feb 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771519493
