Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1317B346E66
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 18:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776881854; cv=none; b=i209e40ghLkWKr1wFcKiidU4xpmqbkvsFGw1brNEWBBO+gutTBVVZYZN0ld6KZHkgSXDZhSTs1UY75+5r2BGpPhuP/XmUjyxNfRX/KoQhiQxzyuDSSfkZgapQtIFcuMkVu4CkYNDhM3mSJUhv0u/rZdCkNLjRT4hOJgdbf+D4P0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776881854; c=relaxed/simple;
	bh=IPx8wPZhYA8mf4jhThEUfUGhR1MYhw+WPDwQAZGQ+7Y=;
	h=To:Subject:From:Message-Id:Date; b=R8v/r8YplvQlTypWDFhJKf3HfeCwqWPKoN3tCNzbXQoYyGFwBLgiVb86YK13rsQKPe5z8k1pP9jISAhmvVk1Y9F6puTMPl64s0/tnzCWyjh3eqAUpoYkqdoLjk7QUcPiIG7PYviLx4SqfxuSSP0KVP16ddvwwrCyyO2WUpRa7Ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M3EVEmrH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M3EVEmrH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9CA9C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 18:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776881853;
	bh=IPx8wPZhYA8mf4jhThEUfUGhR1MYhw+WPDwQAZGQ+7Y=;
	h=To:Subject:From:Date:From;
	b=M3EVEmrHCXh0F2wvwYX0RKhy2HCNwCfu72oEMul6pkgyqZabmiTWNGAR5DA2ZiKpK
	 11Qi98seWI0TzaK2+pVEUT0qWElBGHl6DWEyB6KBzNmyovXHtNYAgzbWh3NrVOPsHh
	 dH23RHvXB+lt0CtKeZAvoEPl7Whqrdqc1/+lHMjHaPhJ6juG0EyT+ZWdbRdAtOGtbz
	 OTDrTIJvaV+AUtJDViwKLVQsUZzA0e/3Nu8Mepqf+IPlUTCm5we2KBLa/FwfkB6lsC
	 biIZtOKUj3DRB5wLsAIM4+YeXe86B6/MG4ouoGefOGyGNOS6Wmf2YS2hDx+tsaYpJy
	 wsvlvVdbKWJzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD147FA1FE1
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 18:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177688185369.12096.7913734771093606602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a76a6ed9f4112b7a5a31d78a9bface5622139a2f471c85a30b9a9d3972ad91d3
Date: Wed, 22 Apr 2026 18:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776881853
