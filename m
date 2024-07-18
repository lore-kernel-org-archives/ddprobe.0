Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E22AB63A
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721324754; cv=none; b=hEbupauuGmHe+HTmt4Km0SypjCI2Tvvnm86rMP84qbG3EuPeme/ggHxGaHLj50xk7lxdFwTsO5ueAKXE0J0ihCC9saTAvCX2S6Txsuh7S4e2Ci3BMHEJ5IYwkN0RnlIzBBltOQOPdHfUpRDdpd1csylG2xOnWNWJVK3S5zGLiJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721324754; c=relaxed/simple;
	bh=LkbvZqWVAIALoArVsJYivW/4vU4apyi62+UC5YFS6og=;
	h=To:Subject:From:Message-Id:Date; b=hBHGbHfsJk/2siJ/i/gXqeFe5FKeI7EmDeT6GxzTy8OOuIUU3obsBVRDNpVZzeBb4/K5iZnP7VzPKHCM6Z8UmNVOoFM7Le8Si7hRI5V3gSmbh0KS5ZzxdBlklZyRT4TOphUC7Jf04z7yVY8KuHw2sbvzC30XT/RkMXrvHw5cQoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2BpKCSY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2BpKCSY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B39CBC116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721324753;
	bh=LkbvZqWVAIALoArVsJYivW/4vU4apyi62+UC5YFS6og=;
	h=To:Subject:From:Date:From;
	b=f2BpKCSYs713SY9yyJe35HiJjzQ0+IR3+28YHuvmEPXpmeAmLOTKdsPjsnj3svayM
	 NZ0vaAVUJjxwapzNVrkJZqXmLF0IiGOlQqWM/5EuQ+UUbU8o/jTbVup0IEwc1Y3/M0
	 By1X1uyutUXKmU9P621kE4cn7ODC69L3mCAUg4kCcV9cZj1ysEY51QEe8ShwD6XQd4
	 0QO5yt/IECoDkerNhvfznUsA5nDhsAheEcVTeW/03dBAsXYYXuXnUpbUa6Zv9FygB4
	 B1YmT/V3pCSdEsLU1U3NWxvi9hkH0Ik1DxbnBcESFzm8S4nkXXJoorvVQFb8B2ZuuW
	 ZsIrpYeodgMeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96237C3DA63
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172132475360.14214.14500530535286567784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ea5b5926c0322454bef0e3444eb685847baef6cb30251c95426cca8f434ed83
Date: Thu, 18 Jul 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721324753
