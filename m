Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9ACA407575
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 14:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777558054; cv=none; b=iYsGU4GyrQ1kKiQbeGKDQSDJ1CxHr1phsfno0wVF12IGm5AgnPKKLynQTIzIUOLwUTCtLCgN7rDs1O8RwaULAJphIp2hW7TQ8Qza3HGSkm/5XUf99OSXKZJ8YH4TLg2hI4aeZv8UXGhMqZ9voyCaKLuk0dORmbr2DH5ekkE2l0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777558054; c=relaxed/simple;
	bh=46mEvQE8q7LSMCK51C+TF0deNFSTegJ0QmRlrj5BZYs=;
	h=To:Subject:From:Message-Id:Date; b=MstjXejQnvKCdYtlFZYnND9i/lEGj9BJNbck0YwHhoItTZW1OOLFFtryNAezoZEnEyQ6JQL/5RXF8rnFgOIVmNp92sVxd2mRD6Gb+13vsMFEu8f9QlBqLDpdZoLQ6960gIVbQvEAbO6Y2k4pEZD9QbJN9WRPnIyI8wDfKg/xT0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8/Hp2b4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8/Hp2b4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D75C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 14:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777558053;
	bh=46mEvQE8q7LSMCK51C+TF0deNFSTegJ0QmRlrj5BZYs=;
	h=To:Subject:From:Date:From;
	b=b8/Hp2b46MJfh6Tc+oz/vcSpBzYat0BgXaewa8gwleijLlKHtw7jM3F54+b7gc2HF
	 GAxYogpicLF3SNZin2TRGKEWO1xgXVh3K5vEvTn42oG6EvWs/GqPiSY672T9X3PvZC
	 N8r/LuAXksDRrTO9N+dtmJa7G0Cepvb0F967Wyyd06zVnvaYq2M7W6MPmBFlaRkR4c
	 nTjrMK54eupYEY0q7kCzrQ2ksP0sSfN9mRzJOrB0ZwTeZ5Ytd5jPImD8bvvi48mkni
	 TYpPeDPyvjkRU/hdw1W/NgYFZ+IfKWO2qCksNEeVfOXbL83NDWidUMkYYxL4/Ra784
	 2sWNAwUKKoIKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92A7FF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 14:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177755805368.12694.6679498610229463381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a736a9024f78ec33d82e7c2c5652180cee1f62595f6814d4b2fe9cf9d3f4656
Date: Thu, 30 Apr 2026 14:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777558053
