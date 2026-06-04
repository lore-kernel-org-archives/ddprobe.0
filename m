Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454FD212B2F
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 00:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780533874; cv=none; b=UQ7qFTXAMa6Mit0YhxCCAkIrXERGnh41WTqgHgLII6CoR1ZRs9z9OawF3oRWCgLyItq8oysYkYs4EQfE0HxmGWUsfVlweIxG92q76foXdbetP6Pw/2m6rGpZGe19QHPWtEgLQDe+cfoRddJ2gqR2zGqv/g1KRc3YBnHXTxsM1uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780533874; c=relaxed/simple;
	bh=2xuqBr8pGzpx3D3iCip5AeWNvhuJ7kneqEMW0VLOjWc=;
	h=To:Subject:From:Message-Id:Date; b=YUpNgwXqJ1siVz0cplppGfWZoPHu44RqJZwYZwPgP/O+T8oC+7rb/4nzCK50vTJRVuWG2Ltx5Wnx6fO2RV3icZd7C0z6KfoYYK10B0jkcK9O12PLfHnqjlhns+n4gV6c9NdnT8IQ/7EX85UtEZI3WZSc0JZI/8oyepD6zrrEhlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZUKdG79; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZUKdG79"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9F2C2BCC4
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 00:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780533873;
	bh=2xuqBr8pGzpx3D3iCip5AeWNvhuJ7kneqEMW0VLOjWc=;
	h=To:Subject:From:Date:From;
	b=oZUKdG79lnlwCBPaA1j2YP+z+vOpUfME5AMoyf7OJs2ARY0R5dT9OXOGWUCiiMASL
	 O4xhq6p3v66hNaPSE+gTUyKSEQMx9ywwwsmqnww39z+7oEoj1QIzxoBhVkRCsec2kE
	 EASA5wUHVrTrU6UsC78/U4dVeZDGjal3HL3oVu5YWf8fLKpRwTlNyQgeTjY4fiGnZv
	 F8ic0uQpy8UzGjkzcub4TP1BMlEuxsVFjo8ts4xfqb8UiJZrb+gvgxA0FaFFAyY7+/
	 OO4QpKH4phwGCvANGNbAnWr0pWCvGTDxnqfJ42qhbS3StIV4u6xXgDwnST4kgu/EYx
	 DMHzv3JGRSsyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B26F1CD6E60
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 00:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178053387371.25863.1673044037186924751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75e7f51d4e0d82837448f919e63744adb550fa32c6ca3ff69fc5d664f006648a
Date: Thu, 04 Jun 2026 00:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780533873
