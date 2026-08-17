Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF353F3265
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786975834; cv=none; b=pGP1jgRvZgkBgduXSiagJHGgV/xPK+cCFA5OOmIKM8n3n70xbfpcOTMmnhfwE5KcsWa/U+4xYCi8QxZ/0NPIhNpuUVSFLozZJeoKMTlDXv/PgKMRa7/yYQ9U9iwqQE5zOyXSBXSr3PwIS2Dok9MqI1oUbpqjaxbtSIFOmIYLayw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786975834; c=relaxed/simple;
	bh=P++BM5ek/SJB4OPPcZAkZ2Pxd1L+4QhM0EN9DVJxTRk=;
	h=To:Subject:From:Message-Id:Date; b=efMaQ7PYozZysTqKF5EFZD0ckgDWOnWmf13zCDzffd3658Ml8nqVaCMI7IR1QHCt3xUcqO4kkyqNGdOxISkp7U78ZUw6BKrUG7TD4vRdEk1vVQYK+7Orj+E659WgV6oYpiiwvUEmUVwl35OaO/TB73kDwQSbYYVIkPw+v0L4eH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E7dN3cnM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E7dN3cnM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD9A4C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786975833;
	bh=P++BM5ek/SJB4OPPcZAkZ2Pxd1L+4QhM0EN9DVJxTRk=;
	h=To:Subject:From:Date:From;
	b=E7dN3cnMGVjc3osqI1G1zp4icr2e/zVAHIpZtj9ywbHNRkpyGxqEa0J29yZA0F6bW
	 WCQQXudh+Ibh6WHTdiDnbazjAKAdIfXdnOCU3tJoZzD5jBTkYbFMd9Vv7sTfjK+kXb
	 jEQbogDmKd+0wW9wwqQb6nIRTj9/+mGbp7fnDtsaoolc7qlPxLDJ1MkyTqi2NRO9RD
	 mQHASmSYu9EMJQwf2ovhRMuvbvc8k17xNm87L+0NgdzMhk8TqouKI7xPWx7CM4Eb1/
	 yF7uSyVyv4eeqdJNbbEQD+4LvFQvZI99l4dnoG0rGiasDIQV/l09F2gaifnDx0VzL8
	 TcLMShgTQ++vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA27FC5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178697583368.3897.12121082078176036980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f18cce5bc57b4f1cbd856c3640e454b67f16c48bdbeba3714743d1950b01e05c
Date: Mon, 17 Aug 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786975833
