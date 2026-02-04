Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 802B6381C4
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 00:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770164034; cv=none; b=cat4/mhpZOZOEaJahlBhwekiuoMt4Ktc1fl1DHOnhGsRRhlkXJiqv8e4WgRgMNYTMf+/UyA4JTPc11CN957Tf4tTWYOKGxQuz2Gli0gUUHAqM2V28Bebll8ElClgP+jkbmnyU2WaCmbvXSwZq8ENz/1l/t8q7abbNiS/KNBNbnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770164034; c=relaxed/simple;
	bh=kkydNUkGz89EjYL1DScTEFqeQafYzsTzTLsYJRW/YBY=;
	h=To:Subject:From:Message-Id:Date; b=cgyiFn8O/ULuLsqeiuGyt9zRdlfCyMaj7IGbZAdeNWNdteYKhbQ25j4IXdGX0ae5kWdBH4jhJNE8jJcwanbf/orjyb1/YV84udd3BIC31obj7L12+Vsdo0qeV9WgLHYPj1A86+8nfw678jD1wWfSt+xJ9lR7udR/SRZbcjCLz8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=timei+5L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="timei+5L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5A6DC116D0
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770164033;
	bh=kkydNUkGz89EjYL1DScTEFqeQafYzsTzTLsYJRW/YBY=;
	h=To:Subject:From:Date:From;
	b=timei+5LvIP6smPsmJR4Gb4Ll8+yi3461sxGm2tsa0hiwQfOlUnHniP3PVzwQ7rv/
	 pde2YB++PgrRPl3s8HaRxBR9Z7zUILFqgS28ct+yrfvWQXjcIM5JzQ7Y3cRlosO5WI
	 sFHQCu4C+PGnR6+JPX2GntbJuu0KpmRZDiMngdQM3IZSTLILwDk3cN2dp9YiQJp8lG
	 qd5vRqMA3IzovQgLNzcyOceTzoq6c5wmLbgl9gET9ao65VmFmRI+b7vng1f1kk/sJm
	 I8eSfkXPbtaEjH9LMx8lP71M9pIst6mj486rR6Cmxbvf1M92+VXk2eK6f+HY3+8Ryn
	 sIbenS+yYfCPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EE23E8B37E
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177016403362.26713.10303257671483395923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95ebe9daf35bf143eeba918b0eb755a5daa525fda1a116e97d3fe36a7b110b24
Date: Wed, 04 Feb 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770164033
