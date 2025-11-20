Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB3C24169D
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 01:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763601114; cv=none; b=lnrolmRUKIUtV4DAvtG4z+VUazFY8+cLtfRlDviHDDWYlEv0cqLqHTmOgM/r6dowMlZh6H52UyYhHt/vRj2GBnQunkkLD9tB2wRiBJriX40yy6ximOVzc4IzpKJHYWhpswtmKbSgoOsL7WWil6rS9MN8gKIgX1Ww82PBtUH9mHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763601114; c=relaxed/simple;
	bh=Z2C9cEeKMu4j25ZxvecxQR0Y4utfDATGYUosl6+ZoVw=;
	h=To:Subject:From:Message-Id:Date; b=tQfyv6FbNRvBWUglxfMX3HNFJGgNgw0QvhZbkFXmvWKBnQkN5KDszLhufgSBmu0IaGmevoLzY0yPlvv+B2pe9qbhC6vpfPqebQfbgBKoSdbXZXCQ7oDb1b/vyxI66W8wCIH5TpLCR69gNWJ6VIbNpfgcIUiNl3Ka0bLIneFEUKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XtrZv2nG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XtrZv2nG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0367C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 01:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763601113;
	bh=Z2C9cEeKMu4j25ZxvecxQR0Y4utfDATGYUosl6+ZoVw=;
	h=To:Subject:From:Date:From;
	b=XtrZv2nGrQiUXT6npRQKjYnFYHWy2NpA8BTYJWpDrMOc2QWUv0uW4JGPXX62fQaXQ
	 /4/3AuepSUkGvKlPMn6zbJHLn0uBIc158KE+c2ByF2y7uV2pRQNcpaAm7vztiq7+km
	 RtuOeJx0tKnwyrwhh9ZYYq9EtCyem2z+xKQZJ2M0VFw2Vgwv7jDOwPHWccDIsC1EYY
	 kBC3414nyYboeKF/AXedzxtHGo8F3wPn58FtmcmvqlTdEAH4J9mnvD5pedJgOkTfc9
	 QEbzZvKqHECj29awh+/S+3UA60LrV5er+mhecaqshvZhZ05qQZDfVR/rJWXbwaahXa
	 gO9K0XH+tLHbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907F0CF64A1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 01:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176360111358.7942.5143380395551927498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4eb56e8ed09ea3394f924d83c0c0e0da29b54b49d88e7a58aa1f768463f1f57
Date: Thu, 20 Nov 2025 01:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763601113
