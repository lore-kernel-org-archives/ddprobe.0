Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7CF728981F
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753556993; cv=none; b=XKSSnRGoPZPw8MwaEZMO0YIptL7aP7zwFgKpFRheZgjuXpCEoNtYTIOU9Vas/0vcebMIx7GW9sgo5u4/4OsYmRMQ89yl7aWGYiLUqH+SBM5o2lDqij+CpOE5ZKuGMshjIJTv54fxcqzZDEPRmybWV7HbrKKb6ZN9Z2HDyK/5HPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753556993; c=relaxed/simple;
	bh=UKdABWZUheVHO9Bvz91VMjTu1RpxbWK9uuUkW1BotRw=;
	h=To:Subject:From:Message-Id:Date; b=jzxCpwRNWqUL2BnzA7gBWWKz+o7VMtfJfD9LdSUkLC8jOucXyzQW4C9QN/mloSTUUOFuMg6DopfESs8l/E+Eeyt79PCSNwXKnyn80w/b0gWhtAjJ0/XwiCXv3PFZfDQZTFbA98piTNTYHFwj/YFX8kDzqAt8e0Cf3ijcTwqoI20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KlRfx6YL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KlRfx6YL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D84C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753556993;
	bh=UKdABWZUheVHO9Bvz91VMjTu1RpxbWK9uuUkW1BotRw=;
	h=To:Subject:From:Date:From;
	b=KlRfx6YLjWCtSz4vJ9qUjVfFQgXKSMBLMKmwPheNzbsgK5hdoUAyIXTAGtxiOFHl4
	 e1GH7s/7SBVMA2ljeSKJH7ETZs2i3DKi7DG36/mw5bwNSIfjlWk/UYEGNUikxM2dCN
	 qEgyw+LmAaJf8m4iRDHVj+uff3fMWn2xdmRac8pYKGr2EoqE8o8AHUR1OHYFrfZF3U
	 mDuSRa6wwSEbZYnWwRgDR6LhJUq80jZfTuejUkpiLX9us6Zw1Vn7VD713GjDzlvSnE
	 27rlgibwWuuExiolnOjAYc807y0AdzSVazu40ZP2gn2GInL2a+wrGMnhcMVpZnUnhI
	 kbWQtJBY0gkUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AD7C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175355699358.19768.498254426494942273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 089f7a7a6c5527f75fee989b2622a55c664610eef466982b1985c9d97e467320
Date: Sat, 26 Jul 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753556993
