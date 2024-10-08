Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285C41C75F8
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728384954; cv=none; b=lCdJcEf14q0/hNi3hUaPCjy0qXr05+Ocx7F0plFLdgli2D7IcGqK5QKtTJvDfZSlHFAV3toJ+16B0GIbmQw3sTdGMSPOdDC2ALV+OEiAjulmKqD+7wZmCK/TAJqJ7lCYZ8oLmkoWzs3JVr2RUCEo494d9ZUKNQwcRw2zVbqBeXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728384954; c=relaxed/simple;
	bh=+IfoV/RtmXFOdmhn7uoESXVOAHsI2XSHrBeKZOvA3Ec=;
	h=To:Subject:From:Message-Id:Date; b=PNLjaLi1rF6V/se3YY9IWYyfgjFFI8Skt7/WUJygM7a9iv5pQLp5IfvkRbI5XpQkswgdcTy50jmvtM2ChDfkxNM9pN+/GZu/NEGvv6S709xpNPTJnGNbu3cY3KjT+jP0f6BaytSEeJJ6EsMk6gjPQw6Y3BdzwkUrKqP/xLmGd44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YczAKKV4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YczAKKV4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6993C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728384953;
	bh=+IfoV/RtmXFOdmhn7uoESXVOAHsI2XSHrBeKZOvA3Ec=;
	h=To:Subject:From:Date:From;
	b=YczAKKV4ukOraoGwmvUyjLtkHzGjXWU82dB/K5OPp538rgWmXwK5v6wUr9dzY9G3e
	 ElX5t71DZFADNH4VyFjSU6IKYgwIK/Be+w0mWcCpse3P8fowOP0CGn6B5HpB7Czfa4
	 p/5hXPQfyRaulh44met9RdxKI0GtQn6DZHM9RTf0ssnTvbc+/g9D1e9QIINhMcET51
	 SK4GJ1zWPASxaVe58c66SrBrIBbsnuvrnmjnxuwOGqwkITr0zpNhFG4+QMsaWcWUda
	 oeE3N5xTuk/e6w6H3NJ5pKErDQLXCHrNr1TXBOLKw0XFYiRhxHLAoUtfP2FVApn4r3
	 1SylYD1S4dHmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941E1CEF150
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172838495359.26382.1817547007960950875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4de2e7e1a58f4759961daddcaf6ad781f2307c05d9d98ed868e7590948bf3ec1
Date: Tue, 08 Oct 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728384953
