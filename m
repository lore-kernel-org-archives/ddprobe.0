Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F9F25F984
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770659634; cv=none; b=gqzRSW3kYqNDtzR+3XFl2AvB8Z7zxo3pQu1AjQTjmCE0zB8nS3pYoH+KSV+Hfub+AdLsP9Dju7+ZqnL5yKgqtzCQq08ZVyUKtWDHhOIl06Re3r+Jn3ig2kMHkeMNP6OzYRct/TCnxROHbdA/SSXhOvgHyRZKaNa9dqUCA6p/p8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770659634; c=relaxed/simple;
	bh=+iDPM+XcUBYkJ0ONbHoxKohW8z84jQUZXSrJY9vIqho=;
	h=To:Subject:From:Message-Id:Date; b=XTXVbX0lvkvOiygVtHXvYE7PKXcU/cNTJZBVjwgBLgfG3QtsYJT8gT/0+B1GxIgmnRgFpIZYZOdWinhIyk8q1cufpFcjsLgCYeHUGK5JtGg9fnhgjn314JtLtnohtL/6IKTncaNifUIVZwhCTOakI2wuQMaIccAl7OY7worTNj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=THOerFE7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="THOerFE7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC8DC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770659633;
	bh=+iDPM+XcUBYkJ0ONbHoxKohW8z84jQUZXSrJY9vIqho=;
	h=To:Subject:From:Date:From;
	b=THOerFE7bKKptPy6eDX7Ru0puJRpxBazNOuO/ueuSzMZcqNrEw/auO03fLueVkdvi
	 YcD/mvEPea9Nb1bNcfFggNio8bZFmZP+X2wiHxO+CKPX75+OzLKy2GqrZq8J1NO154
	 Lz/bsDquYeiRCIOBbGMKdQcGYzrF6F3PDnujo9P1IXLHguNUaUw/svWwkdvj4HX1pr
	 hOtbN5YgItaR+3GzbRBri8611fY8zYs5zVYI33mjGjaiIvFYD/2WfuzdO2bR/96ENw
	 9/ILavn9TD9QwY0C3q0CfTcfyc7BVHm0zmkF/lGbMe6dePqCdQ4npTz6M/jFg0+PWp
	 cx5Ij5FM7Vh4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9685AE81BD3
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177065963359.17102.14194031458607208313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba0688ff90197dec499629d8942f56ca4a7f4582e85c9455540c4fc125387b8e
Date: Mon, 09 Feb 2026 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770659633
