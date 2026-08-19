Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CBB36894B
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787107234; cv=none; b=gPZXy50TSQU/Zw75qOi94xvwRmvvfKEP2VzMgU5iGeK/e68DnUtPdfuef6SE+78GZ9aGUU+1pha/tvAmR5vp6PpZ88CphXTTkGv1DULEptxxQJSIGVGKzUyNHgPD2n/lrXs+vGhuhmM5xcRhZL0tdL1JGRIC0MdOCcdFoujb6J4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787107234; c=relaxed/simple;
	bh=cyuVjhGh2fE3Dd8tO4+FTlvO/cUcq9XUpFOTOS3jYQk=;
	h=To:Subject:From:Message-Id:Date; b=BxdSzqc87Mq0c9UVHY1e/PzyWXnVKd78xP7WXEOmpz7R3ckhqoqUj+YkH+9rE77GjWnnaLhAsqHGCsEGijP6yzbcOhUij1ChWbakols1TdhInVMx5+auOMnfLsFMoykRaaHcJ73Wsa6y6cDRNnvIseFqZRa/oBS1ouzgbX1QfdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LmJZZqch; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LmJZZqch"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE2DEC19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787107233;
	bh=cyuVjhGh2fE3Dd8tO4+FTlvO/cUcq9XUpFOTOS3jYQk=;
	h=To:Subject:From:Date:From;
	b=LmJZZqchRWyYtD+76myQmc33jxxL1RqXxQF6hUsTjLKRqbIVmF4aIkv/y3tq27QAF
	 CKIcRy2wFC0ajZ6y+u0KMGN1nlXq6yI9ZAtEv8vhGD+dtMZLPowUzSCDruu/p+OlDN
	 DtWGBbZwVsM69L3nIZrUJGrC61ypdUBWnvbg7kvlNCtbi77PkxsDlU3dlrEf8HwHdx
	 Y88QxJ3nh+aocdgaUCbl0bzswbi6yEFaj8WJCP7mqewr5csEzge4TYZmuweOn1Tg2b
	 RtumxGfyNAMCWR2j6XAzH+aq+61WE7IMJOgH9Ta1ry27nr1SQmF/ErXifXROLc4bDO
	 j+GQbIS3ji0tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7F50C5DF81
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178710723374.20384.17029553795365515958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8bea1f806db87d8202e74d3b313e58e7af609d0af5e1d60bbed91eaeb909f7c
Date: Wed, 19 Aug 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787107233
