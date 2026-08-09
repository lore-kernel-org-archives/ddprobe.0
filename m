Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BCC4B04BD
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786247434; cv=none; b=WzuHJEhT9s0Y7y25YTMoMZulsdGyWLxXFWiGuHoMPOT05rIcl1qzlNPV7LvkZs0lfnV/MDirGjP0d0oOQoHf5UFwwKe0HdzcqCMZGqC7AedIsvI76i0ot4rWzy+3b+NM+wGfUAeh+oYvlUdlPg03MtPyrRsGh9yPJMzSadSf3fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786247434; c=relaxed/simple;
	bh=aRCwmXw3gJ/JhJNV3ZeGQ7K0NN3/OGPW0nkVae9Tzx0=;
	h=To:Subject:From:Message-Id:Date; b=YqYLN0w2Fvv8eFr5SbgbHsaKhMT80p0tiBUIhdQtVhXK9u2+3yL6WUhN3KeD2bnodRVXrUwr7bhpS6p4//A0BI632Y/Fs3cUCU5WzpAr6QJsgmmsZLFUz4Mxv6+GUKgLsquR9u33LVBZ03kN2kPGQYZmxMqP3bUgdufURkutoh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NLCf0rT2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NLCf0rT2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5269C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786247433;
	bh=aRCwmXw3gJ/JhJNV3ZeGQ7K0NN3/OGPW0nkVae9Tzx0=;
	h=To:Subject:From:Date:From;
	b=NLCf0rT21aHWVNDGaUQD7+mPbWscim4ji6pB6DXUhKHXPtlScbusNng1MrZyAPSm2
	 MCbvVXV3ZRqL4DFTL3UiRkFjXfo8+pwlCpctRr4KKJaAm3vfmK3NBUaWEpvaIO2mv4
	 C/80KyuBrT/G+7pCWU7htq85kvxCHKhEw8d5/vxxBHIotCZ8MeUZfmW7FL6ln4Lm+G
	 BabZJTUmuw1DHYyULjihmg4Z+qyONMBB6lD19g1RSwPuLZGW7aCYwSvMy20b5npHUg
	 zhc340iAGP+5v0UbLqXmlah6j6R8r4Y418ZvGbE6Ke7rPT2MpItPjuFYiN+XQhXmgL
	 MtkQF60o41nWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBB0C5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178624743369.14589.6376741471076480450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff2b05a8b2abb254ce5f2bec3e5449d7449bad6171e1bd34db27e54d52fc9ed9
Date: Sun, 09 Aug 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786247433
