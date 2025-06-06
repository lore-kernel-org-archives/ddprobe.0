Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A867323D
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749239395; cv=none; b=QWds7n8AOohLjMBueNM+UiCvLzJL34+khz+5CNSnL27cHk1/zajnT9YRaJAwaBu92eh0phEKzE45GQczulvCalTndRrfe/eODc6nZfCIc3zZUHnvVpz/GHZBHq9/v74AMOxcVC+s0ni8LEO30DoY4BjYRBIvZcqCZW/KqT9uspk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749239395; c=relaxed/simple;
	bh=pitw4R6dby2stkw0Q2UWHwGhOCIX7sSsqM8Th3Eb2ng=;
	h=To:Subject:From:Message-Id:Date; b=ht0TUhqjqEjZCuJAAG+Gcosli1BfRpP9jXNUKYEisg3nI9yLUViTPJKCvhrWwfnujN+y55YMoar6Ccltv7aCdl4ELt/MhwdzKpCSg4qzZm0FaLbUl+4FGggPjhexnMRZnrCH/dLTXkeX92sOUv+ok6ZBqA83c7VyZ9YbS1PK37k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sDHJPRXt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sDHJPRXt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16EDC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749239393;
	bh=pitw4R6dby2stkw0Q2UWHwGhOCIX7sSsqM8Th3Eb2ng=;
	h=To:Subject:From:Date:From;
	b=sDHJPRXtzLGUGrTqQD5jdr79k1Jn/y+HS2Lsydtuzw2TXjYmiPWV8lHzl4xxl8hN2
	 KTiD2+KpJcWsDgJBIY2Bn+qHIlvN2t5WtED3c9ERdeeKvEb+MEwsLoqY8WsU/9mc4O
	 G9S9+rW4TTMlABmehn5LpzGPLmHay6UAGy06iZNdoMGLFvUU9T6oQhaD9NS+yg0oaP
	 77hG5ki+8YDT9BSWufadJx8j+jCMfjzj7Ue/7earIrzV8GjYJ9RKwmXePeEFNRcCRl
	 VuecKiYZyDE8V+ILfZPCczJlPTYdBqVII2M6rhW7WTtX3mMszHST9wpp3sgJDaWiN4
	 8f1o2giJ+CyoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7D0C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174923939357.2189.9419603772997781603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb82ae7118ffd2e0b73eb4a1c468e3473365421e98831fd89af283cb176e9a24
Date: Fri, 06 Jun 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749239393
