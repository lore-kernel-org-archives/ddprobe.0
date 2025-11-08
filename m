Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33EE438D
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762629594; cv=none; b=LnIV6vQeGtePV0pf/RfFeMr9SICWxtcxRmx/ZamZxE0cAWRA4LoH45Hse0JyKxezgGEwQV9bPklJ2ICOzXW55BDZmUtqwZ7sqsAbkoNy6TItYIYeRZt8MA22oH3wjt3PhrsaT5AfUEEzQLFQonX2RZvWHharD/YHRGhC0kGJCHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762629594; c=relaxed/simple;
	bh=zZw1We68vpmkkjGFknCazDjPgf3MA/sT25bJ8roq4hg=;
	h=To:Subject:From:Message-Id:Date; b=jBZloei3BuwdusvISA48b3lLVDcxJEaYSaT81bgdg2peUVMKbRdTtitu8SzB6dctQwOm6mC6BDoujFg0cT3rq7HpQw/wNNo+p8LYtGHhoKL/46fof8A5lFqVgDC7pydODZTlWsRNSZk8qQ0vA5gcnHCaZltVM9ynlzo+iCjLZQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HTfjF1pi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HTfjF1pi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB2E2C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762629593;
	bh=zZw1We68vpmkkjGFknCazDjPgf3MA/sT25bJ8roq4hg=;
	h=To:Subject:From:Date:From;
	b=HTfjF1pigplb5hIzMUvZicj44bMMAMg08nKthuiOSA9KkulOeav9dlc+op4SBjJcw
	 QGW7FtArsm18ADNgap6db6HyO/9HcgmwfNyAO5OsNuSIUM2x0pBuKm89GnjcEh5LAL
	 4vyQZjX+21cuDhe13KHjL2QoCKWci74XAIXPlEh7y3pzRo+jr0VW6209SXxZ48lT9Y
	 utHxpKfiitmEwZaB+KqvxeRCdrbwUW2l4/1tvN134A4W2NMbEAhl2cBGnJToFlimnc
	 wBXCXKxRUuMDalsfBDO5uzMBghUHbR+2b+l7JrOwapAx/P/6WgKkes0TkqHFg/FRrL
	 geRylk9alkw4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4E9CCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176262959368.9847.16779572381474943380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 216357a750f0af57a725c303ab4c35407e111bb4a128a600f65cbd17edd185eb
Date: Sat, 08 Nov 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762629593
