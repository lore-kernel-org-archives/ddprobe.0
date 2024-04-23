Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A77021345
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 04:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713845424; cv=none; b=aaxZNItHoIjJQBO2c6lVtflyol4oDAEOkNvHfa0hyfc66FN+Zh/XYB0uSGkHMYG8O4zQ4/jRwz2L5gUYlGHI0x2w6MiGvrc7GlkibxLH0kEv/C5NURih/XkhQZZ/nG9t6cutEocywVWImrbTcZpNZqIReM4V9fPIqBt1xuYPNYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713845424; c=relaxed/simple;
	bh=dEPF+Smy8KuSRPA3VhRsUk1MM5gsk0sKX1IC751lpLg=;
	h=To:Subject:From:Message-Id:Date; b=LoJdQXENhpAvZEZtnp0tT1g1qjBAd7dFR+BazUGW8kIt8WeEAptlQmbWL919LGFJGv9MAs+P/1R5oqmlPFHZrYhYUX3f6VcV0yBSeXdi3NKj56HEb6HajuD9G9Rdd/sFCDituOGB3gXobSUaC6FhUeXpjG6qpsywMtvHGZjlN+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IbKDgywP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IbKDgywP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4FB8C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 04:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713845422;
	bh=dEPF+Smy8KuSRPA3VhRsUk1MM5gsk0sKX1IC751lpLg=;
	h=To:Subject:From:Date:From;
	b=IbKDgywPuPsCnM66ylyhJ7f/vJBk2X4jMDZ/XZu3h1+9CjJsvQO/gZFBRfQbB5oRj
	 ANZXfOVLEUAs4U9CXH6NLXg2XaUjLYYpeH48YPG8XkrvhdhX52MxMqL6ROE2fC6tq2
	 kj0Es+S0bgnIQhYETVnhjBZ2ss72QA8vvQRlJZMmiPAWmVHpAl5ggSnwyUvlv2B0AN
	 BNzFO9F7A4LXRTbrl9Zn5JZ+wtDkKIK7eqfl62Q64P5NWaq1jnAwqSjKhigT5NmTFX
	 hSWETmZIDKRuAkw1Uo/DN8t5MTB0iwRgN5sR/5erouy2m8b9iAHd0bm8dqrejPbx05
	 ZeUKpjwVEurig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD6DAC4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 04:10:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171384542283.17671.13222626308641488192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dce1d45fb6185bd7a43527d729f3ae039f3d88432c8b50e442a607077a02e27d
Date: Tue, 23 Apr 2024 04:10:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713845422
