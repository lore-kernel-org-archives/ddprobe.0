Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42EAB386C25
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 05:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779081034; cv=none; b=qXUpLerT5d/e/6v+VCmLuQIOXp+c90Ik80cUNP+cbBJ6tEvp/FrHifuKflzMv+ODRdq/Ham1+ycVmYPKXLR4w/edR7HxV+oZ5VnlcuKDDIWH7hO7lA8g/+onrKkJ/pxCySo9PqRZunKizj23+uBKUc1CsiRwW0pwnSvQx+uYUMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779081034; c=relaxed/simple;
	bh=e2tavFFBoPhi8Z7Sqnb2HGoB/3E7fAB4AdEEhZBI9gM=;
	h=To:Subject:From:Message-Id:Date; b=JQiBDYlAHIfhUpsbrhjdiZ8CNv2/nWaZ/LpM5fhMV+Kj8r+ksXMxpmQ7Bx2LnyQXxAvkk7nN5T4KhdUqCJ7gLY/Hkk34jpP3/80WV2dAvUfBqXOymHCHDbzKIR+zSChujGg46sjE2lFMsCVgwfVEDe5Q3IB64fUg1xzJMwxlQJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JIGjZmuT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JIGjZmuT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBAC7C2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779081033;
	bh=e2tavFFBoPhi8Z7Sqnb2HGoB/3E7fAB4AdEEhZBI9gM=;
	h=To:Subject:From:Date:From;
	b=JIGjZmuT1a5IyyshKomB3eyzg8tx4mywsjR+sNcfwywvH97STSS13J67r1lKh5+x3
	 2D84MVl5O3hpkxALXDE9JxsK1j8adSjGWBSf4pwhJTrRzIC1eEdGnq//vKU3XG1EQT
	 TLAeSB6CW+eM3p6IYYNfr9kZ5+192ggtMTnX4O0Ryc1vGrKqx0aCjuPZSa5XeJyaVk
	 3EPyVNTlo5+/c+NSPe7W4xMaLnrkFvAoTlN0MbHIbLtfTOZnCbiUPuZTfxPAlFgKjN
	 NFVCQuerfmCLrtLgRBrC7SthsfbkeYtYTQSEa4JJSWgEfiZG93LdDLdeZjt0Mbsv/e
	 Bctb+xAX/qbSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC005CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177908103369.28873.10070908971561345292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd35a35a3c436778be0de56cb4a78f6eb0b574f23a53126738e1b5e9d8d168cb
Date: Mon, 18 May 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779081033
