Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12038241139
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755098995; cv=none; b=rwoHdsxPKlV5BwjMVkddRdrOHQ48zkQU71ZwkOfCCsedj8/UDehQ4/tAgIs/Xy5ybKAuU3bK41saKzf0i3W+zZdHiOXEOwUoeHN0n84P2WpLe6Djd8ugI6JLkUupQXSyyvYeKT99+ifAz0ZgcTEv/sww9fI6Rzg11/thAy9lIR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755098995; c=relaxed/simple;
	bh=hOYo1CS7Qdtb4Q4Pc2l6NDCpdy0/OgL0ECyxGRag3s8=;
	h=To:Subject:From:Message-Id:Date; b=BUZvDVbY7gOVyEyKzrC0/OegYJjbxwMOkglHlNIWqxTr0xcm09HLigrIL+jtLnYzZ5VQow+2QbtW4EtFhkFUz05YTle4Gkdpe/86ij+/MxtAq7ZrMs9Z94HYlNuiXDoqEI7ZFNbdzV2mKfGFxfXsDynZvmn00HBHGWFOJLwDiag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UNg/oM4U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UNg/oM4U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8D0C4CEEF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755098993;
	bh=hOYo1CS7Qdtb4Q4Pc2l6NDCpdy0/OgL0ECyxGRag3s8=;
	h=To:Subject:From:Date:From;
	b=UNg/oM4UGCkFdQjpap0pu7XKXiVsH+/zZE9lsbCVVZYHz+WVokLhWAIF4IgNNtfzk
	 olEzIkJZferkiFaH8SZN4jVxN7wH/VFZu3DL6pX2PBGyarN8lRkMp+F3DH83G7XHRO
	 cyQmBQVT5VI908lpZlOJYjUh8mbLA4nsomDk3JTBcdrBkTZp9cKkEJD1UFOsf0b9q9
	 jdRoeDPvw+UWzio2rFmfQOz2Jg2Y6rPoXVoO5hZhvlB45ySQjkojBk+dUHbYGrlF2f
	 RGsMxXm7WUTI0aCqjkPGEw7mntc075JBH5jHUs4poi4BK7Let3MxOoGmsfdH8mLUg9
	 M/K9ZZte9cXkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD52C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175509899358.12694.6829822628201161776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbe38f12c5ac84be54517eb918d16531ddcde8cb2a2a6068db2dccda8e483715
Date: Wed, 13 Aug 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755098993
