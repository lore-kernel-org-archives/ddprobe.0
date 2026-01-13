Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00D4C257851
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768309434; cv=none; b=YmVG2wzGqlX+roe/+PURGUSiPttfdvJf0Brw7KWIlLVsUUuOxjPAj+bX8uHQoC5lLYAFtTQDYPpZy/R/y+IEOw1FqelYRIVEHV2/QX0KcFCz4zP/v6U025u3ix9qyVURdZb3KfVVbkEM1C15J/9YvsM95Z+Hqa0m4T7xrw3Uj4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768309434; c=relaxed/simple;
	bh=X59BxftbIE3x/wetGMD6fMm5t0E/Aye30EMmfqc2YwI=;
	h=To:Subject:From:Message-Id:Date; b=UwwPyig/8Plr0ATJQHpMGzHpYXjTx19f6SUusWr43+GMCEwLi+l3fo4Fy2fCg/XpM6Bq0D4IKQ9hUkDlhwbL5FGHXwoOwOvsd8U7ZYVMjNbGuFlddEgIwSzKFUx7+VSj84K2V0vDLbw5KFX3VsuBbKst8TWcVdhXPDlrsaGAcJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DuE3SF6/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DuE3SF6/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A084AC116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768309433;
	bh=X59BxftbIE3x/wetGMD6fMm5t0E/Aye30EMmfqc2YwI=;
	h=To:Subject:From:Date:From;
	b=DuE3SF6/+wWLz+MH1u0oHSIf/Y4wD/M0eWveMTnM+Y92vbqhzySiG831UzsAH4TPT
	 EHC0j9YQTFyFbEocGpT0ePXifUqm3DA15cYVTkJVeoLziHyO2rUdtWkStpBAERCxiq
	 xrrfcKJXZ8gvCGakvyDJZMJw2cAF4Vp4uj4eWGNeXqhq+FVSpcPjWe44gImO9F0Qtv
	 sCW4pEYzHFF7YKI+zBuYt+vY8Nnzg1gHLmNKtoP9LPi/TaY4ubgfs71y8RDQUsszHO
	 aZgnul/P7BIz/0OFulJAl9rWRsMnQu7zTl3ZYztA89rb3X7JuvluAzuY85gkmleAkS
	 Yk1m+T/TCk6Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBE7D2D0E8
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176830943358.7893.10473880723732408232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfea977276448c7eddac2d0ae5ccb4bd9973fd0c8c91bad64526b0b2d838f702
Date: Tue, 13 Jan 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768309433
