Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610407FE
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 00:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714350143; cv=none; b=GLeaBKecvwwk/YEc9N/qXkt3FxsXUAzMI07dKPyXLALnOLi0IbLFj5P0sKoJGvV/vLP3n7z6Kg50WJgKl2/6BiO2Zdprjnrgzsw+Hm2HLeKKVkcwg9TZ2/NPHu4T0avWRVuGy0By8rXusXbz/e7aGugHK30OrOOY+ChiQyQ/B6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714350143; c=relaxed/simple;
	bh=Cia6hHhDe5sXu2IRA37+xuoxE5toI2bwbMsmSCBF+CE=;
	h=To:Subject:From:Message-Id:Date; b=cZK8ACzWAINgeN9Hc3uDQFveAZPsT4xfOlLMSii0IKtUsr7nN69v8daOJmJoZ+VSO5rDir1cOjSuHwO3oFL4veeSlp1Vvms2jShBMIPiehrxjdh0enhG0FMqtdvC34c74kEEI0e3OP2Ah9VDFxqQ9dzjl+F/iXTHFfjc4PE8s0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tVvMtvaz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tVvMtvaz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA04CC4AF17
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 00:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714350142;
	bh=Cia6hHhDe5sXu2IRA37+xuoxE5toI2bwbMsmSCBF+CE=;
	h=To:Subject:From:Date:From;
	b=tVvMtvazIMcPg3IdHORDJjiwFoog6CxU0FRAtsskAQzh7V0WhZ+pdekagf1TtKTzU
	 mX2pE2kEyh4/4LNRoQ5gQ12FgMffL/r4y82ZgGCDkpXTBrcm8f7ggyjw26g7iq5bTH
	 g3IgpCTTzedVeRcsRG60mmkRhEOyKZA8Os/F0PLTTOaL59YULU2y/00xqenPF1pb0w
	 UIIWDkFALgYryvloea2U5u685K5rs9u6RJS5Oy3TNxZsew/Z7bcO7sFz5VDLnxnt6c
	 ZhASzpbfYg4bjJyDn8IrPsyPrljd59IC0XzldgSja8ikjmwQwqvenwkSYt2wOqIS18
	 jJ1ARI15idhDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4CCEC4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 00:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171435014283.1134.403853461432908822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 782f789cff380284f2163f5e8fa9e9a880a996f530c06b0161e4709e7187f9fc
Date: Mon, 29 Apr 2024 00:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714350142
