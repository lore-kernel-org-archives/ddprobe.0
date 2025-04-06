Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0712A190485
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 17:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743961194; cv=none; b=gBKtHzPxDiqzvYUHj6fuB8IX3mECo7HxQ46REDp5/sLYo0Z8FQQJHm8tCH8H8/H0/EQ1KRCLTHwSGSJQn955VpWP63KGNR9zoJr9r+OH5RxnJwQeP4SBrSQ66Ot6ydWiuuR61YcxbMbiYxX39vKXcXQ/SR9Mlx8AMqIGkG8AMBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743961194; c=relaxed/simple;
	bh=0DpNmtOWerY9TU3MspuwofnTR5tU/Uu5MpBxWVC73LI=;
	h=To:Subject:From:Message-Id:Date; b=MCmB9g0BKp+FLm8KG97R4C8XBMCUjmI8CPAZzWwryWTWQUXtf7IltzzIagGxxVX6GGyAi7dWDn+H7EuCLVYDlqlbQ0v/U1W3URisAcGBDj17tCQMFqvF8TFF/9360yd9Q0OgqynQvfIK/8E182o2h/dfGIRZjPNljz/tR/sd1+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2E4h+Qh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2E4h+Qh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7243C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743961193;
	bh=0DpNmtOWerY9TU3MspuwofnTR5tU/Uu5MpBxWVC73LI=;
	h=To:Subject:From:Date:From;
	b=F2E4h+QhbZwD0Zv/spJ4S07bpo1JAoj5wq0TL5lNqUiRJYpjbMzIpeoAua57+nlYJ
	 8oVbwTSk7BnfYjwi+vtZUy3SD1O3hil/DTldaqIZxXB70fMlTw9LTVuGGnxAgad09H
	 F9NZew5rsObzRUNY0GmFAVxEai7Kcsup//FAPaWhZ20SHqD2h1lI0aUoWPHYtkrp6t
	 9Rmotzcb6etkIb4eM/YaMxmx/mlJdR4/GFyM5nZsK6gEXcDmtmI6HizgmUb4S6otqa
	 nOb0Pw8B2XFMChzBdXcndPI1LP3FcTBxk3UNBAxq2BFuetTnqAjLTSjbk/RVTxswxz
	 37xH9addC/3RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD092C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174396119367.14204.3260267616959766863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b8d573df0213a4e8d8f731fdaa1e10d7922a59c18468859831c1f4e86602717
Date: Sun, 06 Apr 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743961193
