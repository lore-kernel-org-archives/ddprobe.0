Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D77F31960A
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787103634; cv=none; b=qsjheFBOsylJZLrjoiCadczKINFIbGYulAbTCOMx3jjPTyVLFyS95sShA9gANfcEPJWn6jfA2hPDHzu/UY9nQr9m4c9EtfoheNuBb09V40ovBRV6x+its7xbUnsl9TxI9NhnZRFqN0ZiFn1PUUB26pJtrKO/YL3/E29bR/8cu+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787103634; c=relaxed/simple;
	bh=siU/J+QWjE9tYG+NOOSGM0Hu9TaoLSfk8kpze8R6KAw=;
	h=To:Subject:From:Message-Id:Date; b=ukFWvNQic6uTOdnI+PqQEuiLqmRVmOmujjplP11v391KWPTQs1u+s0e6S9L4moitklw27aSQPBsWPrzFZIFlp/PD8m4APiALJg1G8EUdMmLg9hmrS2bdA+M0JT+GvTRsA1wh6BJY/qYKeulazymPnZeihUc/bIAXfziqclfbXGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OyzHaRrl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OyzHaRrl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1646CC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 01:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787103634;
	bh=siU/J+QWjE9tYG+NOOSGM0Hu9TaoLSfk8kpze8R6KAw=;
	h=To:Subject:From:Date:From;
	b=OyzHaRrlRzwxFrJWErGHgv1/o1SN6vfbGDmIszrK6zswFxJNykGLnnIkbxuOsla3n
	 FQLBPYO/tLWszi+N+ObpC0guDR61uP8EpeBjQyc01ZY2j3LuS7AwfOfIo15YPHbMkB
	 4I1fR9SyIJv6Ivmhpm7rNJM5vHm2eBMXCIwfSgu7AUJi/ZEOP7r0J7MwWDdGjBWjXO
	 BPT2gFxfhCVgqMjwkI32LmgIevt7pWm+e/+YFcka0IiVmPtSXUHcbOdwTgp5lGBsEi
	 o5xBEpjyfaaw3GEA7cmAPHKW2OjhdG0s9UopqlBbLSK4UApQWHmNfmXFXHESKfKiRm
	 sASJaF5+Rj2+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0CAAC5DF7D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178710363374.32636.6704972327586470308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0a24461c716ec4ec4d6f51e60a1ca9e9712604b91294d8374b20841377fcea7
Date: Wed, 19 Aug 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787103633
