Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 646801F16B
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789794034; cv=none; b=mZzHLxJwW2WY0BsSyy9NQOtlbXXlVuhrM70n88fIjiBkHGoofLALHXXOjSJ1XUYWLx3jIJKIfxLOpCNT0Uf0J2P6dpa6FOZJVW/wOIkU/6PGoFiLLTklCCmQ+XPiPxz0ehDeGamP9a/Rc61afKx7VRR/14PM/h2u7nhaYQSWsJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789794034; c=relaxed/simple;
	bh=z7n23sB8Ju7C721Yu2fojKFl+rmpogV1bK4mrFKAxVU=;
	h=To:Subject:From:Message-Id:Date; b=lVSwMWpBIiTJoQa8ZvyUDYGYjv/8uWI1TAiJ2BsjY9uYu+HzZt6R6oVJ6TrEn8dcKib0IOd2eJSxXBGF5UtFr8a/wLHjCSru7Bvh0FRCX5ZXCHoecJ8zBWBnyF16Wx23SVr9vKVtNRQPBMjJapMCBHaAh4peNYDOS/hIiP8H2/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LmJAOaco; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LmJAOaco"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33ADC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789794033;
	bh=z7n23sB8Ju7C721Yu2fojKFl+rmpogV1bK4mrFKAxVU=;
	h=To:Subject:From:Date:From;
	b=LmJAOacoWpHpl0zB9BAQLvRsXXk3rSXs/MNrhEkkEnYiFYWqf412tM0vn1zb4h7Eg
	 DMhSDIfynHzboFui7K/pIu6AULvbUsMfdL5suwPJQFqKoZC1LRyPoNDkqjnUWl8UKO
	 A4b43oZsuhtmDUYRHkTm9Se86JvgMKMdOUDTQjzz3ExKeueCfeZcRD4gruDZZmRRQ5
	 Nqg9eVUBHy60SbcRIi1ldJSi/+anK8ubFv7T30Hfs+xGwce8H1jEnxFgGEfZzdrsGt
	 oqvwQVtqcJqox8/u5/EWJZvTS36cujP9rYQkbGYLe1ou5lAUHMzQUJtYXrXWL7aqTH
	 2sQON6VsxvbJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07EDC982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178979403368.25381.10527634365665260436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d2f7f3a74dbf5943428dc8a2e4032b57fb3f51b3068dc7c7850a64ead3ae514
Date: Sat, 19 Sep 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789794033
