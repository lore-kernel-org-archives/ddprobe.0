Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51EF3254875
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744144194; cv=none; b=c/thRY/4mGIpQ95I1w02DhCxrWQUcXf/JuKA0DI9wzlfJ7q/16L0jvE1eNcT3VdT4r+Wsz5eqqJqYkfRzJ15ClK959K6/re5zfhSmcT5MwwCBsI8xQjeBIdcGoS9eTZoJuc+dQlrUWq5o4+AuyFekfgeXdO9BcpiNS7KoAHT4jE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744144194; c=relaxed/simple;
	bh=6Xk9QbI5gXBWzlNQeuzFaCrJoqRag48NlA/hZ2qUFuc=;
	h=To:Subject:From:Message-Id:Date; b=DyItSdP544d580Kx4SnJyF8yEiQFTOQYRD/3IXMcfWYscz6fT6FM+yKiqbpjl9nhc+5bVnKMesX13QiYfhmgCIsGtl8SBkXxr40MM6ef01bB8MGQvm8+I4a/AsriKUP0iQd1yMxUV0+Eh9z1+i5pRurY+9EjYEz/c/ySByuLVoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mmddo7mE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mmddo7mE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0458C4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744144193;
	bh=6Xk9QbI5gXBWzlNQeuzFaCrJoqRag48NlA/hZ2qUFuc=;
	h=To:Subject:From:Date:From;
	b=Mmddo7mEa7Rw8nUvvaDq8KvXs8vyb7V/8ocjqQv3PTV8dMvXhRvFT1Z6oU4QByBkL
	 QEb/ghZscNWL6D3OPeqnUCBu45frT1iAzyE+V4x6sG+ExwZXtPFSFCJ1zQIucpXvoL
	 ErC2jx1yLrKu5jVYtyECw96DoqLrmtSIXmRklmWFA1Yw+ou3aEcq6ztvFY4drA8ZLN
	 F/tQ1RrgaBcc/e7u/l6o4onaaa3G6B43ak3M2HOjIITMP82/F0fZfKM24cV16/eEK/
	 QsVINy91xZUk5/sChCzoQBOlG4YKphnFQIdSiSseNPJzWkSLmsm25SFbpQzygulVg/
	 TdY1voiPwBIIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D577C36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174414419363.8264.6363759706868314965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d2380fea34e527151454038b65594cb5e4bde3fe32b1935e7504ff948168673
Date: Tue, 08 Apr 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744144193
