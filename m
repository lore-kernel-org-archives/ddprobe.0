Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1643C23645D
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754206194; cv=none; b=l4WvPwVvsRWzm+Vchj5sXDGTk70cImne75oGfEnJIev9jZL8qEu14gsPfcKtqGts9Wda6mLvN7zuXbyHkBAQu0jkLjTLiCF9FVdJXtdOhw77lVQmSjz6Zfk05zFUC0alOQ6zjtPuYAfI5pPwqwSEU98Ua7y472szBraBgUyaUhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754206194; c=relaxed/simple;
	bh=Tn6TyGsq/cRbb45+2QdOJHEVSo7nGZXdlomhjQpCOCQ=;
	h=To:Subject:From:Message-Id:Date; b=A+xMMuA1yMHDy9HOtgMW23nNtWHoIb5axD4ms+kLGcuway+LbBfCkHTVqPJ+hrldAhI93lywz1eA1ei5Gg/Ht5idF9pvigb6t+kvWbEX76aRAJo9cgAacK+1UpcgqTOgHEZaswV3HSjZPQgi+vmANwclXm49qpdq5W457vtGIik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UdTeDhvk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UdTeDhvk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D63C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754206193;
	bh=Tn6TyGsq/cRbb45+2QdOJHEVSo7nGZXdlomhjQpCOCQ=;
	h=To:Subject:From:Date:From;
	b=UdTeDhvkPoofAcGAh8vtUBcjnGM+uzjqiEuafmzMbht1+Ih2TQw7dnQnd+3mOcDT/
	 VuQ6M90yrJavDCjIUZs415aOLcKiTogHuUHYCB4Yu2KWEVbsBt50FXNDVYyiCTmJP/
	 EZROofBbE+zAWzkvRYeHQfdJD7Azwimn9e5TzZTrea/DkFeksX13SP2lJXJ82Bqv6v
	 Izz4ZSACxx/D3fYZqVpD5sS0Hvv5+hNX2JNwtgu0K386I3Zq+qqlsQl00uxCD15XuT
	 T6FinUb3Y0RVe9zihBFqWj3RW4gcWoq/nj6l8tL+U//odzeB2JUGux4mwFlmK9diPh
	 zUrjQXZbdGTsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92998C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175420619358.22702.17039038260258990945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bec94af79cc7df238eb1d6a98ee0bb3b67b236d88645d0239aa8e7bf04163c85
Date: Sun, 03 Aug 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754206193
