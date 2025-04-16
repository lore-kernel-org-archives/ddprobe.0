Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FF71C861A
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744786794; cv=none; b=GyXWSWPQHocmNgg3pAD87bDacEOt/l4g/0VzlnkdboWSCRYYcj3xxONzbUX1imOWlgnpsqE9w3Su2PjnVYyavdfIrbWMSRDr/x34Zc8EXjXPT4Ileoq5o+c95bVxrUbAEUm2aokgHbM7/i4AM2WS57A7/m8Wo+0wHT0mEAqSbOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744786794; c=relaxed/simple;
	bh=FhNXFE9iovCTA+jRxdmUGQdFAi6soDmITyXVnpyDukQ=;
	h=To:Subject:From:Message-Id:Date; b=eOXyt9uIo5ADGk4A1Aw1wEQ5enDT/5kgmdBJsXK+sxISS/iZOFWd72jcxyEjenWCjA5fRVl0FS15Ipx9UlEm9OugYn5epYmR5fbcGwNd2GtXeSNNoJgHo4cPPbclI2XtGYJWEiF3gnxArJj4zeJGhduh/PJpSpPhnSKb0NibNy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LrUvRymp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LrUvRymp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B95C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744786793;
	bh=FhNXFE9iovCTA+jRxdmUGQdFAi6soDmITyXVnpyDukQ=;
	h=To:Subject:From:Date:From;
	b=LrUvRymp9czDuBAGclXsIcdcbie1QLi/aYk4MX3aei+46kFdsRYFbHJAggitXbhEO
	 9wlhcCx20FghNf9CTwENzegl/qUVgfxXFn87lF8ETVKYLJWoMCvTHzBQgeHjyD6k3c
	 AcAhotDk+Ee4plR2oz1/g4HcJaOcPFusHTlKtaHMK7cwvHi8mn7KVmqhsKkbDKiz1d
	 40BhLCqxwTInLNzRBLywrRLg/Tit2i2VfS0blnuUzzhRqvR0HU3WOZRIs6V65geEEZ
	 w+mTqCj2HNMx75Qd01eg387Br4XAT7LjXVKHB/dSeijP58fAmG+nuFLq6OsGzPSaA8
	 YxA/1s+tZgAug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F4EC369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174478679362.2695.14966494275504521904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6dd9513c6eb9289d2a55a767b10a81655ed99998f5e22d23f13b69a090793156
Date: Wed, 16 Apr 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744786793
