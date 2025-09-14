Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397AE257820
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757825994; cv=none; b=SoDvE3rvGieCv04tZenBrJV9/GastcJrLanyeBUKlcsvqVgPLs2wY6CywWef0MtYl85LdCmT0xM7DQs35KHRvK1EeHIm6PLq8SpxeUtDTBMLydolqH/64hiwojQuzTO9IDOHAUWYQD8xKJdBL5j6tL7JzS5/M1hPfDoFwvlIc+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757825994; c=relaxed/simple;
	bh=HyIMPUhHtZjBT7LTyT6GBR9kfk6EyQ1FK0ujs5MK0mE=;
	h=To:Subject:From:Message-Id:Date; b=JucR4vPRp6XWGWiZ3/GFwo50PNpet9CxhZd8D5ptNtiZsD8pkn7UL4EHsNe6zcCcuxTI2GO64g0+czhGEYsh1QnUsijzCq+v1NPb+87Ehxnx51Tg84VSSAKP6wYVUMyBF+yWyqh6uwU7GK2WjasmSY2WwG26skSBChsqO5bjpCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M5kYVdso; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M5kYVdso"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37BEC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757825993;
	bh=HyIMPUhHtZjBT7LTyT6GBR9kfk6EyQ1FK0ujs5MK0mE=;
	h=To:Subject:From:Date:From;
	b=M5kYVdso4efzWJVShBmt+dfLbKFBgs33vcRbF5OI0x6rmfInSSOHfRfVt6x/csPFf
	 l3gzzQ7LYkgbL32kVRqCgom+/viMjziUuZOF1xnu5Sf60WJ8roo1PUjAoemEuaAtY9
	 bMuhi45Cw2OckhiHb579O3Of4GDmlDTp/RO0wt07utQwcv2CXwJzhXE/1vhWbIn/zq
	 yXRukUilGGoDbX+DJajB1wKWJM35SUjlifHYcPFAHgavw2VcTkOcI7GhzDk+o3qpnT
	 k2lLeVujTGPpHN3B9qVePkD9Q+ZmTmIPdsobbgyQwJHSllnAhibnd4Px1LCd7t3Rgc
	 bNnlSbzpKLsDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92028CAC582
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175782599357.21994.10688395157819508205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 098b7bfd0b83120713001c1fcb37152b7e6c6a1f3b9ae22d2b4992b4cbe136df
Date: Sun, 14 Sep 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757825993
