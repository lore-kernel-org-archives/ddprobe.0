Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB6D770F1
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728753954; cv=none; b=oZN0RPYETcFB+jz7s89a6N2I6PDqgAdT50ey72hCUApQwmvT5SFQWOhVN+1gZEkMY1KnV3eIcZebMwrXeeX8iHj3eSLxLW1X1Ooo4cHI3EJeTy5PnpZ5L2Tu53c6DZL0LHW/YePTEJDTOBmNvvhT4TYBYwYARIOe4/zr/khcHqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728753954; c=relaxed/simple;
	bh=yq1VYtfScSFEQTSPDcvYQabLwKyrI9gCwoey5/BfeBE=;
	h=To:Subject:From:Message-Id:Date; b=iWjOR1+2MfX2ODuf9AaJtc1mcRA3NhWWaH7KEKUNcjlEZZQ7K5snrjoKxOiSSEE/iycgwHEBpOS938Lp0Q/Rm+fFcQBs3PUtZLQPNchicoE8NvleT1/jO5aF/VFX1Aq4O8P7zf9TM6VVP7luW8V9pC5wGmf0rzW+hqhBCN8FvOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZnAQ5K84; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZnAQ5K84"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9949C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728753953;
	bh=yq1VYtfScSFEQTSPDcvYQabLwKyrI9gCwoey5/BfeBE=;
	h=To:Subject:From:Date:From;
	b=ZnAQ5K849e4OyL/+pnBnbew6dxccFMBeLuGyVy4GY2HSTkm6GSu1tJRejfLB9qwor
	 hWUEitd/p3uL0YuvrkCO5P1oc1W3wUR4EJyQCaE1eviiFfixiuoqXZWqlFqSIPSP2x
	 FmnkDzL1sDuOb4P2q4aBGpxyK81B6Of3waE4vy7yoqUB3UFtozJGYIfo2g28PQ0cGX
	 T0w6ULgZByIx1NG+i/dcRbXyE+PgO4uCk+7vEGkkVS22WYYQNNqQjQ/KxHKi4OA3+7
	 uIncWXsIGj+cNUJw9qfXPjVTnTBm+aADKHo4eU5/+QD7A0WJgBUSly6wr3aBUG0SII
	 /yasUoqbTrl9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96ECACF2572
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172875395358.26642.6096554102915001874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a9f792e22e1bf632c8fa7aea7d1c02b32fe71dd5d1cda03ef6d7709a18c664b
Date: Sat, 12 Oct 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728753953
