Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD2E125A9
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771734894; cv=none; b=sNO9Nqsc6h26YHDfSPvs0PLVTu7uQUUlnSx7FEd483HDX9Y4Sxnbq/l0itRjfRs5+jlTRKqH6S6Z9BGoUY4dUX4xbmMisnkPpwIF0BxObnx3CY2PmwDrmdmWUKjKPxQnlSSg3iNo3fXtWdEoBmNDNirWrLGrDTqXTO/oCn8t3Lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771734894; c=relaxed/simple;
	bh=o0xtxamJ8o1B8vkNQI/9k1an+Z33ZT/3fUU2k++ZkXI=;
	h=To:Subject:From:Message-Id:Date; b=kuxntf6UqQpiw6Bsgk2sqQO1+hu4X05rY3owBhKTepC+lgi2osc5AbfgrYXSLp4TZb//AIkPWywEnz0GWKErdQ4J243YppBahJKXjsN569eul2kzoZJxZCMoHdMj1+/2vRRC/sH942TVGA+jWmRPd3fiVdtwYPDGg7ryvSeNHJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eqpWNxre; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eqpWNxre"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B468EC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771734893;
	bh=o0xtxamJ8o1B8vkNQI/9k1an+Z33ZT/3fUU2k++ZkXI=;
	h=To:Subject:From:Date:From;
	b=eqpWNxreu3aMQU45H8EbXDWVdRiQWEN9OJCNC2+9swJj99AXoywZN2Yqk2FuhDojX
	 imnOh5UMULVNH0KpseBk2X7v2O88TiSQ8vgxhZgf7Kp4FKhiNvT1ouAv17CK9KgpIY
	 kRXOEplWI7Ee205rqr9oqoljHxbF02UD4photW6MSHbxHsRNshvXqKwOuHwRzkBSIW
	 8HzUdeuxZEbdKKbExiwrIQYkg5fzW8YBvd5rtc+zKu0/qNNU1lvIuaICgZ6V92ScRe
	 dhDvAJ8AsALJuXuUGeaEY9bcCHawJ6sz5y/C3NiHUt5XONIwZ+ax4OxVz/gCq6nL4q
	 TtLlaPolgB9Ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC9BC5DF73
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177173489361.8856.15079696127675079206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa4e9581d2a9073d23329de553e084da6c3f57a56f688528c55145a303be3f45
Date: Sun, 22 Feb 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771734893
