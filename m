Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E952264DB
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752640794; cv=none; b=JVu7NJpKJNWWu3qHdR4sDWQ5GXJn3oBDtj0yBggs6Qi5uINCIKUJ+Y2kGUXfWm1wHX3D1QBwVqoaPQMiRlQuWpG0RA5EeKgwPCUXg/mf6e4nx4jcsjT4NLQVmq9R4CmKTeqCwkFnIK4m7aVYnAZSZL3Lp0eLwJZVQjjW4O/JKBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752640794; c=relaxed/simple;
	bh=cFIG4PzdUBBdMxFpGZVr/sK+fNP6iqhDNTmQdGC72SQ=;
	h=To:Subject:From:Message-Id:Date; b=E2Z1nrDCCizjkUIEvUq/G+TuOG84YKRK+2wP7DArxJBlzpHQ8A0YFYDMDFJZ0JoJdZZ/WiUA7UsDgO3wLol6C3CTVURG85A6jf3iXflxfY/XqzdbUJVk2leVvHsjE8W3vL3F6Jozwu1UD3tBHkp4EkoJ9qu/0M0wBBPp1Akz5k4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOUt5b5/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOUt5b5/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FBCC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752640793;
	bh=cFIG4PzdUBBdMxFpGZVr/sK+fNP6iqhDNTmQdGC72SQ=;
	h=To:Subject:From:Date:From;
	b=lOUt5b5/4JnjqamOOJkNUupR94nd/jsBbMnKUvXgrJ/OfI0src101syrVgjFfgJTC
	 PRFAavuQ0Q49f1+oiGC2+2fv5hzVuPinSEOTDFpU3IjneVGRaVnLLyr80ZVkfCOEDs
	 UcBIRxTbyQETdbIe58UUiheVpVGzzugR7hRUddbR9Ken1qN0dKT6QRIBS43QF56Zlg
	 5zrrbzL2ZQlVv9TgOlBepEmJf/uZWBQyG2hLOJv2mPCWyGi/QpNp7Hy8b76Q9eheJx
	 NEv0PYAgsYz48fsILsuNB5TiLjiQEiqsT5NdyF1+xmoVetuxBtmc1+LTn8oXUPBKIH
	 IQFOEap4MDMxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96704C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175264079359.18774.1634996851079081413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f73aff42742d61b768c1d1ecf81cb44ec1bf9652e68f54884429fe7a5a0b55e2
Date: Wed, 16 Jul 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752640793
