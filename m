Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA76523A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758086394; cv=none; b=kPOK8rJk9De6TlnL0SzpMTKW5UtbJV8Hz4n2gIw6GXJho/Q21/mFgR2zY3IjliMlChWapRxDc6Hp2cVsSSD1wHab/mpWDtbWOtF27E7xlQe2dN71DAFNtV5IsGs05w0nMVTHAfID836DH4i2WJY7b0WdQfhaK1LCQZWJD737fJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758086394; c=relaxed/simple;
	bh=odKWfYdf3xrC/dUqvFGh5hwKlIsRG8b0zChRdXC8rU4=;
	h=To:Subject:From:Message-Id:Date; b=OQPc8cttnmEtAkv28jU/44OPigXpFhCy/h7xJJ72DDCBkmprjv9MN9sgc6UYaeYhVhGVSozu5gzHBrJnF9NHtqmHBJXCm/3Uuf6EhS6GQrHxnDFZndY5FTeWOsUlYMHKBe6V+fEEnRZ8p6yV2XIBzQw55l0O6or/e2BX64EuD58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILw8MmHa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILw8MmHa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C2FC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758086393;
	bh=odKWfYdf3xrC/dUqvFGh5hwKlIsRG8b0zChRdXC8rU4=;
	h=To:Subject:From:Date:From;
	b=ILw8MmHaIh3bVjOo11YYV0/32FVxqXsRhIwUOnzvMxseTwDEeuJj2ax7MTa989U/A
	 /l1wcmXeWlj27eZHnaUGGmLT9bohgtuuEhH0Jz4kUwIK844dFKMSzfsr2Eaq0vJSs3
	 PleA99Jl/6RHSu9JcLD11DAUe+h6y2rrh0uaOqDQx7fkiqOjJtuROlW5KIdmN4vGyr
	 vtZsiwubyGWpBhOZoUhzWkYfOlrG0rvVhGmoni5S1Nsuo2FrlsvcpvJnzbMZv1QNLO
	 dJC4B4P/SXnHV+9uET38k3iXFF9e5aTbOOTR0w9vSYt9NE5earDsuctxcsAtYOrxK4
	 j5DCe6FdYPSvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91963CA0EE8
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175808639357.19797.6937282929216774253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd59a5e7ce9c6e04df2877facdaad598b1153ebbb2d8fa9a443edaac9747a315
Date: Wed, 17 Sep 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758086393
