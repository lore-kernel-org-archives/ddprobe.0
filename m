Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC5B32E64A
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734789354; cv=none; b=gCrkGDcda5aRhlnd6IfMc8dzW97AAZhm9M6kuISSv9LjVJ0O3P5TqozdsB/eIYopA6+CeHZEUSuS6/7hBTmonWwrM4n7cEiWzDVfIipbjTjDtKUiD/BXcEZyUviTNWJKlQl75I7kg9l3qHuOW5qN6cezyo3Tuq7z8o/nTWOJ9yQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734789354; c=relaxed/simple;
	bh=7EoNSrPYtl8DVX9+bxRsQGASenjyYlDSWGB7ppI4+mI=;
	h=To:Subject:From:Message-Id:Date; b=aQ5IDIi23KMcJVWbGItLj4GafnwQQfn+pfBoZqtBUHPGEEPgmBDV4KIQgPhecUrWEOytGaSnPlSRYTAEXTHXuAc9TX1OqWCyLzft2bcR5vbDBP0KPXcjhZ5vPV4i/wp95wsd5WicVFzLK4sI50FUwvhEjBRwmCYBHEchy0oXYNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=npH4m0Ik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="npH4m0Ik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B5AC4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734789353;
	bh=7EoNSrPYtl8DVX9+bxRsQGASenjyYlDSWGB7ppI4+mI=;
	h=To:Subject:From:Date:From;
	b=npH4m0IkUwFEJ9NFYmHflA5EuxxjjpvDE9sv/fEAyRkkf/RepPvG8ygL7QFbulKm9
	 +WBzL77oQxNGO8uYdTRv/fMyE7IhsqjmAMrFMEHhorkNJ3aTtkvGPO3/qFk49utoR1
	 yFv1YBD7OJx4H4fnsuRFUOYl7F0KJwV7R7JzdEPNprMdMz1toOzvcwk48G6Zi0WMC9
	 180LG9yuayZuBtB/ViH0rsPYd+hVGUjJH9Qu1Nq+I8mqpQlYyhrL4BkBO/l5EJs3m9
	 wIDWXR74m2qpxE0vul/iQ9YuQVuiU+s3btq8fuxupDf/QBNQYBxFDFrdTm2NtDcTl/
	 YIzJQ7wbCgyeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F509E77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173478935361.25449.14986316544645036401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe3345dfdbf3b6a1703a4d73111d6dfafc98a1a89434bb8eedf1fbc672e5bd01
Date: Sat, 21 Dec 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734789353
