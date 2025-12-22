Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205124C92
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766402034; cv=none; b=d9JU8YA10vTv/kdkDa8bDvzNm4EgFmDoNeW7+JzkP/iOxcxIzWBe2E93q2qmh/Ce7AWLgKgzVgST5A9qOxDTZ39PeTlEpIhgKoUxfaoI3vnuHi+iYnGHjOSrcHTU3kDPkdnYoSVLgYORHxgVoc1rvJmpxfBnTT1khFVq+E0yNfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766402034; c=relaxed/simple;
	bh=tcOozzhGEeXS+pknnyyREXV+oRVDkRhshm4bSwgXnG0=;
	h=To:Subject:From:Message-Id:Date; b=PPjtXii7QyNKqFssWxWtiOIdAzaBddJ2XGltj2If2A2quXvqvfMJuFLrORNVqVd0K+i5BPf+FZCtQnF/wmVXwKveXDyTY6Z8M4KIGTIMZaEpvWwaJ4Cgapu35VwgUjP2lPFPh1lNMLfcnHA0fWEsx7tE0b0FpiannpH4qrrXM/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sl6O1UrW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sl6O1UrW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA890C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766402033;
	bh=tcOozzhGEeXS+pknnyyREXV+oRVDkRhshm4bSwgXnG0=;
	h=To:Subject:From:Date:From;
	b=Sl6O1UrWK7qwCa7E1msHkdGpz4MKvYCxkKwabVjrNpUGvAoivKJ8BLJpehMIOJ0X1
	 BPNc+iURe0cEzPmh0mKDYry6rMBoNMNJwmsRjeXs0VONnr4y8p9H5yIr/7bxB4raCY
	 vKgME5pzmg/gynKUq5i3R/dMJxqFu6ev9U33Rs26IlB1xT11MIJtGnsdjFMXfu832M
	 bgxlZIQ1gJCGGt3Lv2QeOT93/qGX9aUsB0K303kmyOVk8O4Gk3f5S8T8zANuC+Hrvw
	 LK2NXmbC4AJOrl6pVjRCF0lx365xI7q2KP6wK1OaCv4JoHNJcA2NwVIys45cB1EDok
	 U4N7Bvvql66ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACD6E67482
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176640203358.8615.2345941566635625343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 745549caa6ed41025c48f84c5e222133dd58ab59500d96ff1fe9d1f74bdba1c3
Date: Mon, 22 Dec 2025 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766402033
